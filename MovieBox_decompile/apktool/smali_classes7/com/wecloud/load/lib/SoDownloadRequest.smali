.class public final Lcom/wecloud/load/lib/SoDownloadRequest;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\r\u001a\u00020\u000eJ\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J%\u0010\u0011\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0006\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0013R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/wecloud/load/lib/SoDownloadRequest;",
        "Landroid/os/Parcelable;",
        "soZipList",
        "",
        "Lcom/wecloud/load/lib/bean/SoZipInfo;",
        "controlConfig",
        "Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
        "<init>",
        "(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V",
        "getSoZipList",
        "()Ljava/util/List;",
        "getControlConfig",
        "()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
        "isValid",
        "",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wecloud/load/lib/SoDownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

.field private final soZipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wecloud/load/lib/SoDownloadRequest$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wecloud/load/lib/SoDownloadRequest$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wecloud/load/lib/SoDownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;",
            "Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
            ")V"
        }
    .end annotation

    const-string v0, "soZipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/wecloud/load/lib/SoDownloadRequest;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/wecloud/load/lib/SoDownloadRequest;Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;ILjava/lang/Object;)Lcom/wecloud/load/lib/SoDownloadRequest;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/wecloud/load/lib/SoDownloadRequest;->copy(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)Lcom/wecloud/load/lib/SoDownloadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;",
            "Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
            ")",
            "Lcom/wecloud/load/lib/SoDownloadRequest;"
        }
    .end annotation

    .line 1
    const-string v0, "soZipList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/wecloud/load/lib/SoDownloadRequest;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getControlConfig()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSoZipList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wecloud/load/lib/bean/SoZipInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public final isValid()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/Iterable;

    .line 14
    .line 15
    instance-of v2, v0, Ljava/util/Collection;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    :cond_1
    move v1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/wecloud/load/lib/bean/SoZipInfo;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getZip_url()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/wecloud/load/lib/bean/SoZipInfo;->getSo_names()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/util/Collection;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    :cond_4
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "SoDownloadRequest(soZipList="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", controlConfig="

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->soZipList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/wecloud/load/lib/bean/SoZipInfo;

    .line 30
    .line 31
    invoke-virtual {v1, p1, p2}, Lcom/wecloud/load/lib/bean/SoZipInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoDownloadRequest;->controlConfig:Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method
