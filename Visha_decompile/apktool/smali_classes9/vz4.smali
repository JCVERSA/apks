.class public final Lvz4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvz4$a;
    }
.end annotation


# static fields
.field public static final b:Lvz4;

.field public static final c:Landroidx/collection/LruCache;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lvz4;

    invoke-direct {v0}, Lvz4;-><init>()V

    sput-object v0, Lvz4;->b:Lvz4;

    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lvz4;->c:Landroidx/collection/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lvz4;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvz4;->a:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Info;
    .locals 4

    sget-object v0, Lvz4;->c:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvz4$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {v1}, Lvz4$a;->b(Lvz4$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_1
    invoke-static {v1}, Lvz4$a;->a(Lvz4$a;)Lorg/schabi/newpipe/extractor/Info;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lvz4;
    .locals 1

    sget-object v0, Lvz4;->b:Lvz4;

    return-object v0
.end method

.method public static e(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h()V
    .locals 3

    sget-object v0, Lvz4;->c:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvz4$a;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lvz4$a;->b(Lvz4$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lvz4;->c:Landroidx/collection/LruCache;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object p0, Lvz4;->c:Landroidx/collection/LruCache;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/collection/LruCache;->evictAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Lorg/schabi/newpipe/extractor/Info;
    .locals 0

    sget-object p0, Lvz4;->c:Landroidx/collection/LruCache;

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Lvz4;->e(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvz4;->c(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Info;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V
    .locals 4

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sget-object p0, Lvz4;->c:Landroidx/collection/LruCache;

    monitor-enter p0

    :try_start_0
    new-instance v2, Lvz4$a;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v0, v1, v3}, Lvz4$a;-><init>(Lorg/schabi/newpipe/extractor/Info;JLwz4;)V

    invoke-static {p1, p2, p4}, Lvz4;->e(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V
    .locals 0

    sget-object p0, Lvz4;->c:Landroidx/collection/LruCache;

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Lvz4;->e(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 1

    sget-object p0, Lvz4;->c:Landroidx/collection/LruCache;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lvz4;->h()V

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Landroidx/collection/LruCache;->trimToSize(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
