.class public final Lcom/yandex/mobile/ads/impl/fj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/zl1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rf2;

.field private final b:Lcom/yandex/mobile/ads/impl/yn1;

.field private final c:Lcom/yandex/mobile/ads/impl/xn1;

.field private final d:Lcom/yandex/mobile/ads/impl/hj1;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rf2;Lcom/yandex/mobile/ads/impl/yn1;Lcom/yandex/mobile/ads/impl/xn1;Lcom/yandex/mobile/ads/impl/hj1;)V
    .locals 1

    const-string v0, "videoProgressMonitoringManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readyToPrepareProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readyToPlayProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistSchedulerListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fj1;->a:Lcom/yandex/mobile/ads/impl/rf2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fj1;->b:Lcom/yandex/mobile/ads/impl/yn1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fj1;->c:Lcom/yandex/mobile/ads/impl/xn1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fj1;->d:Lcom/yandex/mobile/ads/impl/hj1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fj1;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fj1;->e:Z

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fj1;->a:Lcom/yandex/mobile/ads/impl/rf2;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/rf2;->a(Lcom/yandex/mobile/ads/impl/zl1;)V

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fj1;->a:Lcom/yandex/mobile/ads/impl/rf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rf2;->a()V

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fj1;->c:Lcom/yandex/mobile/ads/impl/xn1;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/xn1;->a(J)Lcom/yandex/mobile/ads/impl/gt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fj1;->d:Lcom/yandex/mobile/ads/impl/hj1;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/hj1;->a(Lcom/yandex/mobile/ads/impl/gt;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fj1;->b:Lcom/yandex/mobile/ads/impl/yn1;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/yn1;->a(J)Lcom/yandex/mobile/ads/impl/gt;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fj1;->d:Lcom/yandex/mobile/ads/impl/hj1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/hj1;->b(Lcom/yandex/mobile/ads/impl/gt;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fj1;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fj1;->a:Lcom/yandex/mobile/ads/impl/rf2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/rf2;->a(Lcom/yandex/mobile/ads/impl/zl1;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fj1;->a:Lcom/yandex/mobile/ads/impl/rf2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rf2;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fj1;->e:Z

    :cond_0
    return-void
.end method
