.class public final Lts3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lts3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lts3;

    invoke-direct {v0}, Lts3;-><init>()V

    sput-object v0, Lts3;->a:Lts3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lrc7;)V
    .locals 0

    invoke-static {p0, p1}, Lts3;->f(Landroid/content/Context;Lrc7;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/concurrent/atomic/AtomicInteger;Lrc7;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lts3;->g(Ljava/util/concurrent/atomic/AtomicInteger;Lrc7;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static final f(Landroid/content/Context;Lrc7;)V
    .locals 3

    const-string v0, "emitter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lts3;->a:Lts3;

    invoke-virtual {v0}, Lts3;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lrc7;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-interface {p1, p0}, Lk93;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lk93;->onComplete()V

    :cond_0
    return-void

    :cond_1
    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Lss3;

    invoke-direct {v2, v1, p1}, Lss3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lrc7;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public static final g(Ljava/util/concurrent/atomic/AtomicInteger;Lrc7;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-gtz p0, :cond_0

    invoke-interface {p1}, Lrc7;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-interface {p1, p0}, Lk93;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lk93;->onComplete()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 5

    sget-object p0, Lyx2;->m:Ljava/io/File;

    const-string v0, "FILE_TRANS_FILE"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_4
    return-object p0

    :cond_5
    :goto_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/Iterable;)V
    .locals 7

    const-string p0, "items"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v5, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    :cond_4
    iget-wide v5, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final e(Landroid/content/Context;)Lmc7;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lrs3;

    invoke-direct {p1, p0}, Lrs3;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lmc7;->h(Led7;)Lmc7;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
