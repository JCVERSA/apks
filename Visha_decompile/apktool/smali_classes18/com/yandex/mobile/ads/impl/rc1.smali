.class public final Lcom/yandex/mobile/ads/impl/rc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/vr0;

.field private final e:Lcom/yandex/mobile/ads/impl/ek0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Ljava/util/List;Lcom/yandex/mobile/ads/impl/vr0;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/ek0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/ek0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/rc1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Ljava/util/List;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/ek0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Ljava/util/List;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/ek0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;",
            "Lcom/yandex/mobile/ads/impl/vr0;",
            "Lcom/yandex/mobile/ads/impl/ek0;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageValuesProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rc1;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rc1;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/rc1;->c:Ljava/util/List;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/rc1;->d:Lcom/yandex/mobile/ads/impl/vr0;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/rc1;->e:Lcom/yandex/mobile/ads/impl/ek0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rc1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rc1;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rc1;->e:Lcom/yandex/mobile/ads/impl/ek0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rc1;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rc1;->d:Lcom/yandex/mobile/ads/impl/vr0;

    invoke-virtual {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/ek0;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/vr0;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/xj0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xj0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
