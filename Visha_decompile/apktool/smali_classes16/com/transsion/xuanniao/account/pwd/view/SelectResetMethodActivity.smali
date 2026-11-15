.class public Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x7d1

    iput v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->e:I

    const/16 v0, 0x7d2

    iput v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->f:I

    const/16 v0, 0x7d3

    iput v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->g:I

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->C0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic C0(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final D0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_action_bar:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_forget_pwd_title:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->questionImage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lza9;

    invoke-direct {v1, p0}, Lza9;-><init>(Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->f:I

    const/4 v1, -0x1

    const-string v2, "email"

    const-string v3, "phone"

    const/4 v4, 0x1

    if-eq p1, v0, :cond_4

    iget v0, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->e:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->g:I

    if-ne p1, p3, :cond_6

    if-ne p2, v1, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p3, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->h:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->h:Ljava/lang/String;

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->h:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    if-le v0, v4, :cond_1

    aget-object p3, p3, v4

    iput-object p3, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->h:Ljava/lang/String;

    :cond_1
    iget-object p3, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object p3, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->i:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    :goto_0
    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->h:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->i:Ljava/lang/String;

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "setPwdType"

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ticket"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "verification_code"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p2, p0, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->g:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_5
    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_select_reset_method:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->R()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;->D0()V

    new-instance p1, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;

    invoke-direct {p1, p0}, Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity$a;-><init>(Lcom/transsion/xuanniao/account/pwd/view/SelectResetMethodActivity;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->phoneButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->emailButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

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
