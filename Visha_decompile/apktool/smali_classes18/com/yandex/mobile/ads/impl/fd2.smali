.class public final Lcom/yandex/mobile/ads/impl/fd2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gn1;

.field private final b:Lcom/yandex/mobile/ads/impl/wl1;

.field private final c:Lcom/yandex/mobile/ads/impl/da2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/da2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/ma2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ma2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/mobile/ads/impl/bi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/bi2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/wc2;Lcom/yandex/mobile/ads/impl/pc2;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adStatusController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTracker"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdPlayer"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackEventsListener"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/gn1;

    invoke-direct {v0, p5}, Lcom/yandex/mobile/ads/impl/gn1;-><init>(Lcom/yandex/mobile/ads/impl/ng2;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fd2;->a:Lcom/yandex/mobile/ads/impl/gn1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/wl1;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/wl1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fd2;->b:Lcom/yandex/mobile/ads/impl/wl1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/da2;

    invoke-direct {p1, p2, p3, p5, p7}, Lcom/yandex/mobile/ads/impl/da2;-><init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/pc2;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fd2;->c:Lcom/yandex/mobile/ads/impl/da2;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ma2;

    invoke-direct {p1, p3, p5, p6}, Lcom/yandex/mobile/ads/impl/ma2;-><init>(Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/wc2;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fd2;->d:Lcom/yandex/mobile/ads/impl/ma2;

    new-instance p1, Lcom/yandex/mobile/ads/impl/bi2;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/bi2;-><init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/pc2;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fd2;->e:Lcom/yandex/mobile/ads/impl/bi2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/dd2;)V
    .locals 7

    const-string v0, "progressEventsObservable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fd2;->a:Lcom/yandex/mobile/ads/impl/gn1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fd2;->b:Lcom/yandex/mobile/ads/impl/wl1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fd2;->d:Lcom/yandex/mobile/ads/impl/ma2;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/fd2;->c:Lcom/yandex/mobile/ads/impl/da2;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/fd2;->e:Lcom/yandex/mobile/ads/impl/bi2;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/yandex/mobile/ads/impl/cd2;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object v3, v5, v1

    const/4 v1, 0x4

    aput-object v4, v5, v1

    invoke-virtual {p1, v5}, Lcom/yandex/mobile/ads/impl/dd2;->a([Lcom/yandex/mobile/ads/impl/cd2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fd2;->e:Lcom/yandex/mobile/ads/impl/bi2;

    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/ed2;

    aput-object p0, v0, v6

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/dd2;->a([Lcom/yandex/mobile/ads/impl/ed2;)V

    return-void
.end method
