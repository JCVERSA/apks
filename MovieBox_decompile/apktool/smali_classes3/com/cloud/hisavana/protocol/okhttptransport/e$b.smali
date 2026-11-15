.class final Lcom/cloud/hisavana/protocol/okhttptransport/e$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/protocol/okhttptransport/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p2, v0, v2

    .line 8
    .line 9
    if-ltz p2, :cond_0

    .line 10
    .line 11
    const-wide/32 v2, 0x100000

    .line 12
    .line 13
    .line 14
    cmp-long p2, v0, v2

    .line 15
    .line 16
    if-gtz p2, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/cloud/hisavana/protocol/okhttptransport/e$b$a;

    .line 19
    .line 20
    invoke-direct {p2, p0, v0, v1, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/e$b$a;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/e$b;JLokhttp3/RequestBody;)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Expected definite length less than 1048576but got "

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method
