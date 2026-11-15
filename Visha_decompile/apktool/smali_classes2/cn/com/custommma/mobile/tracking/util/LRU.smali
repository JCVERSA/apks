.class public Lcn/com/custommma/mobile/tracking/util/LRU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/LinkedHashMap;

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/com/custommma/mobile/tracking/util/LRU;->b:I

    new-instance v6, Lcn/com/custommma/mobile/tracking/util/LRU$1;

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    const/16 v2, 0x10

    move-object v0, v6

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/com/custommma/mobile/tracking/util/LRU$1;-><init>(Lcn/com/custommma/mobile/tracking/util/LRU;IFZI)V

    iput-object v6, p0, Lcn/com/custommma/mobile/tracking/util/LRU;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static synthetic a(Lcn/com/custommma/mobile/tracking/util/LRU;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/LRU;->a:Ljava/util/LinkedHashMap;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/util/LRU;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/util/LRU;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/util/LRU;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
