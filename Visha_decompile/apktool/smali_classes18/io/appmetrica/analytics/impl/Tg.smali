.class public final Lio/appmetrica/analytics/impl/Tg;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/le;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

.field public final d:Lio/appmetrica/analytics/impl/I2;

.field public final e:Lio/appmetrica/analytics/impl/g2;

.field public final f:Lio/appmetrica/analytics/impl/B2;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/le;)V
    .locals 9

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/X1;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/tm;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/tm;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/impl/I2;

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lio/appmetrica/analytics/impl/I2;-><init>(Landroid/content/Context;)V

    new-instance v7, Lio/appmetrica/analytics/impl/g2;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/g2;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/B2;

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lio/appmetrica/analytics/impl/B2;-><init>(Landroid/content/Context;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 5
    invoke-direct/range {v2 .. v8}, Lio/appmetrica/analytics/impl/Tg;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/le;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/I2;Lio/appmetrica/analytics/impl/g2;Lio/appmetrica/analytics/impl/B2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/le;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/I2;Lio/appmetrica/analytics/impl/g2;Lio/appmetrica/analytics/impl/B2;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    .line 7
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Tg;->b:Lio/appmetrica/analytics/impl/le;

    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Tg;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 9
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Tg;->d:Lio/appmetrica/analytics/impl/I2;

    .line 10
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Tg;->e:Lio/appmetrica/analytics/impl/g2;

    .line 11
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Tg;->f:Lio/appmetrica/analytics/impl/B2;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 12
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/f5;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/f5;->toString()Ljava/lang/String;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/m5;->t:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Un;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/m5;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tg;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    invoke-interface {v1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/X1;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/X1;->a:Ljava/util/List;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/X1;->b:Lio/appmetrica/analytics/impl/H2;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Tg;->d:Lio/appmetrica/analytics/impl/I2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x1c

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v4, Lio/appmetrica/analytics/impl/I2;->a:Landroid/content/Context;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/I2;->b:Lio/appmetrica/analytics/impl/g2;

    invoke-static {v5, v4}, Lio/appmetrica/analytics/impl/E2;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/g2;)Lio/appmetrica/analytics/impl/H2;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    iget-object v5, v1, Lio/appmetrica/analytics/impl/X1;->c:Ljava/util/List;

    iget-object v7, p0, Lio/appmetrica/analytics/impl/Tg;->f:Lio/appmetrica/analytics/impl/B2;

    iget-object v7, v7, Lio/appmetrica/analytics/impl/B2;->a:Landroid/location/LocationManager;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lio/appmetrica/analytics/impl/A2;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/A2;-><init>()V

    const-string v10, "getting available providers"

    const-string v11, "location manager"

    invoke-static {v7, v10, v11, v8, v9}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceSafelyOrDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget-object v8, p0, Lio/appmetrica/analytics/impl/Tg;->b:Lio/appmetrica/analytics/impl/le;

    iget-object v9, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v9, v9, Lio/appmetrica/analytics/impl/m5;->a:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lio/appmetrica/analytics/impl/Fi;

    new-instance v10, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v10}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-direct {v8, v9, v10}, Lio/appmetrica/analytics/impl/Fi;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/Fi;->a()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8, v2}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->areCollectionsEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v8, v6

    :cond_1
    if-nez v8, :cond_2

    invoke-static {v3, v4}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5, v7}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->areCollectionsEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Lio/appmetrica/analytics/impl/X1;

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v8

    :goto_1
    invoke-direct {v6, v2, v4, v7}, Lio/appmetrica/analytics/impl/X1;-><init>(Ljava/util/List;Lio/appmetrica/analytics/impl/H2;Ljava/util/List;)V

    :goto_2
    if-nez v6, :cond_4

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/m5;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/X1;->a:Ljava/util/List;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/X1;->b:Lio/appmetrica/analytics/impl/H2;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Tg;->e:Lio/appmetrica/analytics/impl/g2;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/X1;->c:Ljava/util/List;

    invoke-static {p1, v2, v3, p0, v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Ljava/util/Collection;Lio/appmetrica/analytics/impl/H2;Lio/appmetrica/analytics/impl/g2;Ljava/util/List;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    iget-object p1, v0, Lio/appmetrica/analytics/impl/q9;->c:Lio/appmetrica/analytics/impl/vk;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/impl/vk;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;

    move-result-object p1

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {p1, v1, v2}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;J)Lio/appmetrica/analytics/impl/xk;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    iget-object p0, v0, Lio/appmetrica/analytics/impl/q9;->j:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeSeconds()J

    move-result-wide p0

    iput-wide p0, v0, Lio/appmetrica/analytics/impl/q9;->l:J

    iget-object v0, v0, Lio/appmetrica/analytics/impl/q9;->a:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/Le;->a(J)Lio/appmetrica/analytics/impl/Le;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    iget-object v1, v6, Lio/appmetrica/analytics/impl/X1;->a:Ljava/util/List;

    iget-object v2, v6, Lio/appmetrica/analytics/impl/X1;->b:Lio/appmetrica/analytics/impl/H2;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Tg;->e:Lio/appmetrica/analytics/impl/g2;

    iget-object v4, v6, Lio/appmetrica/analytics/impl/X1;->c:Ljava/util/List;

    invoke-static {p1, v1, v2, v3, v4}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Ljava/util/Collection;Lio/appmetrica/analytics/impl/H2;Lio/appmetrica/analytics/impl/g2;Ljava/util/List;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    iget-object v1, v0, Lio/appmetrica/analytics/impl/q9;->c:Lio/appmetrica/analytics/impl/vk;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/vk;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;

    move-result-object v1

    iget-wide v2, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {v1, v2, v3}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;J)Lio/appmetrica/analytics/impl/xk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    iget-object p1, v0, Lio/appmetrica/analytics/impl/q9;->j:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {p1}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeSeconds()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/q9;->l:J

    iget-object p1, v0, Lio/appmetrica/analytics/impl/q9;->a:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {p1, v1, v2}, Lio/appmetrica/analytics/impl/Le;->a(J)Lio/appmetrica/analytics/impl/Le;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Me;->b()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Tg;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    invoke-interface {p0, v6}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return p0
.end method
