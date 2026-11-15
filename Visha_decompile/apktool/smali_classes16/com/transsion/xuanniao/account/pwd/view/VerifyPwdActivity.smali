.class public Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lbm7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$b;,
        Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public e:I

.field public f:Leo7;

.field public g:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

.field public h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->e:I

    return-void
.end method


# virtual methods
.method public B0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "accountId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final C0()V
    .locals 4

    sget v0, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    iget-object v1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    iget-object v0, v0, Leo7;->e:Lml7;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lml7;->c:Z

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->next:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v3}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    iget-object p0, p0, Leo7;->e:Lml7;

    if-eqz p0, :cond_4

    iget-boolean p0, p0, Lml7;->c:Z

    goto :goto_4

    :cond_4
    move p0, v2

    :goto_4
    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public D0()V
    .locals 5

    sget v0, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_verify_pwd:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->E0()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Leo7;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->B0()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Leo7;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_verify_pwd:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    new-instance v1, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$b;-><init>(Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;)V

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->note:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_verify_pwd_note:I

    iget-object v2, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    iget-object v2, v2, Leo7;->d:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->forgetPwd:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;-><init>(Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "havePhoneOrEmail"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$id;->verifyCode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;-><init>(Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lc39;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v2, Lcom/transsion/xuanniao/account/R$id;->errorView:I

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    sget v0, Lcom/transsion/xuanniao/account/R$id;->next:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity$a;-><init>(Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->errorView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AccountPrefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_verify_pwd_limit"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leo7;->b(J)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    return-void
.end method

.method public E0()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "operation"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public d0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget p3, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->e:I

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->onSuccess()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Leo7;

    invoke-direct {p1}, Leo7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lxj;->a0(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lvl7;->c(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->D0()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    iget-object v0, v0, Leo7;->e:Lml7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lml7;->a()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->f:Leo7;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

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
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->placeholder:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->z0()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public p(ZJ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_2

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_limit:I

    invoke-static {p2, p3}, Lfq7;->b(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_1

    sget p2, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    const-string p3, "-1"

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;->C0()V

    :cond_2
    :goto_0
    return-void
.end method
