.class public final Lcom/yandex/mobile/ads/impl/da2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/cd2;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/mg2;

.field private final c:Lcom/yandex/mobile/ads/impl/pc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/pc2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/tg2;

.field private e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/pc2;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/tg2;

    invoke-direct {v5, p2}, Lcom/yandex/mobile/ads/impl/tg2;-><init>(Lcom/yandex/mobile/ads/impl/sg2;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/da2;-><init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/pc2;Lcom/yandex/mobile/ads/impl/tg2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/pc2;Lcom/yandex/mobile/ads/impl/tg2;)V
    .locals 1

    .line 3
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoTracker"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playbackEventsListener"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoVisibleAreaValidator"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/da2;->a:Lcom/yandex/mobile/ads/impl/zb2;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/da2;->b:Lcom/yandex/mobile/ads/impl/mg2;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/da2;->c:Lcom/yandex/mobile/ads/impl/pc2;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/da2;->d:Lcom/yandex/mobile/ads/impl/tg2;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/da2;->e:Z

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/da2;->d:Lcom/yandex/mobile/ads/impl/tg2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/tg2;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/da2;->e:Z

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/da2;->b:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/mg2;->h()V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/da2;->c:Lcom/yandex/mobile/ads/impl/pc2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/da2;->a:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/pc2;->i(Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method
