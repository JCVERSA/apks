.class public final Lcom/transsion/cloud_drive/base/api/model/CloudConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;,
        Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB\'\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J+\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/CloudConfig;",
        "",
        "checksum",
        "",
        "networkStandardMap",
        "Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;",
        "autoDeleteConfig",
        "Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;",
        "(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;)V",
        "getAutoDeleteConfig",
        "()Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;",
        "getChecksum",
        "()Ljava/lang/String;",
        "getNetworkStandardMap",
        "()Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "AutoDeleteConfig",
        "NetworkStandardMap",
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
.field private final autoDeleteConfig:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;
    .annotation runtime Lv95;
        name = "auto_delete_config"
    .end annotation
.end field

.field private final checksum:Ljava/lang/String;
    .annotation runtime Lv95;
        name = "checksum"
    .end annotation
.end field

.field private final networkStandardMap:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;
    .annotation runtime Lv95;
        name = "network_standard_map"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;-><init>(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;)V
    .locals 1

    const-string v0, "checksum"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->checksum:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->networkStandardMap:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;

    .line 5
    iput-object p3, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->autoDeleteConfig:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 6
    const-string p1, ""

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;-><init>(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud_drive/base/api/model/CloudConfig;Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/api/model/CloudConfig;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->checksum:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->networkStandardMap:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->autoDeleteConfig:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->copy(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;)Lcom/transsion/cloud_drive/base/api/model/CloudConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->checksum:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->networkStandardMap:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;

    return-object p0
.end method

.method public final component3()Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->autoDeleteConfig:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;)Lcom/transsion/cloud_drive/base/api/model/CloudConfig;
    .locals 0

    const-string p0, "checksum"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;-><init>(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->checksum:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->checksum:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->networkStandardMap:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->networkStandardMap:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->autoDeleteConfig:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    iget-object p1, p1, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->autoDeleteConfig:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAutoDeleteConfig()Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->autoDeleteConfig:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    return-object p0
.end method

.method public final getChecksum()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->checksum:Ljava/lang/String;

    return-object p0
.end method

.method public final getNetworkStandardMap()Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->networkStandardMap:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->checksum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->networkStandardMap:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->autoDeleteConfig:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->checksum:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->networkStandardMap:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig;->autoDeleteConfig:Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudConfig(checksum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", networkStandardMap="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", autoDeleteConfig="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
