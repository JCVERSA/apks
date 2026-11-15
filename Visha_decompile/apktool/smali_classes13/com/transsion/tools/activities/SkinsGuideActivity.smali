.class public Lcom/transsion/tools/activities/SkinsGuideActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public N:Landroid/widget/LinearLayout;

.field public O:Landroid/animation/AnimatorSet;

.field public P:Landroid/animation/ValueAnimator;

.field public Q:Landroid/view/View;

.field public R:Landroid/view/View;

.field public S:Landroid/view/View;

.field public T:Landroid/view/View;

.field public U:Landroid/view/View;

.field public V:Landroid/widget/SeekBar;

.field public W:Landroid/widget/TextView;

.field public X:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    return-void
.end method

.method public static bridge synthetic p0(Lcom/transsion/tools/activities/SkinsGuideActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->V:Landroid/widget/SeekBar;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->btn_confirm:I

    if-ne p1, v0, :cond_0

    const-string p1, "need_personal_theme_guide"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lw6c;->s(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/tools/activities/SkinsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "from"

    const-string v1, "skin_popup_ok"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v1}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$id;->iv_close:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "skin_popup_close"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/tools/R$layout;->activcity_skins_guide:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$color;->black:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    sget p1, Lcom/transsion/tools/R$id;->thumb_preview_content:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->Q:Landroid/view/View;

    sget p1, Lcom/transsion/tools/R$id;->preview_sb:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->V:Landroid/widget/SeekBar;

    sget p1, Lcom/transsion/tools/R$id;->anim_views:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->N:Landroid/widget/LinearLayout;

    sget p1, Lcom/transsion/tools/R$id;->ll_video:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->R:Landroid/view/View;

    sget p1, Lcom/transsion/tools/R$id;->ll_music:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->S:Landroid/view/View;

    sget p1, Lcom/transsion/tools/R$id;->ll_download:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->T:Landroid/view/View;

    sget p1, Lcom/transsion/tools/R$id;->ll_more:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->U:Landroid/view/View;

    sget p1, Lcom/transsion/tools/R$id;->btn_confirm:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->W:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/tools/R$id;->iv_close:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->X:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/tools/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-boolean v0, Lpp3;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/tools/R$string;->custom_theme_guide_title_pre:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$string;->custom_theme_guide_title:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->X:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsGuideActivity;->r0()V

    const-string p0, "skin_popup_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public final q0(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->R:Landroid/view/View;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->S:Landroid/view/View;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->T:Landroid/view/View;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->U:Landroid/view/View;

    return-object p0
.end method

.method public final r0()V
    .locals 14

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->N:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->V:Landroid/widget/SeekBar;

    sget v5, Lcom/transsion/tools/R$drawable;->globefish:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget v5, Lcom/transsion/tools/R$drawable;->starfish:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v5, Lcom/transsion/tools/R$drawable;->shark:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v5, Lcom/transsion/tools/R$drawable;->turtle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v5, Lcom/transsion/tools/R$drawable;->seashells:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/tools/R$dimen;->custom_thumb_tab_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v9, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/transsion/tools/R$dimen;->custom_thumb_tab_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    new-array v11, v2, [F

    aput v9, v11, v4

    aput v10, v11, v1

    const-string v9, "TranslationY"

    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-instance v10, Lcom/transsion/tools/activities/SkinsGuideActivity$a;

    invoke-direct {v10, p0, v8}, Lcom/transsion/tools/activities/SkinsGuideActivity$a;-><init>(Lcom/transsion/tools/activities/SkinsGuideActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v10, "scaleY"

    new-array v11, v2, [F

    fill-array-data v11, :array_0

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-string v11, "scaleX"

    new-array v12, v2, [F

    fill-array-data v12, :array_1

    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {p0, v7}, Lcom/transsion/tools/activities/SkinsGuideActivity;->q0(I)Landroid/view/View;

    move-result-object v11

    const-string v12, "alpha"

    new-array v13, v2, [F

    fill-array-data v13, :array_2

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v13, v0, [Landroid/animation/Animator;

    aput-object v9, v13, v4

    aput-object v8, v13, v1

    aput-object v10, v13, v2

    const/4 v8, 0x3

    aput-object v11, v13, v8

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v12, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v12, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v1

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->O:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->O:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->O:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/16 v0, 0x3c

    filled-new-array {v4, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->P:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->P:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->P:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/tools/activities/SkinsGuideActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsGuideActivity$b;-><init>(Lcom/transsion/tools/activities/SkinsGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
