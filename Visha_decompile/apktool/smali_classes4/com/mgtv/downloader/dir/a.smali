.class public Lcom/mgtv/downloader/dir/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static g:Lcom/mgtv/downloader/dir/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/downloader/dir/DownloadDirInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/mgtv/downloader/dir/a;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/downloader/dir/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/dir/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/downloader/dir/a;->f:Z

    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pathCanWrite - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 8
    const-string p1, "pathCanWrite : invalid path!"

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".testwrite"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    if-eqz p2, :cond_3

    .line 15
    const-string p1, "pathCanWrite : yes! write success"

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p2, :cond_5

    .line 16
    const-string p1, "pathCanWrite : no! write failed"

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return v1

    .line 17
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_6

    .line 18
    const-string p1, "pathCanWrite : no! write exception"

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    :cond_6
    return v1
.end method

.method private b(Lcom/mgtv/downloader/dir/DownloadDirInfo;)Lcom/mgtv/downloader/dir/DownloadDirInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    invoke-virtual {p1, v1}, Lcom/mgtv/downloader/dir/DownloadDirInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, p1}, Lcom/mgtv/downloader/dir/DownloadDirInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iput-object v2, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeDir to : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    invoke-virtual {v0}, Lcom/mgtv/downloader/dir/DownloadDirInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    const-string p1, "changeDir to null"

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    return-object v0

    .line 12
    :cond_3
    :goto_1
    const-string p1, "changeDir to nowhere"

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lcom/mgtv/downloader/dir/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgtv/downloader/dir/a;->g:Lcom/mgtv/downloader/dir/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgtv/downloader/dir/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/dir/a;->g:Lcom/mgtv/downloader/dir/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgtv/downloader/dir/a;

    invoke-direct {v1}, Lcom/mgtv/downloader/dir/a;-><init>()V

    sput-object v1, Lcom/mgtv/downloader/dir/a;->g:Lcom/mgtv/downloader/dir/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/downloader/dir/a;->g:Lcom/mgtv/downloader/dir/a;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    .line 7
    const-string v0, "initCacheDirList"

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 8
    iget-boolean v0, p0, Lcom/mgtv/downloader/dir/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/mgtv/downloader/dir/a;->f:Z

    .line 10
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;

    if-eqz v2, :cond_1

    .line 15
    iget-object v3, v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mgtv/downloader/dir/a;->c(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;->totalSize:J

    .line 16
    invoke-virtual {p0, v3, v4}, Lcom/mgtv/downloader/dir/a;->a(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;->totalSizeDesc:Ljava/lang/String;

    .line 17
    iget-object v3, v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mgtv/downloader/dir/a;->d(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;->availableSize:J

    .line 18
    invoke-virtual {p0, v3, v4}, Lcom/mgtv/downloader/dir/a;->a(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;->availableSizeDesc:Ljava/lang/String;

    .line 19
    iget-object v3, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v2}, Lcom/mgtv/downloader/dir/DownloadDirInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_2
    invoke-direct {p0}, Lcom/mgtv/downloader/dir/a;->f()V

    goto :goto_1

    .line 22
    :cond_3
    const-string p1, "No download dir found!"

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 23
    :goto_1
    iput-boolean v0, p0, Lcom/mgtv/downloader/dir/a;->f:Z

    return-void
.end method

.method private d(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgtv/downloader/dir/DownloadDirInfo;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "enumCacheDir"

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 3
    sget v0, Lcom/mgtv/downloader/dir/a;->a:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private e(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgtv/downloader/dir/DownloadDirInfo;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "getUnderICS"

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;

    invoke-direct {v2}, Lcom/mgtv/downloader/dir/DownloadDirInfo;-><init>()V

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;->internal:Z

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mgtv/downloader/dir/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/mgtv/downloader/dir/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/mgtv/downloader/dir/a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_1
    const-string v1, "Download-plugin9"

    .line 14
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    new-instance v1, Lcom/mgtv/downloader/dir/DownloadDirInfo;

    invoke-direct {v1}, Lcom/mgtv/downloader/dir/DownloadDirInfo;-><init>()V

    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v1, Lcom/mgtv/downloader/dir/DownloadDirInfo;->internal:Z

    .line 20
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/mgtv/downloader/dir/a;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 54
    const-string p0, ""

    return-object p0

    .line 55
    :cond_0
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private f(Landroid/content/Context;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgtv/downloader/dir/DownloadDirInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 18
    const-string v2, "getUnderKitKat - exception: "

    const-string v0, "getUnderKitKat"

    invoke-direct {v1, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const-string v0, "storage"

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_9

    .line 21
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getVolumeState"

    const-class v7, Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getVolumeList"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 23
    invoke-virtual {v6, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    if-eqz v6, :cond_9

    .line 24
    array-length v7, v6

    if-lez v7, :cond_9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 25
    :goto_0
    array-length v12, v6

    if-ge v9, v12, :cond_9

    .line 26
    aget-object v12, v6, v9

    .line 27
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "isRemovable"

    invoke-virtual {v13, v14, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 28
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getPath"

    invoke-virtual {v14, v15, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 29
    invoke-virtual {v14, v12, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 30
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 31
    :cond_1
    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v5, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 32
    const-string v7, "mounted"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    const-string v7, "%sAndroid/data/%s/files/Download-plugin9/"

    invoke-direct {v1, v14}, Lcom/mgtv/downloader/dir/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/downloader/dir/a;->a()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/downloader/dir/a;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_7

    .line 36
    :cond_3
    :goto_2
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_1

    .line 38
    :cond_4
    invoke-direct {v1, v7}, Lcom/mgtv/downloader/dir/a;->e(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_1

    .line 39
    :cond_5
    invoke-virtual {v13, v12, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 40
    new-instance v13, Lcom/mgtv/downloader/dir/DownloadDirInfo;

    invoke-direct {v13}, Lcom/mgtv/downloader/dir/DownloadDirInfo;-><init>()V

    .line 41
    invoke-direct {v1, v7}, Lcom/mgtv/downloader/dir/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v13, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    if-eqz v12, :cond_7

    const/4 v7, 0x0

    .line 42
    iput-boolean v7, v13, Lcom/mgtv/downloader/dir/DownloadDirInfo;->internal:Z

    if-lez v11, :cond_6

    .line 43
    iput v11, v13, Lcom/mgtv/downloader/dir/DownloadDirInfo;->serialNo:I

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 44
    iput-boolean v12, v13, Lcom/mgtv/downloader/dir/DownloadDirInfo;->internal:Z

    if-lez v10, :cond_8

    .line 45
    iput v10, v13, Lcom/mgtv/downloader/dir/DownloadDirInfo;->serialNo:I

    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 46
    :goto_3
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 47
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    goto :goto_8

    .line 49
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 50
    :cond_9
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    const-string v0, "getUnderKitKat got nothing, try underICS way"

    invoke-direct {v1, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 52
    invoke-direct/range {p0 .. p1}, Lcom/mgtv/downloader/dir/a;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    :cond_a
    return-object v3
.end method

.method private f()V
    .locals 6

    .line 1
    const-string v0, "checkCurDir"

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    const-string v0, "matching cur dir"

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/downloader/dir/DownloadDirInfo;

    if-eqz v3, :cond_0

    .line 6
    iget-object v4, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    invoke-virtual {v3, v4}, Lcom/mgtv/downloader/dir/DownloadDirInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    if-nez v0, :cond_5

    .line 9
    const-string v0, "not matched, setting to default"

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/downloader/dir/DownloadDirInfo;

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    .line 12
    iput-object v0, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    goto :goto_2

    .line 13
    :cond_3
    iget-wide v2, v0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->availableSize:J

    iget-object v4, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    iget-wide v4, v4, Lcom/mgtv/downloader/dir/DownloadDirInfo;->availableSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 14
    iput-object v0, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    if-nez v0, :cond_6

    .line 16
    const-string v0, "check failed, no current dir info initialized"

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    goto :goto_3

    .line 17
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check succeed, current dir info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    invoke-virtual {v1}, Lcom/mgtv/downloader/dir/DownloadDirInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private g(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/mgtv/downloader/dir/DownloadDirInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "getAboveKitKat"

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/downloader/dir/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/mgtv/downloader/dir/a;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_0
    const-string v2, "Download-plugin9"

    .line 8
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 9
    array-length v3, v2

    if-lez v3, :cond_5

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 10
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_5

    .line 11
    aget-object v7, v2, v4

    if-eqz v7, :cond_4

    .line 12
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 13
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 14
    new-instance v8, Lcom/mgtv/downloader/dir/DownloadDirInfo;

    invoke-direct {v8}, Lcom/mgtv/downloader/dir/DownloadDirInfo;-><init>()V

    .line 15
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    .line 16
    iput-boolean v9, v8, Lcom/mgtv/downloader/dir/DownloadDirInfo;->internal:Z

    if-lez v6, :cond_1

    .line 17
    iput v6, v8, Lcom/mgtv/downloader/dir/DownloadDirInfo;->serialNo:I

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 18
    :cond_2
    iput-boolean v3, v8, Lcom/mgtv/downloader/dir/DownloadDirInfo;->internal:Z

    if-lez v5, :cond_3

    .line 19
    iput v5, v8, Lcom/mgtv/downloader/dir/DownloadDirInfo;->serialNo:I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 20
    :goto_2
    invoke-direct {p0, v7}, Lcom/mgtv/downloader/dir/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    .line 21
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 22
    :cond_5
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 24
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listByApi is empty, listBySM size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    return-object p1

    .line 26
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listByApi size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", listBySM size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne p0, v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_9

    goto :goto_3

    :cond_9
    move-object v1, p1

    :goto_3
    return-object v1

    .line 28
    :cond_a
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "listBySM is empty, listByApi size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    return-object v1
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadSDK_1.8.0 DownloadDirManager: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/downloader/dir/DownloadDirInfo;)Lcom/mgtv/downloader/dir/DownloadDirInfo;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurDownloadDir - dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/downloader/dir/DownloadDirInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/dir/a;->g(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->b(Lcom/mgtv/downloader/dir/DownloadDirInfo;)Lcom/mgtv/downloader/dir/DownloadDirInfo;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/downloader/dir/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(J)Ljava/lang/String;
    .locals 3

    .line 19
    new-instance p0, Ljava/text/DecimalFormat;

    const-string v0, "#.00"

    invoke-direct {p0, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 20
    const-string p0, "0B"

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "K"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 24
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "G"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x2e

    if-ne p2, v0, :cond_4

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/downloader/dir/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/downloader/dir/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/dir/a;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Ljava/lang/String;)J
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 24
    :cond_0
    :try_start_0
    new-instance p0, Landroid/os/StatFs;

    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 25
    sget p1, Lcom/mgtv/downloader/dir/a;->a:I

    const/16 v2, 0x12

    if-lt p1, v2, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 27
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v2, p1

    .line 29
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p0, p0

    :goto_0
    mul-long v0, p0, v2

    goto :goto_2

    .line 30
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-wide v0
.end method

.method public d(Ljava/lang/String;)J
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 7
    :cond_0
    :try_start_0
    new-instance p0, Landroid/os/StatFs;

    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 8
    sget p1, Lcom/mgtv/downloader/dir/a;->a:I

    const/16 v2, 0x12

    if-lt p1, v2, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 10
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v2, p1

    .line 12
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p0, p0

    :goto_0
    mul-long v0, p0, v2

    goto :goto_2

    .line 13
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-wide v0
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgtv/downloader/dir/DownloadDirInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/mgtv/downloader/dir/a;->e:Ljava/util/List;

    return-object p0
.end method

.method public e()Lcom/mgtv/downloader/dir/DownloadDirInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/downloader/dir/a;->d:Lcom/mgtv/downloader/dir/DownloadDirInfo;

    return-object p0
.end method
