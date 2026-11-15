.class public Lzv3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzv3$b;,
        Lzv3$a;,
        Lzv3$c;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/Object;

.field public static final l:Ljava/util/Map;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lyw3;

.field public final d:Lxc1;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Lzi5;

.field public final h:Lpj8;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzv3;->k:Ljava/lang/Object;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lzv3;->l:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyw3;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lzv3;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lzv3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lzv3;->i:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lzv3;->j:Ljava/util/List;

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lzv3;->a:Landroid/content/Context;

    invoke-static {p2}, Lwd8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lzv3;->b:Ljava/lang/String;

    invoke-static {p3}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyw3;

    iput-object p2, p0, Lzv3;->c:Lyw3;

    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->b()Ldx9;

    move-result-object p2

    const-string v0, "Firebase"

    invoke-static {v0}, Lzw3;->b(Ljava/lang/String;)V

    const-string v0, "ComponentDiscovery"

    invoke-static {v0}, Lzw3;->b(Ljava/lang/String;)V

    const-class v0, Lcom/google/firebase/components/ComponentDiscoveryService;

    invoke-static {p1, v0}, Lmc1;->c(Landroid/content/Context;Ljava/lang/Class;)Lmc1;

    move-result-object v0

    invoke-virtual {v0}, Lmc1;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lzw3;->a()V

    const-string v2, "Runtime"

    invoke-static {v2}, Lzw3;->b(Ljava/lang/String;)V

    sget-object v2, Lcom/google/firebase/concurrent/UiExecutor;->INSTANCE:Lcom/google/firebase/concurrent/UiExecutor;

    invoke-static {v2}, Lxc1;->k(Ljava/util/concurrent/Executor;)Lxc1$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lxc1$b;->d(Ljava/util/Collection;)Lxc1$b;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {v2}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    invoke-virtual {v0, v2}, Lxc1$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lxc1$b;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/concurrent/ExecutorsRegistrar;

    invoke-direct {v2}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;-><init>()V

    invoke-virtual {v0, v2}, Lxc1$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lxc1$b;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p1, v2, v3}, Lzb1;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lzb1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lxc1$b;->b(Lzb1;)Lxc1$b;

    move-result-object v0

    const-class v2, Lzv3;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p0, v2, v3}, Lzb1;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lzb1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lxc1$b;->b(Lzb1;)Lxc1$b;

    move-result-object v0

    const-class v2, Lyw3;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p3, v2, v3}, Lzb1;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lzb1;

    move-result-object p3

    invoke-virtual {v0, p3}, Lxc1$b;->b(Lzb1;)Lxc1$b;

    move-result-object p3

    new-instance v0, Lqc1;

    invoke-direct {v0}, Lqc1;-><init>()V

    invoke-virtual {p3, v0}, Lxc1$b;->g(Lsc1;)Lxc1$b;

    move-result-object p3

    invoke-static {p1}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ldx9;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2, v0, v1}, Lzb1;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lzb1;

    move-result-object p2

    invoke-virtual {p3, p2}, Lxc1$b;->b(Lzb1;)Lxc1$b;

    :cond_0
    invoke-virtual {p3}, Lxc1$b;->e()Lxc1;

    move-result-object p2

    iput-object p2, p0, Lzv3;->d:Lxc1;

    invoke-static {}, Lzw3;->a()V

    new-instance p3, Lzi5;

    new-instance v0, Lxv3;

    invoke-direct {v0, p0, p1}, Lxv3;-><init>(Lzv3;Landroid/content/Context;)V

    invoke-direct {p3, v0}, Lzi5;-><init>(Lpj8;)V

    iput-object p3, p0, Lzv3;->g:Lzi5;

    const-class p1, Lcom/google/firebase/heartbeatinfo/a;

    invoke-interface {p2, p1}, Lic1;->e(Ljava/lang/Class;)Lpj8;

    move-result-object p1

    iput-object p1, p0, Lzv3;->h:Lpj8;

    new-instance p1, Lyv3;

    invoke-direct {p1, p0}, Lyv3;-><init>(Lzv3;)V

    invoke-virtual {p0, p1}, Lzv3;->g(Lzv3$a;)V

    invoke-static {}, Lzw3;->a()V

    return-void
.end method

