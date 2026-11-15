.class public Landroidx/media3/datasource/FileDescriptorDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final inUseFileDescriptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bytesRemaining:J

.field private final fileDescriptor:Ljava/io/FileDescriptor;

.field private inputStream:Ljava/io/FileInputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final length:J

.field private final offset:J

.field private opened:Z

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/common/collect/Sets;->f()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/media3/datasource/FileDescriptorDataSource;->inUseFileDescriptors:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileDescriptor;

    iput-object p1, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->fileDescriptor:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->offset:J

    iput-wide p4, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->length:J

    return-void
.end method

.method private static seekFileDescriptor(Ljava/io/FileDescriptor;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p0, p1, p2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    const/16 p2, 0x7d0

    invoke-direct {p1, p0, p2}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->uri:Landroid/net/Uri;

    sget-object v1, Landroidx/media3/datasource/FileDescriptorDataSource;->inUseFileDescriptors:Ljava/util/Set;

    iget-object v2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->fileDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
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
    iput-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->inputStream:Ljava/io/FileInputStream;

    iget-boolean v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->opened:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    new-instance v3, Landroidx/media3/datasource/DataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->inputStream:Ljava/io/FileInputStream;

    iget-boolean v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->opened:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_2
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    sget-object v0, Landroidx/media3/datasource/FileDescriptorDataSource;->inUseFileDescriptors:Ljava/util/Set;

    iget-object v1, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->fileDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/16 v5, 0x7d8

    if-eqz v4, :cond_1

    iget-wide v6, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v0, v6, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/media3/datasource/DataSourceException;

    invoke-direct {p0, v5}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw p0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_6

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->fileDescriptor:Ljava/io/FileDescriptor;

    iget-wide v6, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->offset:J

    iget-wide v8, p1, Landroidx/media3/datasource/DataSpec;->position:J

    add-long/2addr v6, v8

    invoke-static {v0, v6, v7}, Landroidx/media3/datasource/FileDescriptorDataSource;->seekFileDescriptor(Ljava/io/FileDescriptor;J)V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->fileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->inputStream:Ljava/io/FileInputStream;

    iget-wide v6, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->length:J

    cmp-long v1, v6, v2

    const-wide/16 v8, 0x0

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    iput-wide v2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long/2addr v6, v0

    iput-wide v6, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Landroidx/media3/datasource/DataSourceException;

    invoke-direct {p0, v5}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw p0

    :cond_4
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v6, v0

    iput-wide v6, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J
    :try_end_0
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_8

    :goto_1
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    iget-wide v4, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->opened:Z

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-wide v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    :goto_3
    return-wide v0

    :cond_8
    :try_start_1
    new-instance p0, Landroidx/media3/datasource/DataSourceException;

    invoke-direct {p0, v5}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw p0

    :cond_9
    new-instance p0, Landroidx/media3/datasource/DataSourceException;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to re-use an already in-use file descriptor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p0
    :try_end_1
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_a

    const/16 v0, 0x7d5

    goto :goto_5

    :cond_a
    const/16 v0, 0x7d0

    :goto_5
    invoke-direct {p1, p0, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :goto_6
    throw p0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v6, p3

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_3

    return v3

    :cond_3
    iget-wide p2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    return p1

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    const/16 p2, 0x7d0

    invoke-direct {p1, p0, p2}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
.end method
