.class public final Lcom/transsion/cloud/region_host/model/DomainMappingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/region_host/model/DomainMappingData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB7\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003JE\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u0006\u0010\u001a\u001a\u00020\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/cloud/region_host/model/DomainMappingData;",
        "",
        "cloudServerWebUrlTecno",
        "",
        "cloudServerWebUrlInfinix",
        "cloudServerWebUrlItel",
        "cloudDiskWeb",
        "cloudServer",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCloudDiskWeb",
        "()Ljava/lang/String;",
        "getCloudServer",
        "getCloudServerWebUrlInfinix",
        "getCloudServerWebUrlItel",
        "getCloudServerWebUrlTecno",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toJson",
        "toString",
        "Companion",
        "lib-region-host_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/cloud/region_host/model/DomainMappingData$Companion;


# instance fields
.field private final cloudDiskWeb:Ljava/lang/String;

.field private final cloudServer:Ljava/lang/String;

.field private final cloudServerWebUrlInfinix:Ljava/lang/String;

.field private final cloudServerWebUrlItel:Ljava/lang/String;

.field private final cloudServerWebUrlTecno:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud/region_host/model/DomainMappingData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud/region_host/model/DomainMappingData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->Companion:Lcom/transsion/cloud/region_host/model/DomainMappingData$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlTecno:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlInfinix:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlItel:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudDiskWeb:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServer:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud/region_host/model/DomainMappingData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/cloud/region_host/model/DomainMappingData;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlTecno:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlInfinix:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlItel:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudDiskWeb:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServer:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/cloud/region_host/model/DomainMappingData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud/region_host/model/DomainMappingData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlTecno:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlInfinix:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlItel:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudDiskWeb:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServer:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud/region_host/model/DomainMappingData;
    .locals 6

    new-instance p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud/region_host/model/DomainMappingData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud/region_host/model/DomainMappingData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud/region_host/model/DomainMappingData;

    iget-object v1, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlTecno:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlTecno:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlInfinix:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlInfinix:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlItel:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlItel:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudDiskWeb:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudDiskWeb:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServer:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServer:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCloudDiskWeb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudDiskWeb:Ljava/lang/String;

    return-object p0
.end method

.method public final getCloudServer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServer:Ljava/lang/String;

    return-object p0
.end method

.method public final getCloudServerWebUrlInfinix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlInfinix:Ljava/lang/String;

    return-object p0
.end method

.method public final getCloudServerWebUrlItel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlItel:Ljava/lang/String;

    return-object p0
.end method

.method public final getCloudServerWebUrlTecno()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlTecno:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlTecno:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlInfinix:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlItel:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudDiskWeb:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServer:Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->Companion:Lcom/transsion/cloud/region_host/model/DomainMappingData$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud/region_host/model/DomainMappingData$Companion;->toJson(Lcom/transsion/cloud/region_host/model/DomainMappingData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlTecno:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlInfinix:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServerWebUrlItel:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudDiskWeb:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloud/region_host/model/DomainMappingData;->cloudServer:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DomainMappingData(cloudServerWebUrlTecno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cloudServerWebUrlInfinix="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cloudServerWebUrlItel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cloudDiskWeb="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cloudServer="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
