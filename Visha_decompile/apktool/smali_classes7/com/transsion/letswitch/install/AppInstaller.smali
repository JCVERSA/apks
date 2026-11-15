.class public final Lcom/transsion/letswitch/install/AppInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ \u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/letswitch/install/AppInstaller;",
        "",
        "<init>",
        "()V",
        "BUFFER_SIZE",
        "",
        "buffer",
        "",
        "commitInstall",
        "",
        "context",
        "Landroid/content/Context;",
        "installParams",
        "Lcom/transsion/letswitch/service/api/data/InstallParams;",
        "runInstallWrite",
        "installFileInfo",
        "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;",
        "sessionId",
        "installer",
        "Landroid/content/pm/PackageInstaller;",
        "api_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field public static final INSTANCE:Lcom/transsion/letswitch/install/AppInstaller;

.field private static final buffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/letswitch/install/AppInstaller;

    invoke-direct {v0}, Lcom/transsion/letswitch/install/AppInstaller;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/install/AppInstaller;->INSTANCE:Lcom/transsion/letswitch/install/AppInstaller;

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lcom/transsion/letswitch/install/AppInstaller;->buffer:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final runInstallWrite(Lcom/transsion/letswitch/service/api/data/InstallFileInfo;ILandroid/content/pm/PackageInstaller;)I
    .locals 6

    invoke-virtual {p1}, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->getLength()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p1}, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    move-object v0, p0

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    sget-object p3, Lcom/transsion/letswitch/install/AppInstaller;->buffer:[B

    invoke-virtual {p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    sget-object p3, Lzfb;->a:Lzfb;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 p3, 0x0

    :try_start_4
    invoke-static {p1, p3}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {p2, p3}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {p0, p3}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p3

    goto :goto_1

    :cond_0
    :try_start_7
    invoke-virtual {p1, p3, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :goto_1
    :try_start_8
    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {p1, p3}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_2
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p3

    :try_start_b
    invoke-static {p2, p1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_3
    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception p2

    :try_start_d
    invoke-static {p0, p1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x1

    :goto_5
    return v2
.end method


# virtual methods
.method public final declared-synchronized commitInstall(Landroid/content/Context;Lcom/transsion/letswitch/service/api/data/InstallParams;)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installParams"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/letswitch/service/api/data/InstallParams;->getFileInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;

    invoke-virtual {v7}, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->getLength()J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v9, v7, v3

    if-gtz v9, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    add-long/2addr v5, v7

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    invoke-virtual {p2}, Lcom/transsion/letswitch/service/api/data/InstallParams;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/letswitch/service/api/data/InstallParams;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->installLocation:I

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    const-string v4, "getPackageInstaller(...)"

    invoke-static {p1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;

    invoke-direct {p0, v4, v1, p1}, Lcom/transsion/letswitch/install/AppInstaller;->runInstallWrite(Lcom/transsion/letswitch/service/api/data/InstallFileInfo;ILandroid/content/pm/PackageInstaller;)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    monitor-exit p0

    return v2

    :cond_4
    :try_start_3
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/letswitch/service/api/data/InstallParams;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
