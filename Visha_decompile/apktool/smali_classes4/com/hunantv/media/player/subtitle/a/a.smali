.class public Lcom/hunantv/media/player/subtitle/a/a;
.super Lcom/hunantv/media/player/subtitle/a/i;
.source "SourceFile"


# instance fields
.field private final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/d$c;Lcom/hunantv/media/player/subtitle/MediaFormat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/subtitle/a/i;-><init>(Lcom/hunantv/media/player/subtitle/d$c;Lcom/hunantv/media/player/subtitle/MediaFormat;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/a;->h:Landroid/os/Handler;

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 12

    .line 1
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    aget-object v1, v1, v8

    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v8

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v3, v10

    const-wide/32 v10, 0xea60

    mul-long/2addr v6, v10

    add-long/2addr v3, v6

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    add-long/2addr v3, v1

    add-long/2addr v3, v8

    return-wide v3
.end method

.method private a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/hunantv/media/player/subtitle/a/b;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/hunantv/media/player/subtitle/a/i;->a(Lcom/hunantv/media/player/subtitle/a/b;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/hunantv/media/player/subtitle/a/d;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/hunantv/media/player/subtitle/a/i;->a(Lcom/hunantv/media/player/subtitle/a/d;)V

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/a/a;->c()Lcom/hunantv/media/player/subtitle/d$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/hunantv/media/player/subtitle/a/i;->a(Ljava/util/Vector;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/a;->h:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/player/subtitle/d$a;

    move-object v2, v1

    check-cast v2, Lcom/hunantv/media/player/subtitle/a/b;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, v1, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    long-to-int v1, v4

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/hunantv/media/player/subtitle/a/b;->p:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/a;->h:Landroid/os/Handler;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/a;->h:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public a([BZJLjava/lang/String;)V
    .locals 7

    .line 6
    const-string p2, "-->"

    const-string v0, "SRTTrack"

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, p5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :catch_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/subtitle/a/a;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/hunantv/media/utils/NumericUtil;->isNumeric(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/subtitle/a/a;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/hunantv/media/player/subtitle/a/b;

    invoke-direct {v1}, Lcom/hunantv/media/player/subtitle/a/b;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    aget-object v3, p5, v2

    invoke-static {v3}, Lcom/hunantv/media/player/subtitle/a/a;->a(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    const/4 v3, 0x1

    aget-object p5, p5, v3

    invoke-static {p5}, Lcom/hunantv/media/player/subtitle/a/a;->a(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/hunantv/media/player/subtitle/d$a;->b:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-wide p3, v1, Lcom/hunantv/media/player/subtitle/d$a;->d:J

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :cond_3
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[Lcom/hunantv/media/player/subtitle/a/c;

    iput-object v3, v1, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {p5, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/hunantv/media/player/subtitle/a/b;->p:[Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/hunantv/media/player/subtitle/a/c;

    const-wide/16 v5, -0x1

    invoke-direct {v4, v3, v5, v6}, Lcom/hunantv/media/player/subtitle/a/c;-><init>(Ljava/lang/String;J)V

    filled-new-array {v4}, [Lcom/hunantv/media/player/subtitle/a/c;

    move-result-object v4

    iget-object v5, v1, Lcom/hunantv/media/player/subtitle/a/b;->p:[Ljava/lang/String;

    aput-object v3, v5, v2

    iget-object v3, v1, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    add-int/lit8 v5, v2, 0x1

    aput-object v4, v3, v2

    move v2, v5

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/hunantv/media/player/subtitle/d;->a(Lcom/hunantv/media/player/subtitle/d$a;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/subtitle/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/subtitle/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    return-void
.end method

.method public bridge synthetic c()Lcom/hunantv/media/player/subtitle/d$c;
    .locals 0

    invoke-super {p0}, Lcom/hunantv/media/player/subtitle/a/i;->c()Lcom/hunantv/media/player/subtitle/d$c;

    move-result-object p0

    return-object p0
.end method
