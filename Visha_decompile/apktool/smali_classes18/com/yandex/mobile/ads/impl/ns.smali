.class public final Lcom/yandex/mobile/ads/impl/ns;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mg2;

.field private final b:Lcom/yandex/mobile/ads/impl/b41;

.field private final c:Lcom/yandex/mobile/ads/impl/oz1;

.field private final d:Lcom/yandex/mobile/ads/impl/ol1;

.field private final e:Lcom/yandex/mobile/ads/impl/jn0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;)V
    .locals 11

    move-object v2, p2

    .line 1
    new-instance v7, Lcom/yandex/mobile/ads/impl/b41;

    invoke-direct {v7, p2}, Lcom/yandex/mobile/ads/impl/b41;-><init>(Lcom/yandex/mobile/ads/impl/co0;)V

    .line 2
    new-instance v8, Lcom/yandex/mobile/ads/impl/oz1;

    invoke-virtual {p4}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/go0;

    invoke-direct {v8, p2, v0}, Lcom/yandex/mobile/ads/impl/oz1;-><init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/go0;)V

    .line 3
    new-instance v9, Lcom/yandex/mobile/ads/impl/ol1;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/ol1;-><init>()V

    .line 4
    new-instance v10, Lcom/yandex/mobile/ads/impl/jn0;

    move-object v3, p3

    move-object v4, p4

    invoke-direct {v10, p3, p4}, Lcom/yandex/mobile/ads/impl/jn0;-><init>(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 5
    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/ns;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/b41;Lcom/yandex/mobile/ads/impl/oz1;Lcom/yandex/mobile/ads/impl/ol1;Lcom/yandex/mobile/ads/impl/jn0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/b41;Lcom/yandex/mobile/ads/impl/oz1;Lcom/yandex/mobile/ads/impl/ol1;Lcom/yandex/mobile/ads/impl/jn0;)V
    .locals 1

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamVastAdPlayer"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBreak"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdInfo"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoTracker"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playbackListener"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "muteControlConfigurator"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "skipControlConfigurator"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "progressBarConfigurator"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamContainerTagConfigurator"

    invoke-static {p10, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ns;->a:Lcom/yandex/mobile/ads/impl/mg2;

    .line 9
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ns;->b:Lcom/yandex/mobile/ads/impl/b41;

    .line 10
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/ns;->c:Lcom/yandex/mobile/ads/impl/oz1;

    .line 11
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/ns;->d:Lcom/yandex/mobile/ads/impl/ol1;

    .line 12
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/ns;->e:Lcom/yandex/mobile/ads/impl/jn0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ob2;Lcom/yandex/mobile/ads/impl/ln0;)V
    .locals 3

    const-string v0, "uiElements"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsState"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ns;->e:Lcom/yandex/mobile/ads/impl/jn0;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/jn0;->a(Lcom/yandex/mobile/ads/impl/ob2;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ns;->b:Lcom/yandex/mobile/ads/impl/b41;

    invoke-virtual {v1, p1, p2}, Lcom/yandex/mobile/ads/impl/b41;->a(Lcom/yandex/mobile/ads/impl/ob2;Lcom/yandex/mobile/ads/impl/ln0;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->n()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ns;->c:Lcom/yandex/mobile/ads/impl/oz1;

    invoke-virtual {v2, v1, p2}, Lcom/yandex/mobile/ads/impl/oz1;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ln0;)V

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ob2;->j()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ns;->d:Lcom/yandex/mobile/ads/impl/ol1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "progressBar"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ln0;->b()F

    move-result p2

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method
