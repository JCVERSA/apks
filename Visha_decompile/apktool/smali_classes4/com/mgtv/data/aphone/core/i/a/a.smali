.class public Lcom/mgtv/data/aphone/core/i/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:S

.field public b:B

.field public c:I


# direct methods
.method public constructor <init>(BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short p2, p2

    iput-short p2, p0, Lcom/mgtv/data/aphone/core/i/a/a;->a:S

    iput-byte p1, p0, Lcom/mgtv/data/aphone/core/i/a/a;->b:B

    const/4 p1, -0x1

    iput p1, p0, Lcom/mgtv/data/aphone/core/i/a/a;->c:I

    return-void
.end method

.method public static a([B)Lcom/mgtv/data/aphone/core/i/a/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/mgtv/data/aphone/core/i/a/a;

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/hunantv/imgo/log/a;->a([BI)S

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mgtv/data/aphone/core/i/a/a;-><init>(BI)V

    const/4 v1, 0x3

    .line 2
    invoke-static {p0, v1}, Lcom/hunantv/imgo/log/a;->b([BI)I

    move-result p0

    iput p0, v0, Lcom/mgtv/data/aphone/core/i/a/a;->c:I

    return-object v0
.end method

.method public static c()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method


# virtual methods
.method public a()[B
    .locals 3

    .line 3
    invoke-static {}, Lcom/mgtv/data/aphone/core/i/a/a;->c()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 4
    iget-byte v2, p0, Lcom/mgtv/data/aphone/core/i/a/a;->b:B

    aput-byte v2, v0, v1

    .line 5
    iget-short p0, p0, Lcom/mgtv/data/aphone/core/i/a/a;->a:S

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/hunantv/imgo/log/a;->a([BSI)V

    const/4 p0, -0x1

    const/4 v1, 0x3

    .line 6
    invoke-static {v0, p0, v1}, Lcom/hunantv/imgo/log/a;->a([BII)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-short v0, p0, Lcom/mgtv/data/aphone/core/i/a/a;->a:S

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/mgtv/data/aphone/core/i/a/a;->c:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtocolStruct [length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/mgtv/data/aphone/core/i/a/a;->a:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/mgtv/data/aphone/core/i/a/a;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eof="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mgtv/data/aphone/core/i/a/a;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
