.class public final Lcom/yandex/mobile/ads/impl/m61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g41;

.field private final b:Lcom/yandex/mobile/ads/impl/sj0;

.field private final c:Lcom/yandex/mobile/ads/impl/dc1;

.field private final d:Lcom/yandex/mobile/ads/impl/kj0;

.field private final e:Lcom/yandex/mobile/ads/impl/ek0;

.field private final f:Lcom/yandex/mobile/ads/impl/n41;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/ut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/dc1;)V
    .locals 9

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/kj0;

    invoke-direct {v5, p1}, Lcom/yandex/mobile/ads/impl/kj0;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/ek0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/ek0;-><init>()V

    .line 3
    new-instance v7, Lcom/yandex/mobile/ads/impl/n41;

    invoke-direct {v7, p3}, Lcom/yandex/mobile/ads/impl/n41;-><init>(Lcom/yandex/mobile/ads/impl/sj0;)V

    .line 4
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/m61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/dc1;Lcom/yandex/mobile/ads/impl/kj0;Lcom/yandex/mobile/ads/impl/ek0;Lcom/yandex/mobile/ads/impl/n41;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/dc1;Lcom/yandex/mobile/ads/impl/kj0;Lcom/yandex/mobile/ads/impl/ek0;Lcom/yandex/mobile/ads/impl/n41;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/g41;",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Lcom/yandex/mobile/ads/impl/dc1;",
            "Lcom/yandex/mobile/ads/impl/kj0;",
            "Lcom/yandex/mobile/ads/impl/ek0;",
            "Lcom/yandex/mobile/ads/impl/n41;",
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/ut;",
            ">;)V"
        }
    .end annotation

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAd"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdViewRenderer"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageLoadManager"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageValuesProvider"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdAssetsCreator"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageLoadingListeners"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m61;->a:Lcom/yandex/mobile/ads/impl/g41;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/m61;->b:Lcom/yandex/mobile/ads/impl/sj0;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/m61;->c:Lcom/yandex/mobile/ads/impl/dc1;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/m61;->d:Lcom/yandex/mobile/ads/impl/kj0;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/m61;->e:Lcom/yandex/mobile/ads/impl/ek0;

    .line 13
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/m61;->f:Lcom/yandex/mobile/ads/impl/n41;

    .line 14
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/m61;->g:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/m61;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m61;->g:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/m61;)Lcom/yandex/mobile/ads/impl/sj0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m61;->b:Lcom/yandex/mobile/ads/impl/sj0;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/m61;)Lcom/yandex/mobile/ads/impl/dc1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m61;->c:Lcom/yandex/mobile/ads/impl/dc1;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/rt;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m61;->f:Lcom/yandex/mobile/ads/impl/n41;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m61;->a:Lcom/yandex/mobile/ads/impl/g41;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/n41;->a(Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/rt;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ut;)V
    .locals 1

    .line 2
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m61;->g:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/gr1;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m61;->a:Lcom/yandex/mobile/ads/impl/g41;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g41;->g()Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/ut;)V
    .locals 1

    .line 3
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m61;->g:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m61;->a:Lcom/yandex/mobile/ads/impl/g41;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g41;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m61;->a:Lcom/yandex/mobile/ads/impl/g41;

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m61;->e:Lcom/yandex/mobile/ads/impl/ek0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "nativeAds"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/g41;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/g41;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/g41;->e()Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/yandex/mobile/ads/impl/ek0;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/vr0;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lz71;->x(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m61;->d:Lcom/yandex/mobile/ads/impl/kj0;

    new-instance v2, Lcom/yandex/mobile/ads/impl/m61$a;

    invoke-direct {v2, p0}, Lcom/yandex/mobile/ads/impl/m61$a;-><init>(Lcom/yandex/mobile/ads/impl/m61;)V

    invoke-virtual {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/kj0;->a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/gk0;)V

    return-void
.end method
