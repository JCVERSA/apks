.class public final Landroidx/datastore/core/MulticastFileObserver$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/MulticastFileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J1\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0018\u0010\n\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\tH\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000f2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0008H\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0003R,\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00140\u00138\u0000X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u0012\u0004\u0008\u0019\u0010\u0003\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/datastore/core/MulticastFileObserver$Companion;",
        "",
        "<init>",
        "()V",
        "Ljava/io/File;",
        "parent",
        "Lkotlin/Function1;",
        "",
        "Lzfb;",
        "Landroidx/datastore/core/FileMoveObserver;",
        "observer",
        "Luc2;",
        "observe",
        "(Ljava/io/File;Le74;)Luc2;",
        "file",
        "Lnz3;",
        "(Ljava/io/File;)Lnz3;",
        "removeAllObservers$datastore_core_release",
        "removeAllObservers",
        "",
        "Landroidx/datastore/core/MulticastFileObserver;",
        "fileObservers",
        "Ljava/util/Map;",
        "getFileObservers$datastore_core_release",
        "()Ljava/util/Map;",
        "getFileObservers$datastore_core_release$annotations",
        "LOCK",
        "Ljava/lang/Object;",
        "datastore-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/core/MulticastFileObserver$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Le74;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/datastore/core/MulticastFileObserver$Companion;->observe$lambda$4(Ljava/lang/String;Le74;)V

    return-void
.end method

.method public static final synthetic access$observe(Landroidx/datastore/core/MulticastFileObserver$Companion;Ljava/io/File;Le74;)Luc2;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/MulticastFileObserver$Companion;->observe(Ljava/io/File;Le74;)Luc2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getFileObservers$datastore_core_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final observe(Ljava/io/File;Le74;)Luc2;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Le74;",
            ")",
            "Luc2;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getLOCK$cp()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object v0, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v0}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core_release()Ljava/util/Map;

    move-result-object v0

    const-string v1, "key"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Landroidx/datastore/core/MulticastFileObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/datastore/core/MulticastFileObserver;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    check-cast v1, Landroidx/datastore/core/MulticastFileObserver;

    .line 9
    invoke-static {v1}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v1}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 11
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 12
    :cond_1
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p1

    .line 14
    new-instance p1, Lzs6;

    invoke-direct {p1, p0, p2}, Lzs6;-><init>(Ljava/lang/String;Le74;)V

    return-object p1

    .line 15
    :goto_1
    monitor-exit p1

    throw p0
.end method

.method private static final observe$lambda$4(Ljava/lang/String;Le74;)V
    .locals 4

    const-string v0, "$observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getLOCK$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v1}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core_release()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/core/MulticastFileObserver;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v2}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core_release()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getFileObservers$datastore_core_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/datastore/core/MulticastFileObserver;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getFileObservers$cp()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final observe(Ljava/io/File;)Lnz3;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lnz3;"
        }
    .end annotation

    const-string p0, "file"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1;-><init>(Ljava/io/File;Lwh1;)V

    invoke-static {p0}, Lsz3;->e(Ls74;)Lnz3;

    move-result-object p0

    return-object p0
.end method

.method public final removeAllObservers$datastore_core_release()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getLOCK$cp()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v0}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/core/MulticastFileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v0}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core_release()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
