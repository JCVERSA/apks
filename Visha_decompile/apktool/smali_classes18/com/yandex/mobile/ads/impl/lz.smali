.class public final Lcom/yandex/mobile/ads/impl/lz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/rp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/lz$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/yandex/mobile/ads/impl/op;

.field private final c:Lcom/yandex/mobile/ads/impl/dw;

.field private final d:J

.field private final e:Lcom/yandex/mobile/ads/impl/aq;

.field private final f:Lcom/yandex/mobile/ads/impl/mg1;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/dw;JLcom/yandex/mobile/ads/impl/aq;)V
    .locals 9

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/mg1;->a:I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/mg1$a;->a(Z)Lcom/yandex/mobile/ads/impl/mg1;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/lz;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/dw;JLcom/yandex/mobile/ads/impl/aq;Lcom/yandex/mobile/ads/impl/mg1;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/dw;JLcom/yandex/mobile/ads/impl/aq;Lcom/yandex/mobile/ads/impl/mg1;)V
    .locals 1

    .line 3
    const-string v0, "closeButton"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeAppearanceController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugEventsReporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeTimerProgressIncrementer"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pausableTimer"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lz;->a:Landroid/view/View;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lz;->b:Lcom/yandex/mobile/ads/impl/op;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/lz;->c:Lcom/yandex/mobile/ads/impl/dw;

    .line 8
    iput-wide p4, p0, Lcom/yandex/mobile/ads/impl/lz;->d:J

    .line 9
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/lz;->e:Lcom/yandex/mobile/ads/impl/aq;

    .line 10
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/lz;->f:Lcom/yandex/mobile/ads/impl/mg1;

    .line 11
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lz;->d()Landroid/view/View;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/yandex/mobile/ads/impl/op;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lz;->f:Lcom/yandex/mobile/ads/impl/mg1;

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

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lz;->f:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->pause()V

    return-void
.end method

.method public final c()V
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/impl/lz$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lz;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lz;->b:Lcom/yandex/mobile/ads/impl/op;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lz;->c:Lcom/yandex/mobile/ads/impl/dw;

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/lz$a;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/dw;)V

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/lz;->d:J

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lz;->e:Lcom/yandex/mobile/ads/impl/aq;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/aq;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lz;->b:Lcom/yandex/mobile/ads/impl/op;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lz;->a:Landroid/view/View;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/op;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lz;->f:Lcom/yandex/mobile/ads/impl/mg1;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/lz;->e:Lcom/yandex/mobile/ads/impl/aq;

    invoke-interface {v3, v4}, Lcom/yandex/mobile/ads/impl/mg1;->a(Lcom/yandex/mobile/ads/impl/m52;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lz;->f:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {v3, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/mg1;->a(JLcom/yandex/mobile/ads/impl/og1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lz;->c:Lcom/yandex/mobile/ads/impl/dw;

    sget-object v0, Lcom/yandex/mobile/ads/impl/cw;->d:Lcom/yandex/mobile/ads/impl/cw;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/dw;->a(Lcom/yandex/mobile/ads/impl/cw;)V

    :goto_0
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lz;->a:Landroid/view/View;

    return-object p0
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lz;->f:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->invalidate()V

    return-void
.end method
