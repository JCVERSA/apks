.class public final Lcom/yandex/mobile/ads/impl/q81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yc0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/q81$a;,
        Lcom/yandex/mobile/ads/impl/q81$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mg1;

.field private final b:Lcom/yandex/mobile/ads/impl/mz;

.field private c:Lcom/yandex/mobile/ads/impl/k3;

.field private d:Lcom/yandex/mobile/ads/impl/yl1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/yl1;)V
    .locals 7

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/mg1;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/mg1$a;->a(Z)Lcom/yandex/mobile/ads/impl/mg1;

    move-result-object v5

    .line 2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/f52;->d()Lcom/yandex/mobile/ads/impl/mz;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/q81;-><init>(Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/yl1;Lcom/yandex/mobile/ads/impl/mg1;Lcom/yandex/mobile/ads/impl/mz;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/yl1;Lcom/yandex/mobile/ads/impl/mg1;Lcom/yandex/mobile/ads/impl/mz;)V
    .locals 1

    .line 4
    const-string v0, "adCompleteListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProviderContainer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "progressListener"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "pausableTimer"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "defaultContentDelayProvider"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/q81;->a:Lcom/yandex/mobile/ads/impl/mg1;

    .line 7
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/q81;->b:Lcom/yandex/mobile/ads/impl/mz;

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q81;->c:Lcom/yandex/mobile/ads/impl/k3;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/q81;->d:Lcom/yandex/mobile/ads/impl/yl1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/q81;)Lcom/yandex/mobile/ads/impl/yl1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q81;->d:Lcom/yandex/mobile/ads/impl/yl1;

    return-object p0
.end method

.method public static final b(Lcom/yandex/mobile/ads/impl/q81;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q81;->d:Lcom/yandex/mobile/ads/impl/yl1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/yl1;->a()V

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q81;->c:Lcom/yandex/mobile/ads/impl/k3;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/k3;->b()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q81;->a:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mg1;->invalidate()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q81;->a:Lcom/yandex/mobile/ads/impl/mg1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/mg1;->a(Lcom/yandex/mobile/ads/impl/m52;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/q81;->c:Lcom/yandex/mobile/ads/impl/k3;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/q81;->d:Lcom/yandex/mobile/ads/impl/yl1;

    return-void
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q81;->a:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->pause()V

    return-void
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q81;->a:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->resume()V

    return-void
.end method

.method public final start()V
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/impl/q81$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/q81$a;-><init>(Lcom/yandex/mobile/ads/impl/q81;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q81;->b:Lcom/yandex/mobile/ads/impl/mz;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/mz;->a()J

    move-result-wide v1

    new-instance v3, Lcom/yandex/mobile/ads/impl/q81$b;

    invoke-direct {v3, p0, v1, v2}, Lcom/yandex/mobile/ads/impl/q81$b;-><init>(Lcom/yandex/mobile/ads/impl/q81;J)V

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/q81;->a:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {v4, v3}, Lcom/yandex/mobile/ads/impl/mg1;->a(Lcom/yandex/mobile/ads/impl/m52;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q81;->a:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/mg1;->a(JLcom/yandex/mobile/ads/impl/og1;)V

    return-void
.end method
