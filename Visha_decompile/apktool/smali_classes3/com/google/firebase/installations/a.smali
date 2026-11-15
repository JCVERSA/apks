.class public Lcom/google/firebase/installations/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkw3;


# static fields
.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final a:Lzv3;

.field public final b:Lcom/google/firebase/installations/remote/c;

.field public final c:Lcom/google/firebase/installations/local/PersistedInstallation;

.field public final d:Lvlb;

.field public final e:Lzi5;

.field public final f:Lpn8;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/Executor;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Set;

.field public final l:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/installations/a$a;

    invoke-direct {v0}, Lcom/google/firebase/installations/a$a;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/a;->n:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lzv3;Lcom/google/firebase/installations/remote/c;Lcom/google/firebase/installations/local/PersistedInstallation;Lvlb;Lzi5;Lpn8;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/a;->k:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/List;

    .line 9
    iput-object p3, p0, Lcom/google/firebase/installations/a;->a:Lzv3;

    .line 10
    iput-object p4, p0, Lcom/google/firebase/installations/a;->b:Lcom/google/firebase/installations/remote/c;

    .line 11
    iput-object p5, p0, Lcom/google/firebase/installations/a;->c:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 12
    iput-object p6, p0, Lcom/google/firebase/installations/a;->d:Lvlb;

    .line 13
    iput-object p7, p0, Lcom/google/firebase/installations/a;->e:Lzi5;

    .line 14
    iput-object p8, p0, Lcom/google/firebase/installations/a;->f:Lpn8;

    .line 15
    iput-object p1, p0, Lcom/google/firebase/installations/a;->h:Ljava/util/concurrent/ExecutorService;

    .line 16
    iput-object p2, p0, Lcom/google/firebase/installations/a;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lzv3;Lpj8;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 9

    .line 1
    new-instance v4, Lcom/google/firebase/installations/remote/c;

    .line 2
    invoke-virtual {p1}, Lzv3;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p2}, Lcom/google/firebase/installations/remote/c;-><init>(Landroid/content/Context;Lpj8;)V

    new-instance v5, Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-direct {v5, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;-><init>(Lzv3;)V

    .line 3
    invoke-static {}, Lvlb;->c()Lvlb;

    move-result-object v6

    new-instance v7, Lzi5;

    new-instance p2, Lgw3;

    invoke-direct {p2, p1}, Lgw3;-><init>(Lzv3;)V

    invoke-direct {v7, p2}, Lzi5;-><init>(Lpj8;)V

    new-instance v8, Lpn8;

    invoke-direct {v8}, Lpn8;-><init>()V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/installations/a;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lzv3;Lcom/google/firebase/installations/remote/c;Lcom/google/firebase/installations/local/PersistedInstallation;Lvlb;Lzi5;Lpn8;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/installations/a;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->x(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/installations/a;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->v(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/installations/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->w()V

    return-void
.end method

.method public static synthetic e(Lzv3;)Lsx4;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/a;->y(Lzv3;)Lsx4;

    move-result-object p0

    return-object p0
.end method

.method public static p()Lcom/google/firebase/installations/a;
    .locals 1

    invoke-static {}, Lzv3;->k()Lzv3;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/a;->q(Lzv3;)Lcom/google/firebase/installations/a;

    move-result-object v0

    return-object v0
.end method

.method public static q(Lzv3;)Lcom/google/firebase/installations/a;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null is not a valid value of FirebaseApp."

    invoke-static {v0, v1}, Lwd8;->b(ZLjava/lang/Object;)V

    const-class v0, Lkw3;

    invoke-virtual {p0, v0}, Lzv3;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/installations/a;

    return-object p0
.end method

.method public static synthetic y(Lzv3;)Lsx4;
    .locals 1

    new-instance v0, Lsx4;

    invoke-direct {v0, p0}, Lsx4;-><init>(Lzv3;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lcom/google/firebase/installations/local/b;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Lzv3;

    invoke-virtual {v0}, Lzv3;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Lzv3;

    invoke-virtual {v0}, Lzv3;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->m()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/google/firebase/installations/a;->f:Lpn8;

    invoke-virtual {p0}, Lpn8;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->o()Lsx4;

    move-result-object p1

    invoke-virtual {p1}, Lsx4;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/firebase/installations/a;->f:Lpn8;

    invoke-virtual {p0}, Lpn8;->a()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final B(Lcom/google/firebase/installations/local/b;)Lcom/google/firebase/installations/local/b;
    .locals 9

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->o()Lsx4;

    move-result-object v0

    invoke-virtual {v0}, Lsx4;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/google/firebase/installations/a;->b:Lcom/google/firebase/installations/remote/c;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/installations/remote/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a$b;->a:[I

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->e()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p0, 0x2

    if-ne v1, p0, :cond_1

    const-string p0, "BAD CONFIG"

    invoke-virtual {p1, p0}, Lcom/google/firebase/installations/local/b;->q(Ljava/lang/String;)Lcom/google/firebase/installations/local/b;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string p1, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw p0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->d()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/google/firebase/installations/a;->d:Lvlb;

    invoke-virtual {p0}, Lvlb;->b()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->b()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/installations/remote/TokenResult;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->b()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/installations/remote/TokenResult;->d()J

    move-result-wide v7

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/firebase/installations/local/b;->s(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/google/firebase/installations/local/b;

    move-result-object p0

    return-object p0
.end method

.method public final C(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljx9;

    invoke-interface {v1, p1}, Ljx9;->a(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final D(Lcom/google/firebase/installations/local/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljx9;

    invoke-interface {v1, p1}, Ljx9;->b(Lcom/google/firebase/installations/local/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized E(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/installations/a;->j:Ljava/lang/String;
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

.method public final declared-synchronized F(Lcom/google/firebase/installations/local/b;Lcom/google/firebase/installations/local/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/a;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/firebase/installations/local/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/installations/a;->k:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/firebase/installations/local/b;->d()Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Z)Lxda;
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->z()V

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->f()Lxda;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/a;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ljw3;

    invoke-direct {v2, p0, p1}, Ljw3;-><init>(Lcom/google/firebase/installations/a;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final f()Lxda;
    .locals 3

    new-instance v0, Lzda;

    invoke-direct {v0}, Lzda;-><init>()V

    new-instance v1, Lpe4;

    iget-object v2, p0, Lcom/google/firebase/installations/a;->d:Lvlb;

    invoke-direct {v1, v2, v0}, Lpe4;-><init>(Lvlb;Lzda;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/installations/a;->h(Ljx9;)V

    invoke-virtual {v0}, Lzda;->a()Lxda;

    move-result-object p0

    return-object p0
.end method

.method public final g()Lxda;
    .locals 2

    new-instance v0, Lzda;

    invoke-direct {v0}, Lzda;-><init>()V

    new-instance v1, Ltf4;

    invoke-direct {v1, v0}, Ltf4;-><init>(Lzda;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/installations/a;->h(Ljx9;)V

    invoke-virtual {v0}, Lzda;->a()Lxda;

    move-result-object p0

    return-object p0
.end method

.method public getId()Lxda;
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->z()V

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/tasks/a;->e(Ljava/lang/Object;)Lxda;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->g()Lxda;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/a;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lhw3;

    invoke-direct {v2, p0}, Lhw3;-><init>(Lcom/google/firebase/installations/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final h(Ljx9;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->r()Lcom/google/firebase/installations/local/b;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/b;->i()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/firebase/installations/local/b;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/installations/a;->d:Lvlb;

    invoke-virtual {p1, v0}, Lvlb;->f(Lcom/google/firebase/installations/local/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->k(Lcom/google/firebase/installations/local/b;)Lcom/google/firebase/installations/local/b;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->B(Lcom/google/firebase/installations/local/b;)Lcom/google/firebase/installations/local/b;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->u(Lcom/google/firebase/installations/local/b;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/installations/a;->F(Lcom/google/firebase/installations/local/b;Lcom/google/firebase/installations/local/b;)V

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->E(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {p1, v0}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->C(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->C(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->D(Lcom/google/firebase/installations/local/b;)V

    :goto_3
    return-void

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->C(Ljava/lang/Exception;)V

    return-void
.end method

.method public final j(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->s()Lcom/google/firebase/installations/local/b;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/installations/local/b;->p()Lcom/google/firebase/installations/local/b;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->D(Lcom/google/firebase/installations/local/b;)V

    iget-object v0, p0, Lcom/google/firebase/installations/a;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Liw3;

    invoke-direct {v1, p0, p1}, Liw3;-><init>(Lcom/google/firebase/installations/a;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Lcom/google/firebase/installations/local/b;)Lcom/google/firebase/installations/local/b;
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/installations/a;->b:Lcom/google/firebase/installations/remote/c;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/installations/remote/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a$b;->b:[I

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->b()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->E(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/b;->r()Lcom/google/firebase/installations/local/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string p1, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw p0

    :cond_1
    const-string p0, "BAD CONFIG"

    invoke-virtual {p1, p0}, Lcom/google/firebase/installations/local/b;->q(Ljava/lang/String;)Lcom/google/firebase/installations/local/b;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->d()J

    move-result-wide v2

    iget-object p0, p0, Lcom/google/firebase/installations/a;->d:Lvlb;

    invoke-virtual {p0}, Lvlb;->b()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/installations/local/b;->o(Ljava/lang/String;JJ)Lcom/google/firebase/installations/local/b;

    move-result-object p0

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/installations/a;->a:Lzv3;

    invoke-virtual {p0}, Lzv3;->m()Lyw3;

    move-result-object p0

    invoke-virtual {p0}, Lyw3;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/installations/a;->a:Lzv3;

    invoke-virtual {p0}, Lzv3;->m()Lyw3;

    move-result-object p0

    invoke-virtual {p0}, Lyw3;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized n()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/a;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final o()Lsx4;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/installations/a;->e:Lzi5;

    invoke-virtual {p0}, Lzi5;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsx4;

    return-object p0
.end method

.method public final r()Lcom/google/firebase/installations/local/b;
    .locals 3

    sget-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a;->a:Lzv3;

    invoke-virtual {v1}, Lzv3;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lrl1;->a(Landroid/content/Context;Ljava/lang/String;)Lrl1;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/google/firebase/installations/a;->c:Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-virtual {p0}, Lcom/google/firebase/installations/local/PersistedInstallation;->d()Lcom/google/firebase/installations/local/b;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lrl1;->b()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrl1;->b()V

    :cond_1
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final s()Lcom/google/firebase/installations/local/b;
    .locals 4

    sget-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a;->a:Lzv3;

    invoke-virtual {v1}, Lzv3;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lrl1;->a(Landroid/content/Context;Ljava/lang/String;)Lrl1;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/a;->c:Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->d()Lcom/google/firebase/installations/local/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/local/b;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/firebase/installations/a;->A(Lcom/google/firebase/installations/local/b;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/google/firebase/installations/a;->c:Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/local/b;->t(Ljava/lang/String;)Lcom/google/firebase/installations/local/b;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->b(Lcom/google/firebase/installations/local/b;)Lcom/google/firebase/installations/local/b;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lrl1;->b()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lrl1;->b()V

    :cond_2
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public t()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/installations/a;->a:Lzv3;

    invoke-virtual {p0}, Lzv3;->m()Lyw3;

    move-result-object p0

    invoke-virtual {p0}, Lyw3;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lcom/google/firebase/installations/local/b;)V
    .locals 3

    sget-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a;->a:Lzv3;

    invoke-virtual {v1}, Lzv3;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lrl1;->a(Landroid/content/Context;Ljava/lang/String;)Lrl1;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/google/firebase/installations/a;->c:Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;->b(Lcom/google/firebase/installations/local/b;)Lcom/google/firebase/installations/local/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lrl1;->b()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrl1;->b()V

    :cond_1
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final synthetic v(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->i(Z)V

    return-void
.end method

.method public final synthetic w()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->j(Z)V

    return-void
.end method

.method public final synthetic x(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->j(Z)V

    return-void
.end method

.method public final z()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lwd8;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->t()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lwd8;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lwd8;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvlb;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v1}, Lwd8;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->l()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvlb;->g(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0, v2}, Lwd8;->b(ZLjava/lang/Object;)V

    return-void
.end method
