.class public Lcom/transsion/tools/fragments/PrivacyPasswordFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public l:Landroid/widget/EditText;

.field public m:Landroid/widget/LinearLayout;

.field public final n:Ljava/util/List;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:I

.field public u:Lcom/transsion/widgetslib/dialog/d;

.field public final v:Lcom/blankj/utilcode/util/NetworkUtils$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->n:Ljava/util/List;

    new-instance v0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$a;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->v:Lcom/blankj/utilcode/util/NetworkUtils$a;

    return-void
.end method

.method public static synthetic P(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->i0(Z)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->h0()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->j0(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->g0()V

    return-void
.end method

.method public static bridge synthetic T(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic U(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->u:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public static bridge synthetic V(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->c0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic W(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l0(Z)V

    return-void
.end method

.method public static bridge synthetic X(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->m0(Landroid/app/Activity;)V

    return-void
.end method

.method public static bridge synthetic Y(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->n0(IZ)V

    return-void
.end method

.method public static bridge synthetic Z(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->o0()V

    return-void
.end method

.method public static bridge synthetic a0(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->p0(I)V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSoftPanel(Landroid/widget/TextView;)V

    return-void
.end method

.method public static k0(I)Lcom/transsion/tools/fragments/PrivacyPasswordFragment;
    .locals 3

    new-instance v0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "privacy_setting_mode"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private n0(IZ)V
    .locals 0

    const/16 p0, 0x16

    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_0

    sget p0, Lcom/transsion/tools/R$string;->biometric_unlock_success:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/tools/R$string;->biometric_unlock_failure:I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget p0, Lcom/transsion/tools/R$string;->biometric_lock_success:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/transsion/tools/R$string;->biometric_lock_failure:I

    :goto_0
    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method


# virtual methods
.method public final c0(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    invoke-virtual {v0}, Ltg8;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->t:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v2, Lcom/transsion/tools/activities/PasswordSettingActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "privacy_setting_mode"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string p1, "method"

    const-string v1, "Pin"

    const-string v2, "vd_more_hide_pw_method"

    invoke-static {v2, p1, v1}, Lq06;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-direct {p1}, Lcom/transsion/tools/fragments/PrivacyFileFragment;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v1}, La64;->g(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, La64;->o(Lcom/transsion/playercommon/fragments/BaseFragment;ZZZ)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideSoftPanel(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l0(Z)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$4;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final d0()V
    .locals 4

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_key_user_open_delayed_access_by_hidden_space"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Luv3;->c(Landroid/content/Context;)Z

    move-result v1

    iget-object v3, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->o0()V

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->v:Lcom/blankj/utilcode/util/NetworkUtils$a;

    invoke-static {p0}, Lcom/blankj/utilcode/util/NetworkUtils;->registerNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$a;)V

    :cond_1
    return-void
.end method

.method public final e0()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/transsion/tools/R$drawable;->ic_password_dot_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$dimen;->password_dot_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$dimen;->password_margin_horizontal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$c;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public fingerPrintMethod(IIIII)V
    .locals 3

    const-string v0, "method"

    const-string v1, "Fingerprint"

    const-string v2, "vd_more_hide_pw_show"

    invoke-static {v2, v0, v1}, Lq06;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lsv3;

    new-instance v2, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Landroid/app/Activity;)V

    invoke-direct {v1, v0, v2, p1, p5}, Lsv3;-><init>(Landroid/content/Context;Lsv3$b;II)V

    invoke-virtual {v1, v0, p2, p3, p4}, Lsv3;->g(Landroid/content/Context;III)V

    :cond_0
    return-void
.end method

.method public final synthetic g0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Luv3;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsv3;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->t:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->r:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideSoftPanel(Landroid/widget/TextView;)V

    sget v3, Lcom/transsion/tools/R$string;->biometric_unlock_title:I

    sget v4, Lcom/transsion/tools/R$string;->prompt_fingerprint_authentication:I

    sget v5, Lcom/transsion/tools/R$string;->password_unlock:I

    const/4 v6, 0x1

    const/16 v2, 0x16

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->fingerPrintMethod(IIIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "method"

    const-string v1, "Pin"

    const-string v2, "vd_more_hide_pw_show"

    invoke-static {v2, v0, v1}, Lq06;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSoftPanel(Landroid/widget/TextView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic h0()Ljava/lang/Long;
    .locals 2

    sget-object v0, Lkg8;->a:Lkg8;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lkg8;->a(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic i0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v1, Lcom/transsion/tools/activities/PasswordSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "privacy_setting_mode"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->s:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "mmkv_key_user_open_delayed_access_by_hidden_space"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "mmkv_key_user_operated_delayed_access_time_by_hidden_space"

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    :goto_0
    return-void
.end method

.method public final synthetic j0(Ljava/lang/Long;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Le07;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_key_user_operated_delayed_access_time_by_hidden_space"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->h(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->s:Landroid/widget/TextView;

    sget-object v2, Lkg8;->a:Lkg8;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Lig8;

    invoke-direct {v8, p0}, Lig8;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V

    invoke-virtual/range {v2 .. v8}, Lkg8;->c(Landroid/content/Context;JJLkg8$a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->s:Landroid/widget/TextView;

    sget p1, Lcom/transsion/tools/R$string;->visha_delay_access_countdown_notice_no_network:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public final l0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/tools/R$string;->privacy_password_error:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/tools/R$string;->privacy_password_title:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/tools/R$color;->password_error_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/tools/R$color;->os_text_primary_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method public final m0(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "method"

    const-string v0, "Fingerprint"

    const-string v1, "vd_more_hide_pw_method"

    invoke-static {v1, p1, v0}, Lq06;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-direct {p1}, Lcom/transsion/tools/fragments/PrivacyFileFragment;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/fragments/PrivacyFileFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v1}, La64;->g(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, La64;->o(Lcom/transsion/playercommon/fragments/BaseFragment;ZZZ)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideSoftPanel(Landroid/widget/TextView;)V

    return-void
.end method

.method public final o0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lfg8;

    invoke-direct {v0, p0}, Lfg8;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V

    invoke-static {v0}, Lmc7;->D(Ljava/util/concurrent/Callable;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lgg8;

    invoke-direct {v1, p0}, Lgg8;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->iv_close:I

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=======>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->t:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrivacyPasswordFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->t:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/tools/R$id;->dots_container:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSoftPanel(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/tools/R$id;->tv_password_forget:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Le07;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v1, Lcom/transsion/tools/activities/PasswordSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "privacy_setting_mode"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/transsion/tools/R$string;->privacy_find_password_network_error_msg:I

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/tools/R$string;->privacy_find_password_network_error_ok:I

    new-instance v1, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$d;

    invoke-direct {v1, p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$d;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/tools/R$string;->privacy_find_password_network_error_cancel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->u:Lcom/transsion/widgetslib/dialog/d;

    goto :goto_0

    :cond_4
    sget v0, Lcom/transsion/tools/R$id;->print_password_fingerprint:I

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Luv3;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget v2, Lcom/transsion/tools/R$string;->enable_biometric_unlock:I

    sget v3, Lcom/transsion/tools/R$string;->prompt_fingerprint_authentication:I

    sget v4, Lcom/transsion/tools/R$string;->password_unlock:I

    const/4 v5, 0x1

    const/16 v1, 0x16

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->fingerPrintMethod(IIIII)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "privacy_setting_mode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->t:I

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    const-string v0, "PrivacyPasswordFragment"

    invoke-static {v0}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->v:Lcom/blankj/utilcode/util/NetworkUtils$a;

    invoke-static {p0}, Lcom/blankj/utilcode/util/NetworkUtils;->unregisterNetworkStatusChangedListener(Lcom/blankj/utilcode/util/NetworkUtils$a;)V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/tools/R$layout;->fragment_privacy_password:I

    return p0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l:Landroid/widget/EditText;

    new-instance v1, Lhg8;

    invoke-direct {v1, p0}, Lhg8;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/tools/R$id;->et_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->l:Landroid/widget/EditText;

    sget p2, Lcom/transsion/tools/R$id;->dots_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->iv_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->o:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->tv_password_forget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->p:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->q:Landroid/widget/TextView;

    sget p2, Lcom/transsion/tools/R$id;->print_password_fingerprint:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->r:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->tv_delayed_access_notice:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->d0()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->f0()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->e0()V

    new-instance p2, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$b;

    invoke-direct {p2, p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$b;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V

    const-string v0, "PrivacyPasswordFragment"

    invoke-static {v0, p2}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->needBg:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/tools/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final p0(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-ge v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
