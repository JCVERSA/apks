.class public final Lcom/cloud/hisavana/protocol/okhttptransport/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lys8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;
    .locals 4

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-wide/32 v2, 0x100000

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    new-instance p2, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/a$b;JLokhttp3/RequestBody;)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected definite length less than 1048576but got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
