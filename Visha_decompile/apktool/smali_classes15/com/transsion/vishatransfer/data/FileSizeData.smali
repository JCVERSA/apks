.class public final Lcom/transsion/vishatransfer/data/FileSizeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/data/FileSizeData;",
        "",
        "totalFileSize",
        "",
        "<init>",
        "(J)V",
        "getTotalFileSize",
        "()J",
        "setTotalFileSize",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "vishatransferlib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private totalFileSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/transsion/vishatransfer/data/FileSizeData;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/vishatransfer/data/FileSizeData;->totalFileSize:J

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishatransfer/data/FileSizeData;-><init>(J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/vishatransfer/data/FileSizeData;JILjava/lang/Object;)Lcom/transsion/vishatransfer/data/FileSizeData;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/transsion/vishatransfer/data/FileSizeData;->totalFileSize:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfer/data/FileSizeData;->copy(J)Lcom/transsion/vishatransfer/data/FileSizeData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishatransfer/data/FileSizeData;->totalFileSize:J

    return-wide v0
.end method

.method public final copy(J)Lcom/transsion/vishatransfer/data/FileSizeData;
    .locals 0

    new-instance p0, Lcom/transsion/vishatransfer/data/FileSizeData;

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishatransfer/data/FileSizeData;-><init>(J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/vishatransfer/data/FileSizeData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/vishatransfer/data/FileSizeData;

    iget-wide v3, p0, Lcom/transsion/vishatransfer/data/FileSizeData;->totalFileSize:J

    iget-wide p0, p1, Lcom/transsion/vishatransfer/data/FileSizeData;->totalFileSize:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTotalFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishatransfer/data/FileSizeData;->totalFileSize:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishatransfer/data/FileSizeData;->totalFileSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final setTotalFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/vishatransfer/data/FileSizeData;->totalFileSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/transsion/vishatransfer/data/FileSizeData;->totalFileSize:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileSizeData(totalFileSize="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
