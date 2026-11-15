.class public Lcom/google/firebase/remoteconfig/internal/m;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final e:Ljava/nio/charset/Charset;

.field static final f:Ljava/util/regex/Pattern;

.field static final g:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/firebase/remoteconfig/internal/e;

.field private final d:Lcom/google/firebase/remoteconfig/internal/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/firebase/remoteconfig/internal/m;->e:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    const-string v0, "^(1|true|t|yes|y|on)$"

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/firebase/remoteconfig/internal/m;->f:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    const-string v0, "^(0|false|f|no|n|off|)$"

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/google/firebase/remoteconfig/internal/m;->g:Ljava/util/regex/Pattern;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->a:Ljava/util/Set;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/m;->b:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/m;->n(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->a:Ljava/util/Set;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->a:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/google/android/gms/common/util/BiConsumer;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/m;->b:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    new-instance v4, Lcom/google/firebase/remoteconfig/internal/l;

    .line 28
    .line 29
    invoke-direct {v4, v2, p1, p2}, Lcom/google/firebase/remoteconfig/internal/l;-><init>(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method private static e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/e;->f()Lcom/google/firebase/remoteconfig/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static f(Lcom/google/firebase/remoteconfig/internal/e;)Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->g()Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method private static h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/TreeSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/f;->g()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method private static j(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->g()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    return-object v0
.end method

.method private static l(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->g()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    return-object v0
.end method

.method private static synthetic n(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/common/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "No value of type \'%s\' exists for parameter key \'%s\'."

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    aput-object p0, v1, p1

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "FirebaseRemoteConfig"

    .line 17
    .line 18
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/util/BiConsumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->a:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->a:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public d()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->f(Lcom/google/firebase/remoteconfig/internal/e;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->f(Lcom/google/firebase/remoteconfig/internal/e;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lcom/google/firebase/remoteconfig/internal/m;->m(Ljava/lang/String;)Lad/k;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-object v1
.end method

.method public g(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/google/firebase/remoteconfig/internal/m;->h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/TreeSet;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {p1, v1}, Lcom/google/firebase/remoteconfig/internal/m;->h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/TreeSet;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    return-object v0
.end method

.method public i(Ljava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->j(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/m;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->j(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    :cond_1
    const-string v0, "Long"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/m;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    return-wide v0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->l(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/m;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->l(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    const-string v0, "String"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/m;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    return-object p1
.end method

.method public m(Ljava/lang/String;)Lad/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->l(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/m;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/t;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/t;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->l(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/t;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/t;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_1
    const-string v0, "FirebaseRemoteConfigValue"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/m;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/t;

    .line 46
    .line 47
    const-string v0, ""

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/t;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    return-object p1
.end method
