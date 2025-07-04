.class Lcom/beingyi/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# instance fields
.field final synthetic this$0:Lcom/beingyi/LoginActivity;

# direct methods
.method constructor <init>(Lcom/beingyi/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/beingyi/LoginActivity$1;->this$0:Lcom/beingyi/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/beingyi/LoginActivity$1;->this$0:Lcom/beingyi/LoginActivity;

    iget-object v1, v0, Lcom/beingyi/LoginActivity;->usernameField:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v1
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;
    move-result-object v1

    iget-object v2, v0, Lcom/beingyi/LoginActivity;->passwordField:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v2
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
    move-result-object v2

    new-instance v3, Lcom/beingyi/LoginCheck;
    const-string v4, "https://raw.githubusercontent.com/Arunmnk/panel-auth/refs/heads/main/login.json"
    invoke-direct {v3, v0, v4, v1, v2}, Lcom/beingyi/LoginCheck;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
