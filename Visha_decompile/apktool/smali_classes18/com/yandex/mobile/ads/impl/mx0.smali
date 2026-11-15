.class public final Lcom/yandex/mobile/ads/impl/mx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q31;

.field private final b:Lcom/yandex/mobile/ads/impl/j31;

.field private final c:Lcom/yandex/mobile/ads/impl/i31;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/q31;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/q31;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/mx0;->a:Lcom/yandex/mobile/ads/impl/q31;

    new-instance v0, Lcom/yandex/mobile/ads/impl/j31;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/j31;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/mx0;->b:Lcom/yandex/mobile/ads/impl/j31;

    new-instance v0, Lcom/yandex/mobile/ads/impl/i31;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/i31;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/mx0;->c:Lcom/yandex/mobile/ads/impl/i31;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/sj0;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/yx1;)Lcom/yandex/mobile/ads/impl/bw1;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const-string v7, "adResponse"

    invoke-static {v1, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "adConfiguration"

    invoke-static {v2, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "mediaView"

    invoke-static {v3, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "imageProvider"

    invoke-static {v4, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "imageValues"

    invoke-static {v5, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "mediaViewRenderController"

    invoke-static {v6, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {v9, v8}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/k31;

    invoke-static {v8}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {v10, v8, v1, v2}, Lcom/yandex/mobile/ads/impl/k31;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v11, Lcom/yandex/mobile/ads/impl/r31;

    invoke-direct {v11, v9}, Lcom/yandex/mobile/ads/impl/r31;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    const-wide/16 v12, 0x0

    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, Lcom/yandex/mobile/ads/impl/yx1;->b()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_0

    :cond_0
    move-wide v14, v12

    :goto_0
    cmp-long v12, v14, v12

    if-lez v12, :cond_1

    new-instance v12, Lcom/yandex/mobile/ads/impl/g31;

    new-instance v13, Lcom/yandex/mobile/ads/impl/kt0;

    invoke-direct {v13}, Lcom/yandex/mobile/ads/impl/kt0;-><init>()V

    invoke-direct {v12, v9, v11, v10, v13}, Lcom/yandex/mobile/ads/impl/g31;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/yandex/mobile/ads/impl/r31;Lcom/yandex/mobile/ads/impl/k31;Lcom/yandex/mobile/ads/impl/kt0;)V

    new-instance v13, Lcom/yandex/mobile/ads/impl/n31;

    invoke-direct {v13, v12, v14, v15}, Lcom/yandex/mobile/ads/impl/n31;-><init>(Lcom/yandex/mobile/ads/impl/g31;J)V

    invoke-virtual {v9, v13}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    new-instance v13, Lcom/yandex/mobile/ads/impl/xf1;

    invoke-direct {v13, v10, v12}, Lcom/yandex/mobile/ads/impl/xf1;-><init>(Lcom/yandex/mobile/ads/impl/k31;Lcom/yandex/mobile/ads/impl/g31;)V

    invoke-virtual {v9, v13}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/mx0;->b:Lcom/yandex/mobile/ads/impl/j31;

    invoke-virtual {v13, v8}, Lcom/yandex/mobile/ads/impl/j31;->a(Landroid/content/Context;)Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v13, v9}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a(Landroidx/viewpager2/widget/ViewPager2;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/ls$a;

    invoke-direct {v14, v11, v10, v12}, Lcom/yandex/mobile/ads/impl/ls$a;-><init>(Lcom/yandex/mobile/ads/impl/r31;Lcom/yandex/mobile/ads/impl/k31;Lcom/yandex/mobile/ads/impl/g31;)V

    invoke-virtual {v13, v14}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->setOnClickLeftButtonListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/ls$b;

    invoke-direct {v14, v11, v10, v12}, Lcom/yandex/mobile/ads/impl/ls$b;-><init>(Lcom/yandex/mobile/ads/impl/r31;Lcom/yandex/mobile/ads/impl/k31;Lcom/yandex/mobile/ads/impl/g31;)V

    invoke-virtual {v13, v14}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->setOnClickRightButtonListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/mx0;->c:Lcom/yandex/mobile/ads/impl/i31;

    invoke-virtual {v10, v8, v5}, Lcom/yandex/mobile/ads/impl/i31;->a(Landroid/content/Context;Ljava/util/List;)Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    move-result-object v5

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/mx0;->a:Lcom/yandex/mobile/ads/impl/q31;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewPager"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "getContext(...)"

    invoke-static {v0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/yandex/mobile/ads/impl/w80;->e:Lcom/yandex/mobile/ads/impl/w80;

    invoke-static {v0, v7}, Lcom/yandex/mobile/ads/impl/x80;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w80;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v13, :cond_4

    invoke-virtual {v5, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {v3, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/s31;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v2

    invoke-direct {v0, v9, v4, v2, v1}, Lcom/yandex/mobile/ads/impl/s31;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/bw1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/wg2;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/impl/wg2;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    invoke-direct {v1, v3, v0, v6, v2}, Lcom/yandex/mobile/ads/impl/bw1;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/s31;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/wg2;)V

    return-object v1
.end method
