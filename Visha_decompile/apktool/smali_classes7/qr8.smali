.class public final Lqr8;
.super Lvec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqr8$a;
    }
.end annotation


# static fields
.field public static final b:Lqr8$a;

.field public static final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqr8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqr8$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lqr8;->b:Lqr8$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lqr8;->c:Ljava/util/List;

    const-class v1, Llw5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lqr8;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Lqr8;->c:Ljava/util/List;

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 0

    sget-object p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->Companion:Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->getSRegionCache()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->ensureCacheLoaded()V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
