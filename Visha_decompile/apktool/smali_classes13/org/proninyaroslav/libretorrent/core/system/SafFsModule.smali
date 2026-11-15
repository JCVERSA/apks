.class Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/system/FsModule;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)J
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->e(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->g(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;->g(Ljava/io/FileDescriptor;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-wide v0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;->a:Landroid/content/Context;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->e(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->b(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public c(Landroid/net/Uri;)Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapperImpl;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;->a:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapperImpl;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public d(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;->a:Landroid/content/Context;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->e(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->d(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public e(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem$FakePath;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem$FakePath;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem$FakePath;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f(Landroid/net/Uri;)Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFsModule;->a:Landroid/content/Context;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->e(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->a(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final g(Ljava/io/FileDescriptor;)J
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    move-result-object p0

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bavail:J

    iget-wide p0, p0, Landroid/system/StructStatVfs;->f_bsize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v0, p0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
