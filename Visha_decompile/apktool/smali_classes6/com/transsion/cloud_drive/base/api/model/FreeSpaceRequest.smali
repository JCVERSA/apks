.class public final Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lba5;
    generateAdapter = true
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0008\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;",
        "",
        "mccMap",
        "Lcom/transsion/cloud_drive/base/api/request/MccMap;",
        "(Lcom/transsion/cloud_drive/base/api/request/MccMap;)V",
        "getMccMap",
        "()Lcom/transsion/cloud_drive/base/api/request/MccMap;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private final mccMap:Lcom/transsion/cloud_drive/base/api/request/MccMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;-><init>(Lcom/transsion/cloud_drive/base/api/request/MccMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/cloud_drive/base/api/request/MccMap;)V
    .locals 0
    .param p1    # Lcom/transsion/cloud_drive/base/api/request/MccMap;
        .annotation runtime Lv95;
            name = "mccMap"
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;->mccMap:Lcom/transsion/cloud_drive/base/api/request/MccMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/cloud_drive/base/api/request/MccMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;-><init>(Lcom/transsion/cloud_drive/base/api/request/MccMap;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;Lcom/transsion/cloud_drive/base/api/request/MccMap;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;->mccMap:Lcom/transsion/cloud_drive/base/api/request/MccMap;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;->copy(Lcom/transsion/cloud_drive/base/api/request/MccMap;)Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/cloud_drive/base/api/request/MccMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;->mccMap:Lcom/transsion/cloud_drive/base/api/request/MccMap;

    return-object p0
.end method

.method public final copy(Lcom/transsion/cloud_drive/base/api/request/MccMap;)Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;
    .locals 0
    .param p1    # Lcom/transsion/cloud_drive/base/api/request/MccMap;
        .annotation runtime Lv95;
            name = "mccMap"
        .end annotation
    .end param

    new-instance p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;

    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;-><init>(Lcom/transsion/cloud_drive/base/api/request/MccMap;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;->mccMap:Lcom/transsion/cloud_drive/base/api/request/MccMap;

    iget-object p1, p1, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;->mccMap:Lcom/transsion/cloud_drive/base/api/request/MccMap;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMccMap()Lcom/transsion/cloud_drive/base/api/request/MccMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;->mccMap:Lcom/transsion/cloud_drive/base/api/request/MccMap;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;->mccMap:Lcom/transsion/cloud_drive/base/api/request/MccMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/api/request/MccMap;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;->mccMap:Lcom/transsion/cloud_drive/base/api/request/MccMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FreeSpaceRequest(mccMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
