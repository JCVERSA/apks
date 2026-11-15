.class public Lcom/hunantv/media/player/datasource/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/c;->c:Ljava/lang/String;

    iput p2, p0, Lcom/hunantv/media/player/datasource/c;->d:I

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hunantv/media/player/datasource/c;->b:J

    iget-object p1, p0, Lcom/hunantv/media/player/datasource/c;->a:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/c;->a:Ljava/io/RandomAccessFile;

    :cond_0
    return-void
.end method

.method public getDataSourceUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getSize(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/c;->a:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hunantv/media/player/datasource/c;->b:J

    return-wide v0

    :catch_0
    const-wide/16 p0, -0xb

    return-wide p0

    :catch_1
    const-wide/16 p0, -0x17

    return-wide p0

    :catch_2
    const-wide/16 p0, -0x16

    return-wide p0

    :catch_3
    const-wide/16 p0, -0x15

    return-wide p0

    :catch_4
    const-wide/16 p0, -0xd

    return-wide p0
.end method

.method public getVideoSourceType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/datasource/c;->d:I

    return p0
.end method

.method public readAt(Ljava/lang/String;[BJJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/hunantv/media/player/datasource/c;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    cmp-long p1, v2, p3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/datasource/c;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p1, p5, p3

    if-nez p1, :cond_2

    return-wide p3

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/player/datasource/c;->a:Ljava/io/RandomAccessFile;

    const/4 p1, 0x0

    long-to-int p3, p5

    invoke-virtual {p0, p2, p1, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0

    int-to-long p0, p0

    cmp-long p2, p0, v0

    if-nez p2, :cond_3

    const-wide/32 p0, -0x7849cd71

    :cond_3
    return-wide p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setInfoListener(Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource$IInfoListener;)V
    .locals 0

    return-void
.end method

.method public setLogTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
