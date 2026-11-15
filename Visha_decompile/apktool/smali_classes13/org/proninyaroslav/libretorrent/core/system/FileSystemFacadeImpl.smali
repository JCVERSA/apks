.class Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;


# static fields
.field public static final c:Ljava/lang/String; = "FileSystemFacadeImpl"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->a:Landroid/content/Context;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->b:Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)J
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->b:Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;->a(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FsModule;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModule;->a(Landroid/net/Uri;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->b:Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;->a(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FsModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModule;->b(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public c(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->b:Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;->a(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FsModule;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Lorg/proninyaroslav/libretorrent/core/system/FsModule;->d(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->b:Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;->a(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FsModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModule;->f(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public f([BLandroid/net/Uri;)V
    .locals 1

    invoke-virtual {p0, p2}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->n(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;

    move-result-object p0

    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    const-string v0, "rw"

    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;->f(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, p2}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz p0, :cond_0

    :try_start_5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw p1
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->i()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "Temp dir not found"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->o(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v2, "temp"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public k()Z
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mounted_ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "file://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public m(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->b:Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;->a(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FsModule;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Lorg/proninyaroslav/libretorrent/core/system/FsModule;->d(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/system/FsModule;->f(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    invoke-interface {p0, p1, p2, p3}, Lorg/proninyaroslav/libretorrent/core/system/FsModule;->d(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public n(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->b:Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;->a(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FsModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModule;->c(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;

    move-result-object p0

    return-object p0
.end method

.method public o(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacadeImpl;->b:Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FsModuleResolver;->a(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FsModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/system/FsModule;->e(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
