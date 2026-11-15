.class public Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity$a;
    }
.end annotation


# instance fields
.field public e:I

.field public f:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

.field public g:Z

.field public h:Landroid/text/BidiFormatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->g:Z

    return-void
.end method


# virtual methods
.method public final B0(Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;)V
    .locals 8

    sget v0, Lcom/transsion/xuanniao/account/R$id;->name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->phone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->h:Landroid/text/BidiFormatter;

    sget v3, Lcom/transsion/xuanniao/account/R$id;->phoneL:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/transsion/xuanniao/account/R$id;->phone:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->h:Landroid/text/BidiFormatter;

    iget-object v5, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->phone:Ljava/lang/String;

    invoke-static {v5}, Lfq7;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v4, v5, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget v3, Lcom/transsion/xuanniao/account/R$id;->phoneL:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v3, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->email:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Lcom/transsion/xuanniao/account/R$id;->emailL:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/transsion/xuanniao/account/R$id;->email:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    sget v3, Lcom/transsion/xuanniao/account/R$id;->emailL:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v3, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->userName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    move v7, v2

    move v2, v1

    move v1, v7

    :goto_2
    sget v0, Lcom/transsion/xuanniao/account/R$id;->nameL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->attentionL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->addLabel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->emptyL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->bindBtn:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity$a;-><init>(Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_3

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_add_to_account:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    sget p1, Lcom/transsion/xuanniao/account/R$color;->os_button_on_color_selector:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget p1, Lcom/transsion/xuanniao/account/R$drawable;->os_btn_big:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_3
    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_change:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    sget p1, Lcom/transsion/xuanniao/account/R$color;->os_platform_basic_color_selector:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget p1, Lcom/transsion/xuanniao/account/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    sget p1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->e:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "emergency"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->g:Z

    check-cast p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->B0(Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    const-string v2, "emergency"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_manage_emergency_contact:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "emergency"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_emergency_contact:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->B0(Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;)V

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
    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    const-string v2, "emergency"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "emergency"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->B0(Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;)V

    :cond_0
    const-string v0, "isModify"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->g:Z

    return-void
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
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    if-eqz v0, :cond_0

    const-string v1, "emergency"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->g:Z

    const-string v0, "isModify"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
