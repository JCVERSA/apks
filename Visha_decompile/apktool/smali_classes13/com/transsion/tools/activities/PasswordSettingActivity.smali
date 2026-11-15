.class public Lcom/transsion/tools/activities/PasswordSettingActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# instance fields
.field public N:I

.field public O:I

.field public P:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/tools/activities/PasswordSettingActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/PasswordSettingActivity;->s0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic q0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/activities/PasswordSettingActivity;->t0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private r0()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "privacy_setting_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->O:I

    const-string v1, "privacy_from_page"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->N:I

    iget v0, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->O:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->a0(I)Lcom/transsion/tools/fragments/EmailSettingFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-static {p0, v2, v2}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->Z(I)Lcom/transsion/tools/fragments/PasswordSettingFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p0, v2, v2}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic t0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    iget v0, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->O:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_key_user_open_delayed_access_by_hidden_space"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->P:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->P:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->P:Lcom/transsion/widgetslib/dialog/d;

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$string;->visha_out_and_use_origin_password:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$string;->visha_back:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lvx7;

    invoke-direct {v2, p0}, Lvx7;-><init>(Lcom/transsion/tools/activities/PasswordSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$string;->cancel:I

    new-instance v2, Lwx7;

    invoke-direct {v2}, Lwx7;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->P:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/tools/R$layout;->activity_password_setting:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-direct {p0}, Lcom/transsion/tools/activities/PasswordSettingActivity;->r0()V

    return-void
.end method

.method public final synthetic s0(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    const-string v0, "mmkv_key_user_open_delayed_access_by_hidden_space"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public u0()V
    .locals 3

    iget v0, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->N:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->O:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/tools/activities/PrivacyFileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "privacy_setting_mode"

    iget v2, p0, Lcom/transsion/tools/activities/PasswordSettingActivity;->O:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x499

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
