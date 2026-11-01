.class public Lcom/snaptube/taskManager/M4ANativeLib;
.super Ljava/lang/Object;


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "mp3cvt"

.field private static final TAG:Ljava/lang/String; = "M4ANativeLib"

.field private static supported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mp3cvt"

    invoke-static {v0, v1}, Lo/xe6;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snaptube/taskManager/M4ANativeLib;->supported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native convertDASH2MPEG(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static convertDASHM4A(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/snaptube/taskManager/M4ANativeLib;->isSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-static {p0}, Lcom/snaptube/taskManager/M4ANativeLib;->isDashFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object p1, Lcom/snaptube/taskManager/M4ANativeLib;->TAG:Ljava/lang/String;

    const-string v1, "[convertDASHM4A] file is not dash format: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/M4ANativeLib;->convertDASH2MPEG(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sget-object v1, Lcom/snaptube/taskManager/M4ANativeLib;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[convertDASHM4A] errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[convertDASHM4A] timeUsed = %d ms"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return v2
.end method

.method public static createBitmap([BII)Landroid/graphics/Bitmap;
    .locals 0

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p0}, Lo/yn4;->k(II[B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    array-length p1, p0

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapByteArray(Landroid/graphics/Bitmap;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x19

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static native isDashFormat(Ljava/lang/String;)Z
.end method

.method public static isSupported()Z
    .locals 1

    sget-boolean v0, Lcom/snaptube/taskManager/M4ANativeLib;->supported:Z

    return v0
.end method

.method public static loadM4aMetadata(Ljava/lang/String;ZZII)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/snaptube/taskManager/M4ANativeLib;->isSupported()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/snaptube/taskManager/M4ANativeLib;->readM4aMetadata(Ljava/lang/String;ZZII)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v4

    sget-object p3, Lcom/snaptube/taskManager/M4ANativeLib;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadM4aMetadata] success = "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "[loadM4aMetadata] timeUsed = %d ms"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v3

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method public static loadM4aMetadataByFd(IZZII)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/snaptube/taskManager/M4ANativeLib;->isSupported()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/snaptube/taskManager/M4ANativeLib;->readM4aMetadataByFD(IZZII)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v4

    sget-object p3, Lcom/snaptube/taskManager/M4ANativeLib;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadM4aMetadata] success = "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "[loadM4aMetadata] timeUsed = %d ms"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v3

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method private static native readM4aMetadata(Ljava/lang/String;ZZII)Landroid/support/v4/media/MediaMetadataCompat$Builder;
.end method

.method private static native readM4aMetadataByFD(IZZII)Landroid/support/v4/media/MediaMetadataCompat$Builder;
.end method

.method public static storeM4aMetadata(Ljava/lang/String;Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/M4ANativeLib;->writeM4aMetadata(Ljava/lang/String;Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-object p1, Lcom/snaptube/taskManager/M4ANativeLib;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[storeM4aMetadata] success = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[storeM4aMetadata] timeUsed = %d ms"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public static storeM4aMetadataByFD(ILandroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 5

    const/4 v0, 0x0

    if-ltz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/M4ANativeLib;->writeM4aMetadataByFD(ILandroid/support/v4/media/MediaMetadataCompat;)Z

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object p1, Lcom/snaptube/taskManager/M4ANativeLib;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[storeM4aMetadata] success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[storeM4aMetadata] timeUsed = %d ms"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method private static native writeM4aMetadata(Ljava/lang/String;Landroid/support/v4/media/MediaMetadataCompat;)Z
.end method

.method private static native writeM4aMetadataByFD(ILandroid/support/v4/media/MediaMetadataCompat;)Z
.end method
