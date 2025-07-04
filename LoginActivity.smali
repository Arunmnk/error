.class public Lcom/beingyi/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"

# instance fields
.field usernameField:Landroid/widget/EditText;
.field passwordField:Landroid/widget/EditText;

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Login Page Loaded"
    const/4 v1, 1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/EditText;
    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
    const-string v2, "Username"
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    iput-object v1, p0, Lcom/beingyi/LoginActivity;->usernameField:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;
    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
    const/16 v2, 0x81
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V
    const-string v2, "Password"
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    iput-object v1, p0, Lcom/beingyi/LoginActivity;->passwordField:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/Button;
    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
    const-string v2, "Login"
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/beingyi/LoginActivity$1;
    invoke-direct {v2, p0}, Lcom/beingyi/LoginActivity$1;-><init>(Lcom/beingyi/LoginActivity;)V
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/beingyi/LoginActivity;->setContentView(Landroid/view/View;)V

    # ✅ ADD THIS: Delay decode call to ensure StringPool is initialized
    new-instance v3, Landroid/os/Handler;
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/beingyi/LoginActivity$2;
    invoke-direct {v4, p0}, Lcom/beingyi/LoginActivity$2;-><init>(Lcom/beingyi/LoginActivity;)V

    const-wide/16 v1, 500  # 0.5 second delay

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


