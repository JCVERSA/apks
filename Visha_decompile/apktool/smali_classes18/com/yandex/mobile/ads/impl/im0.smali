.class public final Lcom/yandex/mobile/ads/impl/im0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/im0$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/mobile/ads/impl/im0$a;

.field private static volatile d:Lcom/yandex/mobile/ads/impl/im0;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/yandex/mobile/ads/impl/kt;",
            "Lcom/yandex/mobile/ads/impl/h82;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/im0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/im0$a;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/im0;->c:Lcom/yandex/mobile/ads/impl/im0$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/im0;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/im0;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/im0;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/im0;
    .locals 1

    .line 10
    sget-object v0, Lcom/yandex/mobile/ads/impl/im0;->d:Lcom/yandex/mobile/ads/impl/im0;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/im0;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/im0;->d:Lcom/yandex/mobile/ads/impl/im0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/kt;)Lcom/yandex/mobile/ads/impl/h82;
    .locals 1

    .line 2
    const-string v0, "instreamAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/im0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/im0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/h82;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/kt;Lcom/yandex/mobile/ads/impl/h82;)V
    .locals 1

    .line 4
    const-string v0, "instreamAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/im0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/im0;->b:Ljava/util/WeakHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    throw p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/kt;)V
    .locals 1

    const-string v0, "instreamAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/im0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/im0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/h82;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
