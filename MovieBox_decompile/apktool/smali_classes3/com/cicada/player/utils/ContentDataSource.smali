.class public Lcom/cicada/player/utils/ContentDataSource;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static final EINVAL:I = 0x16

.field private static final EIO:I = 0x5

.field private static final ENOENT:I = 0x2

.field private static final SEEK_CUR:I = 0x1

.field private static final SEEK_END:I = 0x2

.field private static final SEEK_SET:I = 0x0

.field private static final SEEK_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ContentDataSource"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mOffset:J

.field private mStream:Ljava/io/InputStream;

.field private mStreamSize:I

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStreamSize:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    .line 15
    .line 16
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sput-object p0, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-wide p1

    .line 8
    :catch_0
    iget-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    .line 9
    .line 10
    add-long/2addr v0, p1

    .line 11
    long-to-int p1, v0

    .line 12
    int-to-long p1, p1

    .line 13
    invoke-virtual {p0}, Lcom/cicada/player/utils/ContentDataSource;->close()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/cicada/player/utils/ContentDataSource;->open(I)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public open(I)I
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, -0x16

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    sget-object p1, Lcom/cicada/player/utils/ContentDataSource;->sContext:Landroid/content/Context;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    :try_start_1
    iput-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mStreamSize:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    return p1

    .line 48
    :catch_0
    const/4 p1, -0x5

    .line 49
    return p1

    .line 50
    :catch_1
    const/4 p1, -0x2

    .line 51
    return p1
.end method

.method public read([B)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 p1, -0x16

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    .line 13
    .line 14
    int-to-long v2, p1

    .line 15
    add-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return p1

    .line 19
    :catch_0
    const/4 p1, -0x5

    .line 20
    return p1
.end method

.method public seek(JI)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mStream:Ljava/io/InputStream;

    .line 2
    .line 3
    const-wide/16 v1, -0x16

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    const/high16 v3, 0x10000

    .line 9
    .line 10
    if-ne p3, v3, :cond_2

    .line 11
    .line 12
    iget p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mStreamSize:I

    .line 13
    .line 14
    if-gtz p1, :cond_1

    .line 15
    .line 16
    return-wide v1

    .line 17
    :cond_1
    int-to-long p1, p1

    .line 18
    return-wide p1

    .line 19
    :cond_2
    const/4 v3, 0x2

    .line 20
    const-wide/16 v4, -0x5

    .line 21
    .line 22
    if-ne p3, v3, :cond_3

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 25
    .line 26
    .line 27
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    int-to-long p1, p1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    return-wide v4

    .line 31
    :cond_3
    if-nez p3, :cond_4

    .line 32
    .line 33
    iget-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    .line 34
    .line 35
    sub-long/2addr p1, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_4
    const/4 v0, 0x1

    .line 38
    if-ne p3, v0, :cond_5

    .line 39
    .line 40
    :goto_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/ContentDataSource;->skip(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    iget-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J

    .line 45
    .line 46
    add-long/2addr v0, p1

    .line 47
    iput-wide v0, p0, Lcom/cicada/player/utils/ContentDataSource;->mOffset:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .line 49
    return-wide v0

    .line 50
    :catch_1
    return-wide v4

    .line 51
    :cond_5
    return-wide v1
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cicada/player/utils/ContentDataSource;->mUri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
