.class public Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity$a;
    }
.end annotation


# instance fields
.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Landroid/text/BidiFormatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->h:Z

    return-void
.end method


# virtual methods
.method public final B0(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sget v2, Lcom/transsion/xuanniao/account/R$id;->emptyL:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->bindBtn:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity$a;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity$a;-><init>(Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_bind_phone:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/transsion/xuanniao/account/R$color;->os_button_on_color_selector:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget v2, Lcom/transsion/xuanniao/account/R$drawable;->os_btn_big:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_change:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/transsion/xuanniao/account/R$color;->os_platform_basic_color_selector:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget v2, Lcom/transsion/xuanniao/account/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    sget v0, Lcom/transsion/xuanniao/account/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->i:Landroid/text/BidiFormatter;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_bound:I

    const-string v3, " "

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->phone:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->i:Landroid/text/BidiFormatter;

    invoke-static {p1}, Lfq7;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2, p1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->tips:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->unboundTips:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_unbind_tips:I

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_phone_middle:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_bind_tips:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->e:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->h:Z

    const-string p1, "phone"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    sget-object p1, Lao7$a;->a:Lao7;

    invoke-virtual {p1, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    iput-object p3, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->B0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_manage_phone:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_phone_num:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v0, "phone"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->B0(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->h:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_1
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

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->z0()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;->g:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
