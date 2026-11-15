.class public final Lcom/transsion/cloud_drive/base/network/response/BaseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001a\u0008\u0086\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002BC\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0003\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u000bH\u00c6\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00018\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011JR\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0003\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0003\u0010\n\u001a\u00020\u000b2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00018\u0000H\u00c6\u0001\u00a2\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\u000b2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010#\u001a\u00020\u0004H\u00d6\u0001J\t\u0010$\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0015\u0010\u000c\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/network/response/BaseResult;",
        "T",
        "",
        "code",
        "",
        "message",
        "",
        "requestId",
        "timestamp",
        "",
        "isEncrypt",
        "",
        "data",
        "(ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;)V",
        "getCode",
        "()I",
        "getData",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "()Z",
        "getMessage",
        "()Ljava/lang/String;",
        "getRequestId",
        "getTimestamp",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/BaseResult;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final code:I

.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final isEncrypt:Z

.field private final message:Ljava/lang/String;

.field private final requestId:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lv95;
            name = "code"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "message"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "requestId"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lv95;
            name = "timestamp"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lv95;
            name = "isEncrypt"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lv95;
            name = "data"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZTT;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->code:I

    .line 3
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->message:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->requestId:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->timestamp:J

    .line 6
    iput-boolean p6, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->isEncrypt:Z

    .line 7
    iput-object p7, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->data:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 v0, p8, 0x2

    .line 8
    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v2, p8, 0x8

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_2
    move-wide v2, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    move v4, p6

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move-object v5, p7

    :goto_4
    move-object p2, p0

    move p3, p1

    move-object p4, v0

    move-object p5, v1

    move-wide p6, v2

    move p8, v4

    move-object p9, v5

    invoke-direct/range {p2 .. p9}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;-><init>(ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud_drive/base/network/response/BaseResult;ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/BaseResult;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->code:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->message:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->requestId:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->timestamp:J

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p6, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->isEncrypt:Z

    :cond_4
    move v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->data:Ljava/lang/Object;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move-object p4, p9

    move-object p5, v0

    move-wide p6, v1

    move p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->copy(ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->code:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->timestamp:J

    return-wide v0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->isEncrypt:Z

    return p0
.end method

.method public final component6()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;)Lcom/transsion/cloud_drive/base/network/response/BaseResult;
    .locals 8
    .param p1    # I
        .annotation runtime Lv95;
            name = "code"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "message"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "requestId"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lv95;
            name = "timestamp"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lv95;
            name = "isEncrypt"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation runtime Lv95;
            name = "data"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZTT;)",
            "Lcom/transsion/cloud_drive/base/network/response/BaseResult<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "message"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "requestId"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/transsion/cloud_drive/base/network/response/BaseResult;-><init>(ILjava/lang/String;Ljava/lang/String;JZLjava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;

    iget v1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->code:I

    iget v3, p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->code:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->requestId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->requestId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->timestamp:J

    iget-wide v5, p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->isEncrypt:Z

    iget-boolean v3, p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->isEncrypt:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->data:Ljava/lang/Object;

    iget-object p1, p1, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->data:Ljava/lang/Object;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->code:I

    return p0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->requestId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->isEncrypt:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->data:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isEncrypt()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->isEncrypt:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->code:I

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->requestId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->timestamp:J

    iget-boolean v5, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->isEncrypt:Z

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/network/response/BaseResult;->data:Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BaseResult(code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", requestId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isEncrypt="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
