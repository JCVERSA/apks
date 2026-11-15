.class public Lcom/mbridge/msdk/video/dynview/moffer/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile c:Lcom/mbridge/msdk/video/dynview/moffer/a;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    .line 10
    .line 11
    const/16 v0, 0x1f4

    .line 12
    .line 13
    iput v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->b:I

    .line 14
    .line 15
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    .line 111
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static a()Lcom/mbridge/msdk/video/dynview/moffer/a;
    .locals 2

    .line 2
    sget-object v0, Lcom/mbridge/msdk/video/dynview/moffer/a;->c:Lcom/mbridge/msdk/video/dynview/moffer/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mbridge/msdk/video/dynview/moffer/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/video/dynview/moffer/a;->c:Lcom/mbridge/msdk/video/dynview/moffer/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mbridge/msdk/video/dynview/moffer/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/moffer/a;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/video/dynview/moffer/a;->c:Lcom/mbridge/msdk/video/dynview/moffer/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    sget-object v1, Lcom/mbridge/msdk/video/dynview/moffer/a;->c:Lcom/mbridge/msdk/video/dynview/moffer/a;

    monitor-exit v0

    return-object v1

    .line 7
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    sget-object v0, Lcom/mbridge/msdk/video/dynview/moffer/a;->c:Lcom/mbridge/msdk/video/dynview/moffer/a;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 81
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_reward_more_offer_default_bg"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 83
    const-string v1, "mbridge_moreoffer_hls"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 84
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MOfferEnergize"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 7

    .line 35
    :try_start_0
    instance-of v0, p1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    if-eqz v0, :cond_1

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->isDyXmlSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x61e89154

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 38
    :cond_0
    const-string v0, "mbridge_native_ec_layout"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 39
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->b:I

    int-to-long v5, v0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/video/dynview/ui/b;->a(Ljava/util/List;IIJ)V

    .line 42
    :cond_1
    const-string v0, "mbridge_reward_moreoffer_layout"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    const v0, -0x4e3c5b7

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    :cond_2
    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 47
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 48
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MOfferEnergize"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->getmMainOfferCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->getmMainOfferCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->getmMainOfferCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->b()I

    move-result p1

    if-nez p1, :cond_1

    .line 51
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    move p1, v0

    :cond_1
    :goto_0
    if-eq p1, v0, :cond_3

    .line 52
    instance-of p1, p2, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    if-eqz p1, :cond_3

    .line 53
    move-object p1, p2

    check-cast p1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->isDyXmlSuccess()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, -0x6b8018a8

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_1

    .line 55
    :cond_2
    const-string p1, "mbridge_iv_adbanner"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 56
    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x435c0000    # 220.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x10

    .line 57
    div-int/lit8 v1, v1, 0x9

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 60
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 61
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :cond_3
    instance-of p1, p2, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    if-eqz p1, :cond_5

    .line 63
    move-object p1, p2

    check-cast p1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->isDyXmlSuccess()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, -0x61e89154

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x172fce35

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x5d145a00

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    goto :goto_2

    .line 67
    :cond_4
    const-string p1, "mbridge_native_ec_layout"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 68
    const-string v0, "mbridge_iv_flag"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    const-string v1, "mbridge_tv_flag"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 70
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p2, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    iget p2, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->b:I

    int-to-long v5, p2

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/video/dynview/ui/b;->a(Ljava/util/List;IIJ)V

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 74
    :goto_3
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 76
    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_6

    .line 77
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 78
    :goto_4
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    return-void
.end method

.method private a(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 9

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-nez p4, :cond_0

    goto/16 :goto_1

    .line 19
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_1
    const/16 v2, 0xc

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 22
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    .line 23
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 24
    invoke-direct {p0, p3}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Landroid/view/ViewGroup;)V

    .line 25
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->getECParentTemplateCode()J

    move-result-wide v0

    const-wide/16 v2, 0x516

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 30
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 31
    :goto_0
    new-instance v1, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v6

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p3

    invoke-virtual/range {v1 .. v8}, Lcom/mbridge/msdk/video/dynview/ui/b;->a(Landroid/view/View;IIIIJ)V

    .line 32
    instance-of p3, p2, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    if-eqz p3, :cond_4

    .line 33
    move-object p3, p2

    check-cast p3, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-virtual {p3, p4}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->setMoreOfferCampaignUnit(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 34
    :cond_4
    new-instance p3, Lcom/mbridge/msdk/video/dynview/moffer/a$b;

    invoke-direct {p3, p0, p1}, Lcom/mbridge/msdk/video/dynview/moffer/a$b;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/a;Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V

    iget p1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->b:I

    add-int/lit16 p1, p1, 0x1f4

    int-to-long v0, p1

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Landroid/view/ViewGroup;Lcom/mbridge/msdk/video/module/listener/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/mbridge/msdk/video/dynview/moffer/a$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/mbridge/msdk/video/dynview/moffer/a$a;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/a;Landroid/view/ViewGroup;Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;)V

    .line 17
    invoke-virtual {p1, v0, p3}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->setMoreOfferListener(Lcom/mbridge/msdk/video/dynview/listener/g;Lcom/mbridge/msdk/video/module/listener/a;)V

    .line 18
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->showView()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/dynview/moffer/a;Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/mbridge/msdk/video/module/listener/a;)V
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    return-void

    .line 15
    :cond_3
    invoke-direct {p0, p2, p1, p3}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a(Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Landroid/view/ViewGroup;Lcom/mbridge/msdk/video/module/listener/a;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 90
    :cond_2
    :try_start_0
    new-instance v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;-><init>()V

    .line 91
    invoke-virtual {v1, p2}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->setFromType(I)V

    .line 92
    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 96
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->buildMofferAd(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MOfferEnergize"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/view/ViewGroup;Lcom/mbridge/msdk/video/module/listener/a;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 100
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    .line 101
    :cond_1
    :try_start_0
    new-instance v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;-><init>()V

    .line 102
    invoke-virtual {v1, p4}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->setFromType(I)V

    .line 103
    new-instance p4, Ljava/lang/ref/SoftReference;

    invoke-direct {p4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    .line 107
    new-instance v0, Lcom/mbridge/msdk/video/dynview/moffer/a$c;

    invoke-direct {v0, p0, p4, p2}, Lcom/mbridge/msdk/video/dynview/moffer/a$c;-><init>(Lcom/mbridge/msdk/video/dynview/moffer/a;Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;Landroid/view/ViewGroup;)V

    invoke-virtual {p4, v0, p3}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->setMoreOfferListener(Lcom/mbridge/msdk/video/dynview/listener/g;Lcom/mbridge/msdk/video/module/listener/a;)V

    const/4 p2, 0x1

    .line 108
    invoke-virtual {p4, p2}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->setIsRetry(Z)V

    .line 109
    invoke-virtual {p4, p1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->buildMofferAd(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MOfferEnergize"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/dynview/moffer/MOfferModel;->mofDestroy()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOfferEnergize"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/moffer/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
