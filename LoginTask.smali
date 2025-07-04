.class public Lcom/beingyi/LoginTask;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;

.field final url:Ljava/lang/String;
.field final userField:Landroid/widget/EditText;
.field final passField:Landroid/widget/EditText;
.field final context:Landroid/content/Context;

.method public constructor <init>(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;)V
    .registers 5
    iput-object p1, p0, Lcom/beingyi/LoginTask;->url:Ljava/lang/String;
    iput-object p2, p0, Lcom/beingyi/LoginTask;->userField:Landroid/widget/EditText;
    iput-object p3, p0, Lcom/beingyi/LoginTask;->passField:Landroid/widget/EditText;
    iput-object p4, p0, Lcom/beingyi/LoginTask;->context:Landroid/content/Context;
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/beingyi/LoginTask;->userField:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1

    iget-object v0, p0, Lcom/beingyi/LoginTask;->passField:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v2

    iget-object v3, p0, Lcom/beingyi/LoginTask;->url:Ljava/lang/String;
    invoke-static {v3}, Lcom/beingyi/NetHelper;->getJson(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4

    # 💥 Null check for safety
    if-eqz v4, :wrong

    # ✅ Proper JSONObject creation
    new-instance v5, Lorg/json/JSONObject;
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "username"
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6

    const-string v7, "password"
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7

    # ✅ Username check
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0

    if-eqz v0, :wrong

    # ✅ Password check
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0

    if-eqz v0, :wrong

    # ✅ Login success
    iget-object v0, p0, Lcom/beingyi/LoginTask;->context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;
    const-class v2, Lcom/nkvt/MainActivity;
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    return-void

    # ❌ Login failed
    :wrong
    iget-object v0, p0, Lcom/beingyi/LoginTask;->context:Landroid/content/Context;
    const-string v1, "Wrong Username or Password"
    const/4 v2, 0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    check-cast v0, Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    return-void
.end method
