.class public final Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lba5;
    generateAdapter = true
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;",
        "",
        "cloudSpaceSize",
        "",
        "effectiveDays",
        "",
        "(JI)V",
        "getCloudSpaceSize",
        "()J",
        "getEffectiveDays",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final cloudSpaceSize:J

.field private final effectiveDays:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;-><init>(JIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .param p1    # J
        .annotation runtime Lv95;
            name = "cloudSpaceSize"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lv95;
            name = "effectiveDays"
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->cloudSpaceSize:J

    .line 4
    iput p3, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->effectiveDays:I

    return-void
.end method

.method public synthetic constructor <init>(JIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;-><init>(JI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;JIILjava/lang/Object;)Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->cloudSpaceSize:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget p3, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->effectiveDays:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->copy(JI)Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->cloudSpaceSize:J

    return-wide v0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->effectiveDays:I

    return p0
.end method

.method public final copy(JI)Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;
    .locals 0
    .param p1    # J
        .annotation runtime Lv95;
            name = "cloudSpaceSize"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lv95;
            name = "effectiveDays"
        .end annotation
    .end param

    new-instance p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;-><init>(JI)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;

    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->cloudSpaceSize:J

    iget-wide v5, p1, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->cloudSpaceSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->effectiveDays:I

    iget p1, p1, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->effectiveDays:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCloudSpaceSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->cloudSpaceSize:J

    return-wide v0
.end method

.method public final getEffectiveDays()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->effectiveDays:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->cloudSpaceSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->effectiveDays:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->cloudSpaceSize:J

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;->effectiveDays:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReceiveFreeSpaceResponse(cloudSpaceSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", effectiveDays="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
