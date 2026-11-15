.class public final Lcom/yandex/mobile/ads/impl/eo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/pc2;
.implements Lcom/yandex/mobile/ads/impl/tn0$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/pc2<",
        "Lcom/yandex/mobile/ads/impl/go0;",
        ">;",
        "Lcom/yandex/mobile/ads/impl/tn0$a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/pc2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pc2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/pc2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/eo0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private final m(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/eo0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->d(Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    .line 4
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->a(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;F)V"
        }
    .end annotation

    .line 6
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/pc2;->a(Lcom/yandex/mobile/ads/impl/zb2;F)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/xc2;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdPlayerError"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/pc2;->a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/xc2;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->b(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->c(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final d(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/eo0;->m(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final e(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->e(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final f(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->f(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final g(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->g(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final h(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/eo0;->m(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final i(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->i(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final j(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->j(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final k(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->k(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method

.method public final l(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eo0;->a:Lcom/yandex/mobile/ads/impl/pc2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/pc2;->l(Lcom/yandex/mobile/ads/impl/zb2;)V

    return-void
.end method
