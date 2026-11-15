.class public Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity$b;->b:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity$b;->b:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->captchaCodeInput:I

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->C0(Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity$b;->b:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->emailInput:I

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->C0(Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity$b;->b:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->smsCodeInput:I

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->C0(Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity$b;->b:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->h:Lfo7;

    iget-object p1, p1, Lfo7;->e:Lml7;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lml7;->c:Z

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v0

    :goto_2
    iget-object v2, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity$b;->b:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    iget-object v2, v2, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_3

    :cond_3
    const/16 p1, 0x8

    :goto_3
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity$b;->b:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-static {p1}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->D0(Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity$b;->b:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->next:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p0, v3, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
