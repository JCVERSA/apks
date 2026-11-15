.class public final Lcom/yandex/mobile/ads/impl/ql1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/rp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ql1$a;,
        Lcom/yandex/mobile/ads/impl/ql1$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/ProgressBar;

.field private final c:Lcom/yandex/mobile/ads/impl/op;

.field private final d:Lcom/yandex/mobile/ads/impl/yp;

.field private final e:Lcom/yandex/mobile/ads/impl/dw;

.field private final f:Lcom/yandex/mobile/ads/impl/xl1;

.field private final g:J

.field private final h:Lcom/yandex/mobile/ads/impl/mg1;

.field private final i:Lcom/yandex/mobile/ads/impl/og1;

.field private final j:Lcom/yandex/mobile/ads/impl/m52;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ProgressBar;Lcom/yandex/mobile/ads/impl/h50;Lcom/yandex/mobile/ads/impl/yp;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/xl1;J)V
    .locals 1

    const-string v0, "closeButton"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeProgressView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeAppearanceController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeProgressAppearanceController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugEventsReporter"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressIncrementer"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ql1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ql1;->b:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ql1;->c:Lcom/yandex/mobile/ads/impl/op;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ql1;->d:Lcom/yandex/mobile/ads/impl/yp;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ql1;->e:Lcom/yandex/mobile/ads/impl/dw;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ql1;->f:Lcom/yandex/mobile/ads/impl/xl1;

    iput-wide p7, p0, Lcom/yandex/mobile/ads/impl/ql1;->g:J

    sget p1, Lcom/yandex/mobile/ads/impl/mg1;->a:I

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/mg1$a;->a(Z)Lcom/yandex/mobile/ads/impl/mg1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ql1;->h:Lcom/yandex/mobile/ads/impl/mg1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ql1$b;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ql1;->d()Landroid/view/View;

    move-result-object p6

    invoke-direct {p1, p6, p3, p5}, Lcom/yandex/mobile/ads/impl/ql1$b;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/h50;Lcom/yandex/mobile/ads/impl/dw;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ql1;->i:Lcom/yandex/mobile/ads/impl/og1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ql1$a;

    invoke-direct {p1, p2, p4, p7, p8}, Lcom/yandex/mobile/ads/impl/ql1$a;-><init>(Landroid/widget/ProgressBar;Lcom/yandex/mobile/ads/impl/yp;J)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ql1;->j:Lcom/yandex/mobile/ads/impl/m52;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ql1;->h:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->resume()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ql1;->h:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->pause()V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ql1;->d:Lcom/yandex/mobile/ads/impl/yp;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ql1;->b:Landroid/widget/ProgressBar;

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/ql1;->g:J

    long-to-int v2, v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ql1;->f:Lcom/yandex/mobile/ads/impl/xl1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/xl1;->a()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "progressBar"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ql1;->g:J

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ql1;->f:Lcom/yandex/mobile/ads/impl/xl1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/xl1;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ql1;->c:Lcom/yandex/mobile/ads/impl/op;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ql1;->a:Landroid/view/View;

    invoke-interface {v2, v3}, Lcom/yandex/mobile/ads/impl/op;->a(Landroid/view/View;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ql1;->h:Lcom/yandex/mobile/ads/impl/mg1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ql1;->j:Lcom/yandex/mobile/ads/impl/m52;

    invoke-interface {v2, v3}, Lcom/yandex/mobile/ads/impl/mg1;->a(Lcom/yandex/mobile/ads/impl/m52;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ql1;->h:Lcom/yandex/mobile/ads/impl/mg1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ql1;->i:Lcom/yandex/mobile/ads/impl/og1;

    invoke-interface {v2, v0, v1, v3}, Lcom/yandex/mobile/ads/impl/mg1;->a(JLcom/yandex/mobile/ads/impl/og1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ql1;->e:Lcom/yandex/mobile/ads/impl/dw;

    sget-object v0, Lcom/yandex/mobile/ads/impl/cw;->d:Lcom/yandex/mobile/ads/impl/cw;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/dw;->a(Lcom/yandex/mobile/ads/impl/cw;)V

    :cond_0
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ql1;->a:Landroid/view/View;

    return-object p0
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ql1;->h:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->invalidate()V

    return-void
.end method
