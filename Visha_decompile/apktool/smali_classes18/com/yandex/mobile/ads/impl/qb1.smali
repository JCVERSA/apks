.class public final Lcom/yandex/mobile/ads/impl/qb1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/t81;

.field private final b:Lcom/yandex/mobile/ads/impl/ob1;

.field private final c:Lcom/yandex/mobile/ads/impl/de2;

.field private final d:Lcom/yandex/mobile/ads/impl/va1;

.field private e:Lcom/yandex/mobile/ads/impl/nb1;

.field private f:Lcom/yandex/mobile/ads/impl/s81;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ue2;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ob1;Lcom/yandex/mobile/ads/impl/de2;Lcom/yandex/mobile/ads/impl/va1;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewAdapter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoOptions"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "impressionTrackingListener"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeVideoPlaybackEventListener"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeForcePauseObserver"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageProvider"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "presenterCreator"

    invoke-static {p10, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "aspectRatioProvider"

    invoke-static {p11, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeVideoAdPlayerProvider"

    invoke-static {p12, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/qb1;->a:Lcom/yandex/mobile/ads/impl/t81;

    .line 4
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/qb1;->b:Lcom/yandex/mobile/ads/impl/ob1;

    .line 5
    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/qb1;->c:Lcom/yandex/mobile/ads/impl/de2;

    .line 6
    iput-object p12, p0, Lcom/yandex/mobile/ads/impl/qb1;->d:Lcom/yandex/mobile/ads/impl/va1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ue2;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/yx1;)V
    .locals 13

    .line 7
    new-instance v10, Lcom/yandex/mobile/ads/impl/ob1;

    move-object v0, v10

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/ob1;-><init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ue2;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/yx1;)V

    .line 8
    new-instance v11, Lcom/yandex/mobile/ads/impl/de2;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/de2;-><init>()V

    .line 9
    new-instance v12, Lcom/yandex/mobile/ads/impl/va1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct {v12, v0, v4, v5}, Lcom/yandex/mobile/ads/impl/va1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 10
    invoke-direct/range {v0 .. v12}, Lcom/yandex/mobile/ads/impl/qb1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ue2;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ob1;Lcom/yandex/mobile/ads/impl/de2;Lcom/yandex/mobile/ads/impl/va1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/yb1;)V
    .locals 3

    .line 8
    const-string v0, "videoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qb1;->e:Lcom/yandex/mobile/ads/impl/nb1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/nb1;->b(Lcom/yandex/mobile/ads/impl/yb1;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qb1;->f:Lcom/yandex/mobile/ads/impl/s81;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 11
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/qb1;->a:Lcom/yandex/mobile/ads/impl/t81;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/t81;->b(Lcom/yandex/mobile/ads/impl/s81;)V

    .line 12
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/qb1;->f:Lcom/yandex/mobile/ads/impl/s81;

    .line 13
    :cond_1
    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/yb1;->setOnAttachStateChangeListener(Lcom/yandex/mobile/ads/impl/gb1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/ng2;)V
    .locals 3

    .line 14
    const-string v0, "videoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTracker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qb1;->d:Lcom/yandex/mobile/ads/impl/va1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/lb2;->b()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/va1;->a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/sa1;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/qb1;->b:Lcom/yandex/mobile/ads/impl/ob1;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, p2, p3}, Lcom/yandex/mobile/ads/impl/ob1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/ng2;)Lcom/yandex/mobile/ads/impl/nb1;

    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qb1;->e:Lcom/yandex/mobile/ads/impl/nb1;

    .line 19
    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/nb1;->a(Lcom/yandex/mobile/ads/impl/yb1;)V

    .line 20
    new-instance p2, Lcom/yandex/mobile/ads/impl/s81;

    invoke-direct {p2, v0}, Lcom/yandex/mobile/ads/impl/s81;-><init>(Lcom/yandex/mobile/ads/impl/sa1;)V

    .line 21
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qb1;->f:Lcom/yandex/mobile/ads/impl/s81;

    .line 22
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qb1;->a:Lcom/yandex/mobile/ads/impl/t81;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/t81;->a(Lcom/yandex/mobile/ads/impl/s81;)V

    .line 23
    new-instance p0, Lcom/yandex/mobile/ads/impl/ab1;

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/ab1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/yb1;)V

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/yb1;->setOnAttachStateChangeListener(Lcom/yandex/mobile/ads/impl/gb1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/yb1;",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "videoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qb1;->c:Lcom/yandex/mobile/ads/impl/de2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/mobile/ads/impl/kb1;

    .line 4
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/kb1;->getAdHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/kb1;->getAdWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/kb1;->getAdHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    goto :goto_0

    :cond_0
    const v0, 0x3fe38e39

    .line 6
    :goto_0
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/yb1;->setAspectRatio(F)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qb1;->e:Lcom/yandex/mobile/ads/impl/nb1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/nb1;->a()V

    :cond_1
    return-void
.end method
