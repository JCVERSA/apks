.class public Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem$FakePath;,
        Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem$Stat;
    }
.end annotation


# static fields
.field public static volatile b:Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

.field public static final c:Landroid/util/LruCache;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->c:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->a:Landroid/content/Context;

    return-void
.end method

.method public static e(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;
    .locals 2

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->b:Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

    if-nez v0, :cond_1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->b:Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

    if-nez v1, :cond_0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

    invoke-direct {v1, p0}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->b:Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->b:Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->c:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/documentfile/provider/DocumentFile;

    if-nez v2, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Z)Landroidx/documentfile/provider/DocumentFile;
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const-string p3, "application/octet-stream"

    invoke-virtual {p1, p3, p2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    move-object p0, v0

    :catch_0
    :cond_1
    return-object p0
.end method

.method public d(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->c:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/documentfile/provider/DocumentFile;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/proninyaroslav/libretorrent/core/system/SafFileSystem;->c(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Z)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public f(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "content"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheme of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
