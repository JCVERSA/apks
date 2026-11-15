.class public final Lcom/yandex/mobile/ads/impl/ng2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/mg2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mg2;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gr;)V
    .locals 1

    const-string v0, "videoTracker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg2;->a()V

    return-void
.end method

.method public final a(F)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/mg2;->a(F)V

    return-void
.end method

.method public final a(FJ)V
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/mg2;->a(FJ)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendlyOverlays"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/mg2;->a(Landroid/view/View;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ng2;->b:Z

    .line 4
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ng2;->c:Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/mg2$a;)V
    .locals 1

    .line 12
    const-string v0, "quartile"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/mg2;->a(Lcom/yandex/mobile/ads/impl/mg2$a;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 1

    .line 9
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/mg2;->a(Lcom/yandex/mobile/ads/impl/xc2;)V

    .line 11
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ng2;->k()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 5
    const-string v0, "assetName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/mg2;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ng2;->h()V

    .line 8
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ng2;->n()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mg2;->b()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ng2;->k()V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg2;->c()V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg2;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mg2;->e()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ng2;->k()V

    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg2;->f()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mg2;->g()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ng2;->k()V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->b:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg2;->h()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg2;->i()V

    return-void
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg2;->j()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mg2;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->b:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->c:Z

    return-void
.end method

.method public final l()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg2;->l()V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mg2;->m()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ng2;->h()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ng2;->n()V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ng2;->c:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ng2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg2;->n()V

    :cond_0
    return-void
.end method
