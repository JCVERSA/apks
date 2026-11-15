.class public Lbd/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/google/firebase/remoteconfig/internal/e;

.field private b:Lbd/a;

.field private c:Ljava/util/concurrent/Executor;

.field private d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/firebase/remoteconfig/internal/e;Lbd/a;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lbd/e;->d:Ljava/util/Set;

    .line 14
    .line 15
    iput-object p1, p0, Lbd/e;->a:Lcom/google/firebase/remoteconfig/internal/e;

    .line 16
    .line 17
    iput-object p2, p0, Lbd/e;->b:Lbd/a;

    .line 18
    .line 19
    iput-object p3, p0, Lbd/e;->c:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Lbd/e;Lcom/google/android/gms/tasks/Task;Ldd/f;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lbd/e;->f(Lcom/google/android/gms/tasks/Task;Ldd/f;Lcom/google/firebase/remoteconfig/internal/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ldd/f;Ldd/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbd/e;->e(Ldd/f;Ldd/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ldd/f;Ldd/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbd/e;->d(Ldd/f;Ldd/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic d(Ldd/f;Ldd/e;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ldd/f;->a(Ldd/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic e(Ldd/f;Ldd/e;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ldd/f;->a(Ldd/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic f(Lcom/google/android/gms/tasks/Task;Ldd/f;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/firebase/remoteconfig/internal/f;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p3, p0, Lbd/e;->b:Lbd/a;

    .line 10
    .line 11
    invoke-virtual {p3, p1}, Lbd/a;->b(Lcom/google/firebase/remoteconfig/internal/f;)Ldd/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p3, p0, Lbd/e;->c:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    new-instance v0, Lbd/d;

    .line 18
    .line 19
    invoke-direct {v0, p2, p1}, Lbd/d;-><init>(Ldd/f;Ldd/e;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    const-string p2, "FirebaseRemoteConfig"

    .line 28
    .line 29
    const-string p3, "Exception publishing RolloutsState to subscriber. Continuing to listen for changes."

    .line 30
    .line 31
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public g(Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lbd/e;->b:Lbd/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lbd/a;->b(Lcom/google/firebase/remoteconfig/internal/f;)Ldd/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lbd/e;->d:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ldd/f;

    .line 24
    .line 25
    iget-object v2, p0, Lbd/e;->c:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    new-instance v3, Lbd/b;

    .line 28
    .line 29
    invoke-direct {v3, v1, p1}, Lbd/b;-><init>(Ldd/f;Ldd/e;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    const-string v0, "FirebaseRemoteConfig"

    .line 38
    .line 39
    const-string v1, "Exception publishing RolloutsState to subscribers. Continuing to listen for changes."

    .line 40
    .line 41
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public h(Ldd/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbd/e;->d:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lbd/e;->a:Lcom/google/firebase/remoteconfig/internal/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/e;->e()Lcom/google/android/gms/tasks/Task;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lbd/e;->c:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    new-instance v2, Lbd/c;

    .line 15
    .line 16
    invoke-direct {v2, p0, v0, p1}, Lbd/c;-><init>(Lbd/e;Lcom/google/android/gms/tasks/Task;Ldd/f;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 20
    .line 21
    .line 22
    return-void
.end method
