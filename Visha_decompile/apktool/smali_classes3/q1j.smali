.class public abstract Lq1j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/Object;

.field public static volatile h:Lb1j;

.field public static final i:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final j:Lx1j;

.field public static final k:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Ly0j;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public volatile d:I

.field public volatile e:Ljava/lang/Object;

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq1j;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lq1j;->i:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lx1j;

    sget-object v1, Lj0j;->a:Lj0j;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx1j;-><init>(Lj0j;[B)V

    sput-object v0, Lq1j;->j:Lx1j;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lq1j;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Ly0j;Ljava/lang/String;Ljava/lang/Object;ZLe1j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lq1j;->d:I

    iget-object p4, p1, Ly0j;->b:Landroid/net/Uri;

    if-eqz p4, :cond_0

    iput-object p1, p0, Lq1j;->a:Ly0j;

    iput-object p2, p0, Lq1j;->b:Ljava/lang/String;

    iput-object p3, p0, Lq1j;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq1j;->f:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lq1j;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lq1j;->h:Lb1j;

    if-nez v0, :cond_4

    sget-object v0, Lq1j;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lq1j;->h:Lb1j;

    if-nez v1, :cond_3

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lq1j;->h:Lb1j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lb1j;->a()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lgxi;->d()V

    invoke-static {}, Lt1j;->b()V

    invoke-static {}, Ltzi;->d()V

    new-instance v1, Lf0j;

    invoke-direct {v1, p0}, Lf0j;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/c;->a(Lk2j;)Lk2j;

    move-result-object v1

    new-instance v2, Lavi;

    invoke-direct {v2, p0, v1}, Lavi;-><init>(Landroid/content/Context;Lk2j;)V

    sput-object v2, Lq1j;->h:Lb1j;

    sget-object p0, Lq1j;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/Object;
    .locals 6

    iget-boolean v0, p0, Lq1j;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lq1j;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "flagName must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lq1j;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lq1j;->d:I

    if-ge v1, v0, :cond_d

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lq1j;->d:I

    if-ge v1, v0, :cond_c

    sget-object v1, Lq1j;->h:Lb1j;

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_b

    iget-object v2, p0, Lq1j;->a:Ly0j;

    iget-boolean v3, v2, Ly0j;->f:Z

    iget-object v2, v2, Ly0j;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lb1j;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lq1j;->a:Ly0j;

    iget-object v4, v4, Ly0j;->b:Landroid/net/Uri;

    invoke-static {v2, v4}, Lyzi;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lq1j;->a:Ly0j;

    iget-boolean v2, v2, Ly0j;->h:Z

    invoke-virtual {v1}, Lb1j;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lq1j;->a:Ly0j;

    iget-object v4, v4, Ly0j;->b:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzhq;->zza:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v2, v4, v5}, Lgxi;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lgxi;

    move-result-object v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lb1j;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lq1j;->a:Ly0j;

    iget-object v4, v4, Ly0j;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzhq;->zza:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v2, v3, v4}, Lt1j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lt1j;

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lq1j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljzi;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Lq1j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_5

    goto :goto_6

    :cond_5
    iget-object v2, p0, Lq1j;->a:Ly0j;

    iget-boolean v2, v2, Ly0j;->e:Z

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lb1j;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ltzi;->a(Landroid/content/Context;)Ltzi;

    move-result-object v2

    iget-object v4, p0, Lq1j;->a:Ly0j;

    iget-boolean v4, v4, Ly0j;->e:Z

    if-eqz v4, :cond_6

    move-object v4, v3

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lq1j;->b:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v4}, Ltzi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v2}, Lq1j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object v2, v3

    :goto_5
    if-nez v2, :cond_8

    iget-object v2, p0, Lq1j;->c:Ljava/lang/Object;

    :cond_8
    :goto_6
    invoke-virtual {v1}, Lb1j;->b()Lk2j;

    move-result-object v1

    invoke-interface {v1}, Lk2j;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzif;->zzb()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyyi;

    iget-object v2, p0, Lq1j;->a:Ly0j;

    iget-object v4, v2, Ly0j;->b:Landroid/net/Uri;

    iget-object v2, v2, Ly0j;->d:Ljava/lang/String;

    iget-object v5, p0, Lq1j;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v2, v5}, Lyyi;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v2, p0, Lq1j;->c:Ljava/lang/Object;

    goto :goto_7

    :cond_9
    invoke-virtual {p0, v1}, Lq1j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_a
    :goto_7
    iput-object v2, p0, Lq1j;->e:Ljava/lang/Object;

    iput v0, p0, Lq1j;->d:I

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_8
    monitor-exit p0

    goto :goto_a

    :goto_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    :goto_a
    iget-object p0, p0, Lq1j;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq1j;->a:Ly0j;

    iget-object v0, v0, Ly0j;->d:Ljava/lang/String;

    iget-object p0, p0, Lq1j;->b:Ljava/lang/String;

    return-object p0
.end method
