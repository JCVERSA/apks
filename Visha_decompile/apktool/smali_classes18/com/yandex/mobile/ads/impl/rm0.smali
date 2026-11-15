.class public final Lcom/yandex/mobile/ads/impl/rm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qz1;

.field private final b:Lcom/yandex/mobile/ads/impl/ul1;

.field private final c:Lcom/yandex/mobile/ads/impl/xo0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/vo0;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/qd2;)V
    .locals 9

    .line 1
    new-instance v6, Lcom/yandex/mobile/ads/impl/qz1;

    invoke-direct {v6, p4, p1}, Lcom/yandex/mobile/ads/impl/qz1;-><init>(Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/go0;)V

    .line 2
    new-instance v7, Lcom/yandex/mobile/ads/impl/ul1;

    invoke-direct {v7, p4}, Lcom/yandex/mobile/ads/impl/ul1;-><init>(Lcom/yandex/mobile/ads/impl/cn0;)V

    .line 3
    new-instance v8, Lcom/yandex/mobile/ads/impl/xo0;

    invoke-direct {v8, p3, p2, p5}, Lcom/yandex/mobile/ads/impl/xo0;-><init>(Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/vo0;Lcom/yandex/mobile/ads/impl/qd2;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/rm0;-><init>(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/vo0;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/qz1;Lcom/yandex/mobile/ads/impl/ul1;Lcom/yandex/mobile/ads/impl/xo0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/vo0;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/qz1;Lcom/yandex/mobile/ads/impl/ul1;Lcom/yandex/mobile/ads/impl/xo0;)V
    .locals 1

    .line 5
    const-string v0, "instreamVideoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoViewProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdPlayer"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adViewsHolderManager"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adStatusController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "skipDisplayTracker"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "progressDisplayTracker"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "visibilityTracker"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/rm0;->a:Lcom/yandex/mobile/ads/impl/qz1;

    .line 8
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/rm0;->b:Lcom/yandex/mobile/ads/impl/ul1;

    .line 9
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/rm0;->c:Lcom/yandex/mobile/ads/impl/xo0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/dd2;)V
    .locals 4

    const-string v0, "progressEventsObservable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rm0;->a:Lcom/yandex/mobile/ads/impl/qz1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rm0;->b:Lcom/yandex/mobile/ads/impl/ul1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rm0;->c:Lcom/yandex/mobile/ads/impl/xo0;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/yandex/mobile/ads/impl/cd2;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/dd2;->a([Lcom/yandex/mobile/ads/impl/cd2;)V

    return-void
.end method
