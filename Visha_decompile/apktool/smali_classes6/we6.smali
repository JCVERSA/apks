.class public final Lwe6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwe6$a;
    }
.end annotation


# static fields
.field public static final a:Lwe6$a;

.field public static final b:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwe6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwe6$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lwe6;->a:Lwe6$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lve6;

    invoke-direct {v1}, Lve6;-><init>()V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lwe6;->b:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lwe6;
    .locals 1

    invoke-static {}, Lwe6;->o()Lwe6;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()Lyi5;
    .locals 1

    sget-object v0, Lwe6;->b:Lyi5;

    return-object v0
.end method

.method public static final e()Lwe6;
    .locals 1

    sget-object v0, Lwe6;->a:Lwe6$a;

    invoke-virtual {v0}, Lwe6$a;->a()Lwe6;

    move-result-object v0

    return-object v0
.end method

.method public static final i()V
    .locals 1

    sget-object v0, Lwe6;->a:Lwe6$a;

    invoke-virtual {v0}, Lwe6$a;->c()V

    return-void
.end method

.method public static final o()Lwe6;
    .locals 1

    new-instance v0, Lwe6;

    invoke-direct {v0}, Lwe6;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)Ljava/util/List;
    .locals 0

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lf82;->a:Lf82;

    invoke-virtual {p0, p1, p2}, Lf82;->b(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I
    .locals 0

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lf82;->a:Lf82;

    invoke-virtual {p0, p1, p2}, Lf82;->c(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    return p0
.end method

.method public final f(Landroid/content/Context;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lge6;->a:Lge6;

    invoke-virtual {p0, p1}, Lge6;->n(Landroid/content/Context;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->init()V

    return-void
.end method

.method public g(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)Ljava/util/List;
    .locals 0

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ld15;->a:Ld15;

    invoke-virtual {p0, p1, p2}, Ld15;->c(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I
    .locals 0

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ld15;->a:Ld15;

    invoke-virtual {p0, p1, p2}, Ld15;->d(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    return p0
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->isAudioFavorite(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final k(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z
    .locals 0

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->isRecentAdd(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public final l(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z
    .locals 0

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->isRecentAddOther(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->isVideoFavorite(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final n()V
    .locals 0

    sget-object p0, Lge6;->a:Lge6;

    invoke-virtual {p0}, Lge6;->t()V

    return-void
.end method

.method public p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;
    .locals 0

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lwl8;->a:Lwl8;

    invoke-virtual {p0, p1, p2}, Lwl8;->e(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;
    .locals 0

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lwl8;->a:Lwl8;

    invoke-virtual {p0, p1, p2}, Lwl8;->f(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;
    .locals 0

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lwl8;->a:Lwl8;

    invoke-virtual {p0, p1, p2}, Lwl8;->g(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final s(IZ)V
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->recordPreviewedId(IZ)V

    return-void
.end method

.method public final t(Ljava/util/List;Z)V
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->recordPreviewedId(Ljava/util/List;Z)V

    return-void
.end method

.method public u(Lcom/transsion/dbdata/source/DataSourceScope;Lahb;)I
    .locals 0

    const-string p0, "scope"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lzgb;->a:Lzgb;

    invoke-virtual {p0, p1, p2}, Lzgb;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lahb;)I

    move-result p0

    return p0
.end method
