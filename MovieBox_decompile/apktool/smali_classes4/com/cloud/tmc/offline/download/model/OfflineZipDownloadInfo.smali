.class public final Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0080\u0008\u0018\u0000 +2\u00020\u00012\u00020\u0002:\u0001+B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B3\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\nH\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J7\u0010 \u001a\u00020\u00002\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001J\u0008\u0010!\u001a\u00020\nH\u0016J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u00d6\u0003J\t\u0010&\u001a\u00020\nH\u00d6\u0001J\t\u0010\'\u001a\u00020\u0007H\u00d6\u0001J\u0018\u0010(\u001a\u00020)2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\nH\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017\"\u0004\u0008\u001b\u0010\u0019\u00a8\u0006,"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "url",
        "",
        "zipUnCompressPath",
        "status",
        "",
        "manifest",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;)V",
        "getManifest",
        "()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "setManifest",
        "(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "getZipUnCompressPath",
        "setZipUnCompressPath",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo$CREATOR;


# instance fields
.field private manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

.field private status:I

.field private url:Ljava/lang/String;

.field private zipUnCompressPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo$CREATOR;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->CREATOR:Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo$CREATOR;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11
    const-class v3, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 12
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->url:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->zipUnCompressPath:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->status:I

    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 2
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->url:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->zipUnCompressPath:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->status:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->copy(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->zipUnCompressPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public describeContents()I
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
    instance-of v1, p1, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

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
    check-cast p1, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->url:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->url:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->zipUnCompressPath:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->zipUnCompressPath:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->status:I

    .line 36
    .line 37
    iget v3, p1, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->status:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 45
    .line 46
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    return v0
.end method

.method public final getManifest()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getZipUnCompressPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->zipUnCompressPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->zipUnCompressPath:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v2, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->status:I

    .line 28
    .line 29
    add-int/2addr v0, v2

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :goto_2
    add-int/2addr v0, v1

    .line 42
    return v0
.end method

.method public final setManifest(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->status:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setZipUnCompressPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->zipUnCompressPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->zipUnCompressPath:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->status:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "OfflineZipDownloadInfo(url="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", zipUnCompressPath="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", status="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", manifest="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->url:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->zipUnCompressPath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->status:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->manifest:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