.method public static synthetic a(Lzv3;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lzv3;->v(Z)V

    return-void
.end method

.method public static synthetic b(Lzv3;Landroid/content/Context;)Lzr1;
    .locals 0

    invoke-virtual {p0, p1}, Lzv3;->u(Landroid/content/Context;)Lzr1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lzv3;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic d(Lzv3;)V
    .locals 0

    invoke-virtual {p0}, Lzv3;->o()V

    return-void
.end method

.method public static synthetic e(Lzv3;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lzv3;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic f(Lzv3;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lzv3;->x(Z)V

    return-void
.end method

.method public static k()Lzv3;
    .locals 4

    sget-object v0, Lzv3;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzv3;->l:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv3;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lzv3;->h:Lpj8;

    invoke-interface {v2}, Lpj8;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {v2}, Lcom/google/firebase/heartbeatinfo/a;->l()Lxda;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lch8;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static p(Landroid/content/Context;)Lzv3;
    .locals 3

    sget-object v0, Lzv3;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzv3;->l:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lzv3;->k()Lzv3;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lyw3;->a(Landroid/content/Context;)Lyw3;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "FirebaseApp"

    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0, v1}, Lzv3;->q(Landroid/content/Context;Lyw3;)Lzv3;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static q(Landroid/content/Context;Lyw3;)Lzv3;
    .locals 1

    const-string v0, "[DEFAULT]"

    invoke-static {p0, p1, v0}, Lzv3;->r(Landroid/content/Context;Lyw3;Ljava/lang/String;)Lzv3;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/content/Context;Lyw3;Ljava/lang/String;)Lzv3;
    .locals 5

    invoke-static {p0}, Lzv3$b;->b(Landroid/content/Context;)V

    invoke-static {p2}, Lzv3;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    sget-object v0, Lzv3;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzv3;->l:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FirebaseApp name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lwd8;->p(ZLjava/lang/Object;)V

    const-string v2, "Application context cannot be null."

    invoke-static {p0, v2}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lzv3;

    invoke-direct {v2, p0, p2, p1}, Lzv3;-><init>(Landroid/content/Context;Ljava/lang/String;Lyw3;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lzv3;->o()V

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lzv3;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lzv3;->b:Ljava/lang/String;

    check-cast p1, Lzv3;

    invoke-virtual {p1}, Lzv3;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public g(Lzv3$a;)V
    .locals 1

    invoke-virtual {p0}, Lzv3;->h()V

    iget-object v0, p0, Lzv3;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->b()Lcom/google/android/gms/common/api/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lzv3$a;->a(Z)V

    :cond_0
    iget-object p0, p0, Lzv3;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object p0, p0, Lzv3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "FirebaseApp was deleted"

    invoke-static {p0, v0}, Lwd8;->p(ZLjava/lang/Object;)V

    return-void
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lzv3;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public i(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lzv3;->h()V

    iget-object p0, p0, Lzv3;->d:Lxc1;

    invoke-interface {p0, p1}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public j()Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lzv3;->h()V

    iget-object p0, p0, Lzv3;->a:Landroid/content/Context;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lzv3;->h()V

    iget-object p0, p0, Lzv3;->b:Ljava/lang/String;

    return-object p0
.end method

.method public m()Lyw3;
    .locals 0

    invoke-virtual {p0}, Lzv3;->h()V

    iget-object p0, p0, Lzv3;->c:Lyw3;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lzv3;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lh80;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzv3;->m()Lyw3;

    move-result-object p0

    invoke-virtual {p0}, Lyw3;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lh80;->c([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lzv3;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "FirebaseApp"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzv3;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lzv3;->a:Landroid/content/Context;

    invoke-static {p0}, Lzv3$c;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device unlocked: initializing all Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzv3;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzv3;->d:Lxc1;

    invoke-virtual {p0}, Lzv3;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lxc1;->n(Z)V

    iget-object p0, p0, Lzv3;->h:Lpj8;

    invoke-interface {p0}, Lpj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {p0}, Lcom/google/firebase/heartbeatinfo/a;->l()Lxda;

    :goto_0
    return-void
.end method

.method public s()Z
    .locals 0

    invoke-virtual {p0}, Lzv3;->h()V

    iget-object p0, p0, Lzv3;->g:Lzi5;

    invoke-virtual {p0}, Lzi5;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzr1;

    invoke-virtual {p0}, Lzr1;->b()Z

    move-result p0

    return p0
.end method

.method public t()Z
    .locals 1

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0}, Lzv3;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljc7;->c(Ljava/lang/Object;)Ljc7$a;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lzv3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljc7$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljc7$a;

    move-result-object v0

    const-string v1, "options"

    iget-object p0, p0, Lzv3;->c:Lyw3;

    invoke-virtual {v0, v1, p0}, Ljc7$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljc7$a;

    move-result-object p0

    invoke-virtual {p0}, Ljc7$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic u(Landroid/content/Context;)Lzr1;
    .locals 3

    new-instance v0, Lzr1;

    invoke-virtual {p0}, Lzv3;->n()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lzv3;->d:Lxc1;

    const-class v2, Lkk8;

    invoke-interface {p0, v2}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkk8;

    invoke-direct {v0, p1, v1, p0}, Lzr1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkk8;)V

    return-object v0
.end method

.method public final synthetic v(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lzv3;->h:Lpj8;

    invoke-interface {p0}, Lpj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {p0}, Lcom/google/firebase/heartbeatinfo/a;->l()Lxda;

    :cond_0
    return-void
.end method

.method public final x(Z)V
    .locals 2

    const-string v0, "FirebaseApp"

    const-string v1, "Notifying background state change listeners."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lzv3;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzv3$a;

    invoke-interface {v0, p1}, Lzv3$a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
