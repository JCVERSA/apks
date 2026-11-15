.class public Lcom/transsion/dbdata/beans/media/MediaBucket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;",
            ">;"
        }
    .end annotation
.end field

.field public static final URI_TYPE_IMG:I = 0x1

.field public static final URI_TYPE_MUSIC:I


# instance fields
.field public artist:Ljava/lang/String;

.field public bucketId:J

.field public count:I

.field public dateModified:J

.field public fromInternal:Z

.field public generateForVskitAd:Z

.field public index:I

.field public isCustomCover:Z

.field public isLabelFolder:Z

.field public isVirtualFolder:Z

.field public labelSrcId:Ljava/lang/String;

.field public mediaItemDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public parentName:Ljava/lang/String;

.field public parentPath:Ljava/lang/String;

.field public relativePath:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public uriType:I

.field public virtualFolderMatchName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    .line 3
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    .line 5
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    .line 9
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    .line 11
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    .line 15
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isLabelFolder:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->index:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->labelSrcId:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->dateModified:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->relativePath:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v0, v2

    :cond_3
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isCustomCover:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->artist:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v2, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iget-wide v4, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    iget-boolean v3, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    if-ne v2, v3, :cond_2

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    if-ne p1, p0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public getBucketId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    return-wide v0
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    return p0
.end method

.method public getDateModified()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->dateModified:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->index:I

    return p0
.end method

.method public getLabelSrcId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->labelSrcId:Ljava/lang/String;

    return-object p0
.end method

.method public getParentName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    return-object p0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->relativePath:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public getUriType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->uriType:I

    return p0
.end method

.method public getVirtualFolderMatchName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    return-object p0
.end method

.method public isContainPlayAudioItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContainPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;I)Z
    .locals 7

    const/16 v0, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_3

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    if-eqz p1, :cond_4

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iget-wide v5, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    cmp-long p2, v3, v5

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public isGenerateForVskitAd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->generateForVskitAd:Z

    return p0
.end method

.method public isLabelFolder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isLabelFolder:Z

    return p0
.end method

.method public isVirtualFolder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    return p0
.end method

.method public setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    return-object p0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    return-void
.end method

.method public setDateModified(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->dateModified:J

    return-void
.end method

.method public setFromInternal(Z)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    return-object p0
.end method

.method public setGenerateForVskitAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->generateForVskitAd:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->index:I

    return-void
.end method

.method public setLabelFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isLabelFolder:Z

    return-void
.end method

.method public setLabelSrcId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->labelSrcId:Ljava/lang/String;

    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    return-void
.end method

.method public setParentPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    return-void
.end method

.method public setRelativePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->relativePath:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    return-void
.end method

.method public setUriType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->uriType:I

    return-void
.end method

.method public setVirtualFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    return-void
.end method

.method public setVirtualFolderMatchName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaBucket{bucketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dateModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->dateModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", parentName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", parentPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", relativePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLabelFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isLabelFolder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mediaItemDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->mediaItemDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isVirtualFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isLabelFolder:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isVirtualFolder:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->labelSrcId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->dateModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->relativePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->isCustomCover:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
