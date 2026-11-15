.class public final Lcom/yandex/mobile/ads/impl/e91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yc0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/e91$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yl1;

.field private final b:Lcom/yandex/mobile/ads/impl/mg1;

.field private final c:Lcom/yandex/mobile/ads/impl/xl1;

.field private final d:Lcom/yandex/mobile/ads/impl/z1;

.field private final e:Lcom/yandex/mobile/ads/impl/mz;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yl1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/mg1;Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;Lcom/yandex/mobile/ads/impl/mz;)V
    .locals 1

    const-string v0, "progressListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProviderContainer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "pausableTimer"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "progressIncrementer"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adBlockDurationProvider"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "defaultContentDelayProvider"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e91;->a:Lcom/yandex/mobile/ads/impl/yl1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/e91;->b:Lcom/yandex/mobile/ads/impl/mg1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/e91;->c:Lcom/yandex/mobile/ads/impl/xl1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/e91;->d:Lcom/yandex/mobile/ads/impl/z1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/e91;->e:Lcom/yandex/mobile/ads/impl/mz;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/e91;)Lcom/yandex/mobile/ads/impl/z1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e91;->d:Lcom/yandex/mobile/ads/impl/z1;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/e91;)Lcom/yandex/mobile/ads/impl/mz;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e91;->e:Lcom/yandex/mobile/ads/impl/mz;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/e91;)Lcom/yandex/mobile/ads/impl/xl1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e91;->c:Lcom/yandex/mobile/ads/impl/xl1;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/e91;)Lcom/yandex/mobile/ads/impl/yl1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e91;->a:Lcom/yandex/mobile/ads/impl/yl1;

    return-object p0
.end method


# virtual methods
.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e91;->b:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->invalidate()V

    return-void
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e91;->b:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->pause()V

    return-void
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e91;->b:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->resume()V

    return-void
.end method

.method public final start()V
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/e91$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/e91$a;-><init>(Lcom/yandex/mobile/ads/impl/e91;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e91;->e:Lcom/yandex/mobile/ads/impl/mz;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/mz;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/e91;->b:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {v3, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/mg1;->a(JLcom/yandex/mobile/ads/impl/og1;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e91;->b:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/mg1;->a(Lcom/yandex/mobile/ads/impl/m52;)V

    return-void
.end method
