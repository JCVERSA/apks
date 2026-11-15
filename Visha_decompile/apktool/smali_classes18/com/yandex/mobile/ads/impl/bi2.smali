.class public final Lcom/yandex/mobile/ads/impl/bi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd2;
.implements Lcom/yandex/mobile/ads/impl/ed2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/cd2;",
        "Lcom/yandex/mobile/ads/impl/ed2;"
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

.field private final b:Lcom/yandex/mobile/ads/impl/qd2;

.field private final c:Lcom/yandex/mobile/ads/impl/mg2;

.field private final d:Lcom/yandex/mobile/ads/impl/pc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/pc2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/mobile/ads/impl/td2;

.field private f:Ljava/lang/Long;

.field private g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/pc2;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/yandex/mobile/ads/impl/ug2;

    invoke-direct {v6, p2}, Lcom/yandex/mobile/ads/impl/ug2;-><init>(Lcom/yandex/mobile/ads/impl/sg2;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/bi2;-><init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/pc2;Lcom/yandex/mobile/ads/impl/td2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sg2;Lcom/yandex/mobile/ads/impl/qd2;Lcom/yandex/mobile/ads/impl/ng2;Lcom/yandex/mobile/ads/impl/pc2;Lcom/yandex/mobile/ads/impl/td2;)V
    .locals 1

    .line 3
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoAdStatusController"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoTracker"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoAdPlaybackEventsListener"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoAdVisibilityValidator"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bi2;->a:Lcom/yandex/mobile/ads/impl/zb2;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bi2;->b:Lcom/yandex/mobile/ads/impl/qd2;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/bi2;->c:Lcom/yandex/mobile/ads/impl/mg2;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/bi2;->d:Lcom/yandex/mobile/ads/impl/pc2;

    .line 9
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/bi2;->e:Lcom/yandex/mobile/ads/impl/td2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/bi2;->f:Ljava/lang/Long;

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/bi2;->g:Z

    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/bi2;->e:Lcom/yandex/mobile/ads/impl/td2;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/td2;->a()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/bi2;->b:Lcom/yandex/mobile/ads/impl/qd2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/qd2;->a()Lcom/yandex/mobile/ads/impl/pd2;

    move-result-object p1

    sget-object p3, Lcom/yandex/mobile/ads/impl/pd2;->e:Lcom/yandex/mobile/ads/impl/pd2;

    if-ne p1, p3, :cond_2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/bi2;->f:Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    sub-long p1, p3, p1

    const-wide/16 v0, 0x7d0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/bi2;->g:Z

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/bi2;->d:Lcom/yandex/mobile/ads/impl/pc2;

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/bi2;->a:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-interface {p1, p2}, Lcom/yandex/mobile/ads/impl/pc2;->k(Lcom/yandex/mobile/ads/impl/zb2;)V

    .line 7
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/bi2;->c:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/mg2;->n()V

    .line 8
    :cond_0
    sget-object p2, Lzfb;->a:Lzfb;

    :cond_1
    if-nez p2, :cond_3

    .line 9
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bi2;->f:Ljava/lang/Long;

    .line 10
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/bi2;->d:Lcom/yandex/mobile/ads/impl/pc2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bi2;->a:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/pc2;->l(Lcom/yandex/mobile/ads/impl/zb2;)V

    goto :goto_0

    .line 11
    :cond_2
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bi2;->f:Ljava/lang/Long;

    :cond_3
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/bi2;->f:Ljava/lang/Long;

    return-void
.end method
