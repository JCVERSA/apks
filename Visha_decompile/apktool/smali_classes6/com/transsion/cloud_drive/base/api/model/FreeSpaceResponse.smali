.class public final Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lba5;
    generateAdapter = true
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;",
        "",
        "cloudSpaceSize",
        "",
        "effectiveDays",
        "",
        "bannerUrl",
        "",
        "(JILjava/lang/String;)V",
        "getBannerUrl",
        "()Ljava/lang/String;",
        "getCloudSpaceSize",
        "()J",
        "getEffectiveDays",
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
.field private final bannerUrl:Ljava/lang/String;

.field private final cloudSpaceSize:J

.field private final effectiveDays:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v5, 0x7

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;-><init>(JILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;)V
    .locals 1
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
    .param p4    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "bannerUrl"
        .end annotation
    .end param

    const-string v0, "bannerUrl"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->cloudSpaceSize:J

    .line 4
    iput p3, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->effectiveDays:I

    .line 5
    iput-object p4, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->bannerUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 6
    const-string p4, ""

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;-><init>(JILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;JILjava/lang/String;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->cloudSpaceSize:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p3, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->effectiveDays:I

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->bannerUrl:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->copy(JILjava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->cloudSpaceSize:J

    return-wide v0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->effectiveDays:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->bannerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(JILjava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;
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
    .param p4    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "bannerUrl"
        .end annotation
    .end param

    const-string p0, "bannerUrl"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;-><init>(JILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->cloudSpaceSize:J

    iget-wide v5, p1, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->cloudSpaceSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->effectiveDays:I

    iget v3, p1, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->effectiveDays:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->bannerUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->bannerUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBannerUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->bannerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getCloudSpaceSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->cloudSpaceSize:J

    return-wide v0
.end method

.method public final getEffectiveDays()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->effectiveDays:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->cloudSpaceSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->effectiveDays:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->bannerUrl:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->cloudSpaceSize:J

    iget v2, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->effectiveDays:I

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->bannerUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FreeSpaceResponse(cloudSpaceSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", effectiveDays="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bannerUrl="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
