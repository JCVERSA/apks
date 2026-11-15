.class public final Lcom/google/android/gms/internal/ads/wb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lurj;

.field public static final e:Lurj;


# instance fields
.field public final a:La6e;

.field public b:Lcom/google/android/gms/internal/ads/zzzm;

.field public c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lurj;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lurj;-><init>(IJLxrj;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/wb;->d:Lurj;

    new-instance v0, Lurj;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lurj;-><init>(IJLxrj;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/wb;->e:Lurj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string p1, "ExoPlayer:Loader:ProgressiveMediaPeriod"

    invoke-static {p1}, Lkfh;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lsrj;

    invoke-direct {v0}, Lsrj;-><init>()V

    invoke-static {p1, v0}, Lbsj;->a(Ljava/util/concurrent/Executor;Lqfg;)La6e;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wb;->a:La6e;

    return-void
.end method

.method public static b(ZJ)Lurj;
    .locals 2

    new-instance v0, Lurj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lurj;-><init>(IJLxrj;)V

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/wb;)Lcom/google/android/gms/internal/ads/zzzm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wb;->b:Lcom/google/android/gms/internal/ads/zzzm;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/internal/ads/wb;)La6e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wb;->a:La6e;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/internal/ads/wb;Lcom/google/android/gms/internal/ads/zzzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wb;->b:Lcom/google/android/gms/internal/ads/zzzm;

    return-void
.end method

.method public static bridge synthetic f(Lcom/google/android/gms/internal/ads/wb;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wb;->c:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final a(Lvrj;Ltrj;I)J
    .locals 11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wb;->c:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzzm;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzzm;-><init>(Lcom/google/android/gms/internal/ads/wb;Landroid/os/Looper;Lvrj;Ltrj;IJ)V

    const-wide/16 p0, 0x0

    invoke-virtual {v10, p0, p1}, Lcom/google/android/gms/internal/ads/zzzm;->zzc(J)V

    return-wide v8
.end method

.method public final g()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wb;->b:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-static {p0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzzm;->zza(Z)V

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wb;->c:Ljava/io/IOException;

    return-void
.end method

.method public final i(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wb;->c:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wb;->b:Lcom/google/android/gms/internal/ads/zzzm;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzzm;->zzb(I)V

    :cond_0
    return-void

    :cond_1
    throw v0
.end method

.method public final j(Lwrj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wb;->b:Lcom/google/android/gms/internal/ads/zzzm;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzzm;->zza(Z)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wb;->a:La6e;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzzp;-><init>(Lwrj;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {p0}, La6e;->zza()V

    return-void
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wb;->c:Ljava/io/IOException;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wb;->b:Lcom/google/android/gms/internal/ads/zzzm;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
