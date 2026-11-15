.class public Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lxk7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;,
        Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$b;
    }
.end annotation


# static fields
.field public static final synthetic n:I


# instance fields
.field public e:Lnm7;

.field public f:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

.field public g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

.field public h:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

.field public i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

.field public j:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

.field public k:Landroid/widget/Button;

.field public l:Ljava/lang/String;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->m:Z

    return p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final C0(Z)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x10

    if-le v0, v5, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->setError(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->D0()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->m:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_not_same:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->savePwdBtn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    iget p1, p1, Lnm7;->g:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    if-ne v0, v3, :cond_4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_6
    if-ne v0, v3, :cond_4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    iget-object p1, p1, Lnm7;->h:Lml7;

    if-eqz p1, :cond_7

    iget-boolean p1, p1, Lml7;->c:Z

    goto :goto_3

    :cond_7
    move p1, v4

    :goto_3
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_8
    move v4, v2

    :goto_4
    sget p1, Lcom/transsion/xuanniao/account/R$id;->savePwdBtn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final D0()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public Y()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_logged_in"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    invoke-virtual {v0, p0, v1}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public g0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->setError(I)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->savePwdBtn:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->l:Ljava/lang/String;

    return-void
.end method

.method public j()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    invoke-virtual {p0}, Lnm7;->d()V

    return-void
.end method

.method public j0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_set_pwd:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    new-instance p1, Lnm7;

    invoke-direct {p1}, Lnm7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    const-string v0, "setPwdType"

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput v1, p1, Lnm7;->g:I

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    iget v0, p1, Lnm7;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->x0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnm7;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->x0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnm7;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    const-string v0, "ticket"

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->x0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnm7;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    const-string v0, "verification_code"

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->x0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnm7;->f:Ljava/lang/String;

    :cond_0
    invoke-static {p0, v1}, Lvl7;->c(Landroid/app/Activity;Z)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    iget v0, v0, Lnm7;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_change:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_set_pwd:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->formatView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/FormatView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_format:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_don:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_format_list_1:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_format_list_2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_format_list_3:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v3, v5, v4}, [Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v3}, Lcom/transsion/xuanniao/account/comm/widget/FormatView;->setFormats(Ljava/util/ArrayList;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->errorView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->oldPwdInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->newPwdInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->confirmPwdInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->setPwdLogoVisible(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->setPwdLogoVisible(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->setPwdLogoVisible(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1, v1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->setNeedCheck(Z)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1, v1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->setNeedCheck(Z)V

    new-instance p1, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;

    invoke-direct {p1, p0}, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$a;-><init>(Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;)V

    sget v3, Lcom/transsion/xuanniao/account/R$id;->forgetPwd:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->k:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lcom/transsion/xuanniao/account/R$id;->savePwdBtn:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$b;

    invoke-direct {p1, p0, v1}, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$b;-><init>(Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;Z)V

    iget-object v3, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    iget v3, v3, Lnm7;->g:I

    const-wide/16 v4, 0x0

    const-string v6, "key_verify_pwd_limit"

    const-string v7, "AccountPrefs"

    const/4 v8, 0x0

    if-ne v3, v2, :cond_2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getEdit()Landroid/widget/EditText;

    move-result-object v0

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_new_pwd:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    new-instance v3, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$b;

    invoke-direct {v3, p0, v8}, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity$b;-><init>(Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;Z)V

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lnm7;->b(J)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v3}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getEdit()Landroid/widget/EditText;

    move-result-object v3

    sget v9, Lcom/transsion/xuanniao/account/R$string;->xn_set_pwd:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setHint(I)V

    iget-object v3, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->k:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    new-instance v0, Lyk7;

    invoke-direct {v0, p0}, Lyk7;-><init>(Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->setFocusChange(Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$b;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "is_oobe"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lc39;->a(F)I

    move-result v0

    invoke-virtual {p1, v8, v0, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    iget p1, p1, Lnm7;->g:I

    if-ne p1, v1, :cond_4

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    invoke-virtual {p0}, Lxj;->x1()V

    goto :goto_3

    :cond_4
    if-ne p1, v2, :cond_5

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->F()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnm7;->b(J)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->e:Lnm7;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public p(ZJ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/xuanniao/account/R$id;->forgetPwd:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->savePwdBtn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_2

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_limit:I

    invoke-static {p2, p3}, Lfq7;->b(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/xuanniao/account/R$id;->forgetPwd:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->savePwdBtn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_1

    sget p2, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    const-string p3, "-1"

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->C0(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public w0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
