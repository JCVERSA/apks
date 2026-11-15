.class public Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adCreativeId:Ljava/lang/String;

.field private appPackageName:Ljava/lang/String;

.field private clickType:I

.field private downloadCount:I

.field private extJson:Ljava/lang/String;

.field private gaid:Ljava/lang/String;

.field private transient iconUri:Landroid/net/Uri;

.field private iconUrl:Ljava/lang/String;

.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;",
            ">;"
        }
    .end annotation
.end field

.field private isOfflineAd:Z

.field private itemID:Ljava/lang/String;

.field private lan:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private safeTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SafeTagDTO;",
            ">;"
        }
    .end annotation
.end field

.field private score:Ljava/lang/String;

.field private showId:Ljava/lang/String;

.field private showTrackingSecretKey:Ljava/lang/String;

.field private simpleDescription:Ljava/lang/String;

.field private sourceSize:Ljava/lang/String;

.field private star:Ljava/lang/String;

.field private triggerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->clickType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->clickType:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->itemID:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->name:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->star:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->score:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->downloadCount:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->lan:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->iconUrl:Ljava/lang/String;

    .line 12
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->iconUri:Landroid/net/Uri;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->packageName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->simpleDescription:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->sourceSize:Ljava/lang/String;

    .line 16
    sget-object v1, Lcom/cloud/hisavana/sdk/common/bean/SafeTagDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->safeTag:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->gaid:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->showId:Ljava/lang/String;

    .line 19
    sget-object v1, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->imgList:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->appPackageName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->clickType:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->isOfflineAd:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->showTrackingSecretKey:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->triggerId:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->adCreativeId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->extJson:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getAdCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->adCreativeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->appPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->clickType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownloadCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->downloadCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->extJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->gaid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->iconUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->imgList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->itemID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLan()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->lan:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSafeTag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SafeTagDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->safeTag:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->score:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->showId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowTrackingSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->showTrackingSecretKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSimpleDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->simpleDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSourceSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->sourceSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->star:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->triggerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isOfflineAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->isOfflineAd:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAdCreativeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->adCreativeId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->appPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClickType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->clickType:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->downloadCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setExtJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->extJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->gaid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIconUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->iconUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->imgList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setItemID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->itemID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLan(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->lan:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->isOfflineAd:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSafeTag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SafeTagDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->safeTag:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->score:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->showId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTrackingSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->showTrackingSecretKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSimpleDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->simpleDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSourceSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->sourceSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->star:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTriggerId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->triggerId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PslinkInfo{triggerId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->triggerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", adCreativeId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->adCreativeId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", showId="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->showId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", extJson="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->extJson:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "}"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->itemID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->star:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->score:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->downloadCount:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->lan:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->iconUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->iconUri:Landroid/net/Uri;

    .line 37
    .line 38
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->simpleDescription:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->sourceSize:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->safeTag:Ljava/util/List;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->gaid:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->showId:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->imgList:Ljava/util/List;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->appPackageName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->clickType:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->isOfflineAd:Z

    .line 87
    .line 88
    int-to-byte p2, p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->showTrackingSecretKey:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->triggerId:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->adCreativeId:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->extJson:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
