.class public Lcom/transsion/tools/fragments/AboutUsFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/tools/fragments/AboutUsFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/AboutUsFragment$a;-><init>(Lcom/transsion/tools/fragments/AboutUsFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic P(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/fragments/AboutUsFragment;->l0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/tools/fragments/AboutUsFragment;Lcom/transsion/tools/fragments/AboutUsFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/AboutUsFragment;->k0(Lcom/transsion/tools/fragments/AboutUsFragment;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic R(Lcom/transsion/tools/fragments/AboutUsFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->m:I

    return p0
.end method

.method public static bridge synthetic S(Lcom/transsion/tools/fragments/AboutUsFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->l:I

    return p0
.end method

.method public static bridge synthetic T(Lcom/transsion/tools/fragments/AboutUsFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->n:I

    return p0
.end method

.method public static bridge synthetic U(Lcom/transsion/tools/fragments/AboutUsFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->o:I

    return p0
.end method

.method public static bridge synthetic V(Lcom/transsion/tools/fragments/AboutUsFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->m:I

    return-void
.end method

.method public static bridge synthetic W(Lcom/transsion/tools/fragments/AboutUsFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->l:I

    return-void
.end method

.method public static bridge synthetic X(Lcom/transsion/tools/fragments/AboutUsFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->n:I

    return-void
.end method

.method public static bridge synthetic Y(Lcom/transsion/tools/fragments/AboutUsFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->o:I

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a0(Lcom/transsion/tools/fragments/AboutUsFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic b0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/tools/fragments/AboutUsFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic d0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic e0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic f0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic g0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic h0(Lcom/transsion/tools/fragments/AboutUsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic l0(Ljava/lang/Boolean;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public i0()V
    .locals 4

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object v0

    new-instance v1, Ll2;

    invoke-direct {v1, p0}, Ll2;-><init>(Lcom/transsion/tools/fragments/AboutUsFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Lm2;

    invoke-direct {v0}, Lm2;-><init>()V

    invoke-virtual {p0, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final j0(Landroid/widget/LinearLayout;Ljava/lang/String;[Ljava/lang/String;I[I)V
    .locals 6

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41a00000    # 20.0f

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p2, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x14

    invoke-virtual {p2, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    move v2, v3

    :goto_0
    array-length v4, p3

    if-ge v2, v4, :cond_1

    new-instance v4, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    aget v5, p5, p4

    if-ne v2, v5, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/transsion/tools/fragments/AboutUsFragment$c;

    invoke-direct {p3, p0, p5, p4}, Lcom/transsion/tools/fragments/AboutUsFragment$c;-><init>(Lcom/transsion/tools/fragments/AboutUsFragment;[II)V

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final synthetic k0(Lcom/transsion/tools/fragments/AboutUsFragment;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    const-string v0, "online_video_layout_cache"

    invoke-virtual {p1, v0}, Lcom/transsion/retrofit/cache/CacheManager;->removeCache(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lw6c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lw6c;->s(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lw6c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lw6c;->s(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget-object p1, Lw6c;->e:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lw6c;->u(Landroid/content/Context;Ljava/lang/String;I)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public m0()V
    .locals 13

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$array;->dev_environment:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$array;->areas:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$array;->dev_gslb_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$array;->dev_push_environment:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x4

    new-array v9, v0, [I

    const/4 v0, 0x0

    aput v0, v9, v0

    const/4 v1, 0x1

    aput v0, v9, v1

    const/4 v2, 0x2

    aput v0, v9, v2

    const/4 v4, 0x3

    aput v0, v9, v4

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v10, Lcom/transsion/tools/R$layout;->dialog_dev_config_groups:I

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    sget v5, Lcom/transsion/tools/R$id;->radio_container:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->l:I

    aput v5, v9, v0

    iget v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->m:I

    aput v0, v9, v1

    iget v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->n:I

    aput v0, v9, v2

    iget v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->o:I

    aput v0, v9, v4

    const-string v2, "Change Dev Environment"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v12

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/tools/fragments/AboutUsFragment;->j0(Landroid/widget/LinearLayout;Ljava/lang/String;[Ljava/lang/String;I[I)V

    const-string v2, "Change Area"

    const/4 v4, 0x1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/tools/fragments/AboutUsFragment;->j0(Landroid/widget/LinearLayout;Ljava/lang/String;[Ljava/lang/String;I[I)V

    const-string v2, "Change Gslb Mode"

    const/4 v4, 0x2

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/tools/fragments/AboutUsFragment;->j0(Landroid/widget/LinearLayout;Ljava/lang/String;[Ljava/lang/String;I[I)V

    const-string v2, "Change Push Environment"

    const/4 v4, 0x3

    move-object v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/tools/fragments/AboutUsFragment;->j0(Landroid/widget/LinearLayout;Ljava/lang/String;[Ljava/lang/String;I[I)V

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/fragments/AboutUsFragment$b;

    invoke-direct {v1, p0, v9}, Lcom/transsion/tools/fragments/AboutUsFragment$b;-><init>(Lcom/transsion/tools/fragments/AboutUsFragment;[I)V

    const-string v2, "Confirm"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-virtual {v0, v1, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p0, "setup_about_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    sget p0, Lcom/transsion/tools/R$layout;->fragment_about_us:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/tools/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    sget p2, Lcom/transsion/tools/R$id;->ll_privacy:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->ll_agreement:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->title_bar_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$string;->about:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lge;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "environment_mode"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->l:I

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "area_mode"

    const/4 v2, 0x6

    invoke-static {p2, v0, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->m:I

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "gslb_mode"

    invoke-static {p2, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->n:I

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "push_env_mode"

    invoke-static {p2, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->o:I

    sget p2, Lcom/transsion/tools/R$id;->ll_change_environment:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/fragments/AboutUsFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
