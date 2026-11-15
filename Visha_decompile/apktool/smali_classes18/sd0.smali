.class public Lsd0;
.super Leq6;
.source "SourceFile"


# static fields
.field public static synthetic h:Ljava/lang/Class;


# instance fields
.field public final d:Ljava/util/Map;

.field public final e:Z

.field public final f:Ljava/util/Set;

.field public final g:Lfreemarker/ext/beans/b;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/b;)V
    .locals 1

    invoke-direct {p0}, Leq6;-><init>()V

    invoke-static {}, Lc0d;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsd0;->d:Ljava/util/Map;

    invoke-static {v0}, Lc0d;->b(Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Lsd0;->e:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsd0;->f:Ljava/util/Set;

    iput-object p1, p0, Lsd0;->g:Lfreemarker/ext/beans/b;

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Lzfa;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-boolean v1, p0, Lsd0;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsd0;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfq6;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    iget-object v2, p0, Lsd0;->d:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lsd0;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfq6;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lsd0;->f:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lsd0;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lsd0;->f:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, p0, Lsd0;->f:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, p0, Lsd0;->g:Lfreemarker/ext/beans/b;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/b;->v(Ljava/lang/Class;)Lfq6;

    move-result-object v1

    iget-object v3, p0, Lsd0;->d:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    iget-object p0, p0, Lsd0;->g:Lfreemarker/ext/beans/b;

    invoke-interface {v1, p1, p0}, Lfq6;->a(Ljava/lang/Object;Lgc7;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object p1, Lsd0;->h:Ljava/lang/Class;

    if-nez p1, :cond_0

    const-string p1, "java.lang.Boolean"

    invoke-static {p1}, Lsd0;->h(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lsd0;->h:Ljava/lang/Class;

    :cond_0
    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
