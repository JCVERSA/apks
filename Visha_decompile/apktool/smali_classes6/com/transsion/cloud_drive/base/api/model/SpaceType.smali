.class public final Lcom/transsion/cloud_drive/base/api/model/SpaceType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/SpaceType;",
        "",
        "type",
        "",
        "size",
        "",
        "expirationTime",
        "(IJJ)V",
        "getExpirationTime",
        "()J",
        "getSize",
        "getType",
        "()I",
        "component1",
        "component2",
        "component3",
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
.field private final expirationTime:J

.field private final size:J

.field private final type:I


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0
    .param p1    # I
        .annotation runtime Lv95;
            name = "spaceType"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lv95;
            name = "spaceSize"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lv95;
            name = "expirationTime"
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->type:I

    .line 3
    iput-wide p2, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->size:J

    .line 4
    iput-wide p4, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->expirationTime:J

    return-void
.end method

.method public synthetic constructor <init>(IJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p7, p6, 0x2

    const-wide/16 v0, 0x0

    if-eqz p7, :cond_0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    move-wide v4, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-wide v6, v0

    goto :goto_1

    :cond_1
    move-wide v6, p4

    :goto_1
    move-object v2, p0

    move v3, p1

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloud_drive/base/api/model/SpaceType;-><init>(IJJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud_drive/base/api/model/SpaceType;IJJILjava/lang/Object;)Lcom/transsion/cloud_drive/base/api/model/SpaceType;
    .locals 2

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->type:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->size:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p4, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->expirationTime:J

    :cond_2
    move-wide p6, p4

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->copy(IJJ)Lcom/transsion/cloud_drive/base/api/model/SpaceType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->type:I

    return p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->size:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->expirationTime:J

    return-wide v0
.end method

.method public final copy(IJJ)Lcom/transsion/cloud_drive/base/api/model/SpaceType;
    .locals 6
    .param p1    # I
        .annotation runtime Lv95;
            name = "spaceType"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lv95;
            name = "spaceSize"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lv95;
            name = "expirationTime"
        .end annotation
    .end param

    new-instance p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud_drive/base/api/model/SpaceType;-><init>(IJJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud_drive/base/api/model/SpaceType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/SpaceType;

    iget v1, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->type:I

    iget v3, p1, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->size:J

    iget-wide v5, p1, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->expirationTime:J

    iget-wide p0, p1, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->expirationTime:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->expirationTime:J

    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->size:J

    return-wide v0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->expirationTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->type:I

    iget-wide v1, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->size:J

    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceType;->expirationTime:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpaceType(type="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", expirationTime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
