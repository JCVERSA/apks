.class public final Lcom/transsnet/login/email/LoginEmailPwdActivity$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/email/LoginEmailPwdActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/login/email/LoginEmailPwdActivity;

.field final synthetic b:Lmx/c;


# direct methods
.method public constructor <init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lmx/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity$a;->a:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity$a;->b:Lmx/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity$a;->a:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->r0(Lcom/transsnet/login/email/LoginEmailPwdActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity$a;->a:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->s0(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity$a;->b:Lmx/c;

    .line 15
    .line 16
    iget-object v0, v0, Lmx/c;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const/16 p1, 0x8

    .line 30
    .line 31
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
