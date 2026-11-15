.class public final Lcom/yandex/mobile/ads/impl/cp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/qo2;
.implements Lcom/yandex/mobile/ads/impl/go2$a;


# static fields
.field private static f:Lcom/yandex/mobile/ads/impl/cp2;


# instance fields
.field private a:F

.field private final b:Lcom/yandex/mobile/ads/impl/zo2;

.field private final c:Lcom/yandex/mobile/ads/impl/fo2;

.field private d:Lcom/yandex/mobile/ads/impl/uo2;

.field private e:Lcom/yandex/mobile/ads/impl/wn2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zo2;Lcom/yandex/mobile/ads/impl/fo2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/cp2;->a:F

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cp2;->b:Lcom/yandex/mobile/ads/impl/zo2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/cp2;->c:Lcom/yandex/mobile/ads/impl/fo2;

    return-void
.end method

.method public static a()Lcom/yandex/mobile/ads/impl/cp2;
    .locals 3

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/cp2;->f:Lcom/yandex/mobile/ads/impl/cp2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/fo2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/fo2;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/zo2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/zo2;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/cp2;

    invoke-direct {v2, v1, v0}, Lcom/yandex/mobile/ads/impl/cp2;-><init>(Lcom/yandex/mobile/ads/impl/zo2;Lcom/yandex/mobile/ads/impl/fo2;)V

    sput-object v2, Lcom/yandex/mobile/ads/impl/cp2;->f:Lcom/yandex/mobile/ads/impl/cp2;

    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/cp2;->f:Lcom/yandex/mobile/ads/impl/cp2;

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/yandex/mobile/ads/impl/cp2;->a:F

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cp2;->e:Lcom/yandex/mobile/ads/impl/wn2;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/wn2;->a()Lcom/yandex/mobile/ads/impl/wn2;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/cp2;->e:Lcom/yandex/mobile/ads/impl/wn2;

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cp2;->e:Lcom/yandex/mobile/ads/impl/wn2;

    .line 4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wn2;->c()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/vn2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vn2;->j()Lcom/yandex/mobile/ads/impl/g9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/g9;->a(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cp2;->c:Lcom/yandex/mobile/ads/impl/fo2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/do2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/do2;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/cp2;->b:Lcom/yandex/mobile/ads/impl/zo2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lcom/yandex/mobile/ads/impl/uo2;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/yandex/mobile/ads/impl/uo2;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/do2;Lcom/yandex/mobile/ads/impl/qo2;)V

    .line 9
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/cp2;->d:Lcom/yandex/mobile/ads/impl/uo2;

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/go2;->a()Lcom/yandex/mobile/ads/impl/go2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/go2;->a(Lcom/yandex/mobile/ads/impl/go2$a;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/go2;->a()Lcom/yandex/mobile/ads/impl/go2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/go2;->b()V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/g72;->g()Lcom/yandex/mobile/ads/impl/g72;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/g72;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cp2;->d:Lcom/yandex/mobile/ads/impl/uo2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/uo2;->a()V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/g72;->g()Lcom/yandex/mobile/ads/impl/g72;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g72;->b()V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/go2;->a()Lcom/yandex/mobile/ads/impl/go2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/go2;->c()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cp2;->d:Lcom/yandex/mobile/ads/impl/uo2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/uo2;->b()V

    return-void
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/cp2;->a:F

    return p0
.end method
