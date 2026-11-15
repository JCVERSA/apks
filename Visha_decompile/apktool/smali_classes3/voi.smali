.class public final Lvoi;
.super Lp4i;
.source "SourceFile"


# instance fields
.field public e:Ljava/io/RandomAccessFile;

.field public f:Landroid/net/Uri;

.field public g:J

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp4i;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 5

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lvoi;->g:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lvoi;->e:Ljava/io/RandomAccessFile;

    sget v3, Lkfh;->a:I

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    iget-wide p2, p0, Lvoi;->g:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lvoi;->g:J

    invoke-virtual {p0, p1}, Lp4i;->zzg(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgs;

    const/16 p2, 0x7d0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/lang/Throwable;I)V

    throw p1
.end method

.method public final j(Lcfi;)J
    .locals 8

    iget-object v0, p1, Lcfi;->a:Landroid/net/Uri;

    iput-object v0, p0, Lvoi;->f:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lp4i;->l(Lcfi;)V

    const/16 v1, 0x7d6

    const/16 v2, 0x7d0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string v6, "r"

    invoke-direct {v3, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object v3, p0, Lvoi;->e:Ljava/io/RandomAccessFile;

    :try_start_1
    iget-wide v0, p1, Lcfi;->e:J

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v3, p1, Lcfi;->f:J

    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-nez v6, :cond_0

    iget-object v3, p0, Lvoi;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    sub-long/2addr v3, v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v3, p0, Lvoi;->g:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvoi;->h:Z

    invoke-virtual {p0, p1}, Lp4i;->m(Lcfi;)V

    iget-wide p0, p0, Lvoi;->g:J

    return-wide p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgs;

    const/16 p1, 0x7d8

    invoke-direct {p0, v5, v5, p1}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p0

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgs;

    invoke-direct {p1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :cond_2
    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgs;

    invoke-direct {p1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgs;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :goto_4
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgs;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/system/ErrnoException;

    const/16 v2, 0x7d5

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EACCES:I

    if-ne v0, v3, :cond_3

    goto :goto_5

    :cond_3
    move v1, v2

    :goto_5
    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgs;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-direct {p1, v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lvoi;->f:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzd()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lvoi;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lvoi;->e:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p0, Lvoi;->e:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lvoi;->h:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lvoi;->h:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgs;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-object v0, p0, Lvoi;->e:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lvoi;->h:Z

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iput-boolean v1, p0, Lvoi;->h:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :goto_3
    throw v2
.end method
