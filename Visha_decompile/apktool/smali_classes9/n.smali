.class public abstract Ln;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static b:Ljava/lang/Boolean;

.field public static c:I

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Ln;->a:Ljava/lang/Boolean;

    sput-object v0, Ln;->b:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput v0, Ln;->c:I

    const-string v0, "en"

    sput-object v0, Ln;->d:Ljava/lang/String;

    const-string v1, "none"

    sput-object v1, Ln;->e:Ljava/lang/String;

    sput-object v0, Ln;->f:Ljava/lang/String;

    sput-object v1, Ln;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ln;->o(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Switch;Landroid/content/Context;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static/range {p0 .. p12}, Ln;->p(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Switch;Landroid/content/Context;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static c(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;)V
    .locals 4

    sget v0, Lcom/transsion/magicvideo/R$id;->view_split:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->view_split_bottom:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p3, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Ln;->d(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/magicvideo/R$id;->track_one:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/transsion/magicvideo/R$id;->track_two:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, p2, p0, p1, p5}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->updateTracksView(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/LinearLayout;)V

    :goto_0
    return-void
.end method

.method public static d(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_subtitle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/magicvideo/R$id;->ll_track_delay:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static e(Landroid/view/View;Landroid/widget/LinearLayout;ZLandroid/content/Context;)V
    .locals 7

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_custom_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_custom:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_download:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/magicvideo/R$id;->iv_download_icon:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/magicvideo/R$id;->tv_title:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/transsion/magicvideo/R$id;->ll_ai_language_from:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    sget v4, Lcom/transsion/magicvideo/R$id;->ll_ai_language_to:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/magicvideo/R$color;->ai_setting_grey:I

    invoke-virtual {p3, p2}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3, p2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/magicvideo/R$color;->ai_setting_custom:I

    invoke-virtual {p3, p2}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3, p2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static f(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->switchToAI(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->clearAISubtitleText()V

    invoke-static {}, Ln;->s()V

    if-eqz p2, :cond_0

    invoke-static {p1, p0}, Ln;->i(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    invoke-static {v0}, Ln;->r(Z)V

    goto :goto_0

    :cond_0
    sget-object p2, Ln;->a:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, p0, p2, v0}, Ln;->j(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;ZZ)V

    :goto_0
    return-void
.end method

.method public static g(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V
    .locals 2

    invoke-static {}, Lw;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ln;->r(Z)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ln;->x(Landroid/widget/ImageView;Z)V

    invoke-virtual {p1, v1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->switchToAI(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/magicvideo/R$string;->visha_ai_speech_rcognizing:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->onAISubtitleTextCallback(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object v0

    new-instance v1, Ln$a;

    invoke-direct {v1, p0, p1}, Ln$a;-><init>(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    new-instance p0, Ll;

    invoke-direct {p0, p1}, Ll;-><init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    invoke-interface {v0, v1, p0}, Ljw4;->g(Le74;Lhw4;)V

    :goto_0
    return-void
.end method

.method public static h(ZLjava/lang/String;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Z)V
    .locals 0

    invoke-static {p3, p0, p1}, Ln;->u(ZZLjava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->setCheckedLanguageFrom(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p2, p1, p3, p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->setCheckedLanguageTo(Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method

.method public static i(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V
    .locals 2

    const-string v0, "AIPlayerContentViewManager"

    const-string v1, "handleLocalSubtitleStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->switchToAI(Z)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ln;->x(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public static j(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;ZZ)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleLocalSubtitleStop subtitleIsOn:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",aiSubtitleIsOn:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AIPlayerContentViewManager"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p2}, Ln;->x(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public static k(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Lcom/transsion/magicvideo/widgets/AISubtitleLottieAnimationView;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ln;->w(ZZ)V

    sget-object v1, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    invoke-static {p0, p1, v0}, Ln;->f(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Z)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->clearLocalSubtitleText()V

    :cond_1
    :goto_0
    sget-object p2, Ln;->a:Ljava/lang/Boolean;

    sput-object p2, Ln;->b:Ljava/lang/Boolean;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    sget-object v0, Ln;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "all_subtitke_off_on"

    invoke-virtual {p2, v1, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "ai_subtitke_off_on"

    invoke-virtual {p2, v1, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    if-eqz p0, :cond_2

    sget p2, Ln;->c:I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_2

    sget-object p2, Ln;->a:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Ln;->c:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Ln;->c:I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    const-string v0, "subtitle_off_on_timer"

    sget v1, Ln;->c:I

    invoke-virtual {p2, v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->setShowSetting()V

    :cond_2
    sget-object p2, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1, p0}, Ln;->g(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    goto :goto_1

    :cond_3
    sget-object p2, Ln;->a:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, p0, p2, v0}, Ln;->j(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;ZZ)V

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/magicvideo/widgets/AISubtitleLottieAnimationView;->playAnimation()V

    :cond_4
    return-void
.end method

.method public static l(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Switch;Landroid/content/Context;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 14

    move-object v6, p0

    move-object/from16 v12, p3

    if-nez v6, :cond_0

    return-void

    :cond_0
    if-eqz v12, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAISubtitleForSettingDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIPlayerContentViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    move-object/from16 v7, p4

    move-object/from16 v10, p9

    invoke-static {p0, v10, v0, v7}, Ln;->e(Landroid/view/View;Landroid/widget/LinearLayout;ZLandroid/content/Context;)V

    invoke-virtual/range {p3 .. p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    invoke-static/range {v0 .. v5}, Ln;->c(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;)V

    goto :goto_0

    :cond_1
    move-object/from16 v7, p4

    move-object/from16 v10, p9

    :goto_0
    new-instance v0, Ln$b;

    invoke-direct {v0, v12}, Ln$b;-><init>(Landroid/widget/Switch;)V

    move-object/from16 v11, p10

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v12, :cond_2

    new-instance v13, Lm;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lm;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Switch;Landroid/content/Context;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v13}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method

.method public static m(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_local_language_from:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Ln$c;

    invoke-direct {v1, p1}, Ln$c;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_local_from_language:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ln;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lj0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_local_language_to:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Ln$d;

    invoke-direct {v1, p1}, Ln$d;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/magicvideo/R$id;->tv_local_to_language:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Ln;->g:Ljava/lang/String;

    invoke-static {p0, v0}, Lj0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static n()V
    .locals 4

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ai_from_language"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln;->d:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ai_to_language"

    invoke-static {}, Lj0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln;->e:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "local_subtitle_language_from"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln;->f:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ai_subtitke_off_on"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "all_subtitke_off_on"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "subtitle_off_on_timer"

    invoke-virtual {v1, v2}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;)I

    move-result v1

    sput v1, Ln;->c:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ln;->w(ZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSubtitleDefault subtitleIsOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",aISubtitleOn:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",fromLangCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ln;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",toLangCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ln;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",localFromLangCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ln;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",localToLangCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ln;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIPlayerContentViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic o(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->onAISubtitleTextCallback(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic p(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Switch;Landroid/content/Context;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static/range {p0 .. p10}, Ln;->t(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Switch;Landroid/content/Context;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setToLocalTranslateLanguageCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIPlayerContentViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Ln;->g:Ljava/lang/String;

    return-void
.end method

.method public static r(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAISubtitle forceStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mAISubtitleOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIPlayerContentViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ln;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Ln;->f:Ljava/lang/String;

    :goto_0
    sget-object v1, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ln;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v1, Ln;->g:Ljava/lang/String;

    :goto_1
    invoke-static {v0, v1}, Lj0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;

    invoke-direct {v2, v0, v1}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object p0

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, v2, v0}, Ljw4;->b(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object p0

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, v2, v0}, Ljw4;->i(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V

    :goto_2
    return-void
.end method

.method public static s()V
    .locals 1

    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object v0

    invoke-interface {v0}, Ljw4;->stop()V

    return-void
.end method

.method public static t(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Switch;Landroid/content/Context;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Ljava/lang/Boolean;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 10

    move-object v0, p5

    move-object/from16 v1, p6

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lw5a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p8 .. p8}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showDownloadLanguagePackPromptDialog()V

    move-object v2, p3

    invoke-virtual {p3, v3}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    move-object v2, p3

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual/range {p8 .. p8}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->reLoadCurSubtitleDataForAIState()V

    sget-object v2, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v4 .. v9}, Ln;->c(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/LinearLayout;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    sget-object v4, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "ai_subtitke_off_on"

    invoke-virtual {v2, v5, v4}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    sget-object v2, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v3}, Ln;->w(ZZ)V

    invoke-virtual/range {p8 .. p8}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->updateSubtitleVisibility()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    sget-object v3, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "all_subtitke_off_on"

    invoke-virtual {v2, v4, v3}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {v1, p5}, Ln;->g(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {p5, v1, v2}, Ln;->f(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Landroid/widget/ImageView;Z)V

    :goto_0
    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p9

    invoke-static {p0, v3, v0, p4}, Ln;->e(Landroid/view/View;Landroid/widget/LinearLayout;ZLandroid/content/Context;)V

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "vd_video_aisub_realtime_switch"

    invoke-static {v0, v1}, Lny5;->e(ZLjava/lang/String;)V

    return-void
.end method

.method public static u(ZZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    sput-object p2, Ln;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sput-object p2, Ln;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    sput-object p2, Ln;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sput-object p2, Ln;->g:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static v()V
    .locals 3

    invoke-static {}, Lw;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;

    sget-object v1, Ln;->f:Ljava/lang/String;

    sget-object v2, Ln;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lw5a;->d(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V

    :cond_0
    return-void
.end method

.method public static w(ZZ)V
    .locals 1

    sget-object v0, Ln;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    invoke-static {}, Lw;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Ln;->a:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {p0}, Ln;->r(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ln;->s()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Ln;->a:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public static x(Landroid/widget/ImageView;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSubtitleSwitchState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIPlayerContentViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/magicvideo/R$drawable;->ic_ai_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/magicvideo/R$drawable;->ic_ai_off:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
