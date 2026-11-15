.class public final Lvvi;
.super Lp4i;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public f:Lcfi;

.field public g:Landroid/content/res/AssetFileDescriptor;

.field public h:Ljava/io/InputStream;

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp4i;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lvvi;->e:Landroid/content/Context;

    return-void
.end method

.method public static n(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhb;

    const/4 v0, 0x0

    const/16 v1, 0x3ec

    const-string v2, "Resource identifier must be an integer."

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p0
.end method

.method public static o(Landroid/content/Context;Lcfi;)Landroid/content/res/AssetFileDescriptor;
    .locals 5

    iget-object p1, p1, Lcfi;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rawresource"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x7d5

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lvvi;->n(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawresource:// URI must have exactly one path element, found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.resource"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v4, "\\d+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Lvvi;->n(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_6

    return-object p0

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Resource is compressed: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {p1, v3, p0, v2}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhb;

    const-string p1, "Resource not found."

    invoke-direct {p0, p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhb;

    const-string v0, "Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility."

    invoke-direct {p1, v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported URI scheme ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "). Only android.resource is supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3ec

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p0
.end method


# virtual methods
.method public final b([BII)I
    .locals 9

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lvvi;->i:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_5

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    const/16 v6, 0x7d0

    if-eqz v2, :cond_1

    int-to-long v7, p3

    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lvvi;->h:Ljava/io/InputStream;

    sget v1, Lkfh;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_3

    iget-wide p0, p0, Lvvi;->i:J

    cmp-long p0, p0, v4

    if-nez p0, :cond_2

    return v3

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhb;

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    const-string p2, "End of stream reached having not read sufficient data."

    invoke-direct {p0, p2, p1, v6}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p0

    :cond_3
    iget-wide p2, p0, Lvvi;->i:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lvvi;->i:J

    :cond_4
    invoke-virtual {p0, p1}, Lp4i;->zzg(I)V

    return p1

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhb;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, v6}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_5
    return v3
.end method

.method public final j(Lcfi;)J
    .locals 14

    iput-object p1, p0, Lvvi;->f:Lcfi;

    invoke-virtual {p0, p1}, Lp4i;->l(Lcfi;)V

    iget-object v0, p0, Lvvi;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lvvi;->o(Landroid/content/Context;Lcfi;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lvvi;->g:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lvvi;->g:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lvvi;->h:Ljava/io/InputStream;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    const/16 v6, 0x7d8

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    :try_start_0
    iget-wide v8, p1, Lcfi;->e:J

    cmp-long v8, v8, v0

    if-gtz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {p0, v7, v7, v6}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :goto_0
    iget-object v8, p0, Lvvi;->g:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    iget-wide v10, p1, Lcfi;->e:J

    add-long v12, v8, v10

    invoke-virtual {v2, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v8

    cmp-long v8, v12, v10

    if-nez v8, :cond_9

    const-wide/16 v8, 0x0

    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-nez v1, :cond_2

    iput-wide v3, p0, Lvvi;->i:J

    move-wide v1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    sub-long/2addr v1, v10

    iput-wide v1, p0, Lvvi;->i:J

    cmp-long v0, v1, v8

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {p0, v7, v7, v6}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p0

    :cond_4
    sub-long v1, v0, v12

    iput-wide v1, p0, Lvvi;->i:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhb; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v1, v8

    if-ltz v0, :cond_8

    :goto_1
    iget-wide v5, p1, Lcfi;->f:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_6

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    move-wide v1, v5

    goto :goto_2

    :cond_5
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_2
    iput-wide v1, p0, Lvvi;->i:J

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lvvi;->j:Z

    invoke-virtual {p0, p1}, Lp4i;->m(Lcfi;)V

    if-eqz v0, :cond_7

    return-wide v5

    :cond_7
    iget-wide p0, p0, Lvvi;->i:J

    return-wide p0

    :cond_8
    :try_start_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgf;

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(I)V

    throw p0

    :cond_9
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {p0, v7, v7, v6}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzhb; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhb;

    const/16 v0, 0x7d0

    invoke-direct {p1, v7, p0, v0}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :goto_4
    throw p0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lvvi;->f:Lcfi;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcfi;->a:Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzd()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lvvi;->f:Lcfi;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lvvi;->h:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_0
    :goto_0
    iput-object v0, p0, Lvvi;->h:Ljava/io/InputStream;

    :try_start_1
    iget-object v3, p0, Lvvi;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v0, p0, Lvvi;->g:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lvvi;->j:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lvvi;->j:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_2
    return-void

    :goto_2
    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    iput-object v0, p0, Lvvi;->h:Ljava/io/InputStream;

    :try_start_4
    iget-object v4, p0, Lvvi;->g:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_6

    :cond_3
    :goto_5
    iput-object v0, p0, Lvvi;->g:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lvvi;->j:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lvvi;->j:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_4
    throw v3

    :goto_6
    :try_start_5
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {v4, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    iput-object v0, p0, Lvvi;->g:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lvvi;->j:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lvvi;->j:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_5
    throw v1
.end method
