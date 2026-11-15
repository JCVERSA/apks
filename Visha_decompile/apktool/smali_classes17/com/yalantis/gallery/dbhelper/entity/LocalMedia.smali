.class public Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Ldc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldc7;"
        }
    .end annotation
.end field


# instance fields
.field private bucketId:J

.field private chooseModel:I

.field private compareLocalMedia:Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

.field private compressPath:Ljava/lang/String;

.field private compressed:Z

.field private cropImageHeight:I

.field private cropImageWidth:I

.field private cropOffsetX:I

.field private cropOffsetY:I

.field private cropResultAspectRatio:F

.field private customData:Ljava/lang/String;

.field private cutPath:Ljava/lang/String;

.field private dateAddedTime:J

.field private duration:J

.field private fileName:Ljava/lang/String;

.field private height:I

.field private id:J

.field private isChecked:Z

.field private isCut:Z

.field private isEditorImage:Z

.field private isGalleryEnabledMask:Z

.field private isMaxSelectEnabledMask:Z

.field private isOriginal:Z

.field private mimeType:Ljava/lang/String;

.field private num:I

.field private originalPath:Ljava/lang/String;

.field private parentFolderName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field public position:I

.field private realPath:Ljava/lang/String;

.field private sandboxPath:Ljava/lang/String;

.field private size:J

.field private videoThumbnailPath:Ljava/lang/String;

.field private watermarkPath:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia$a;

    invoke-direct {v0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia$a;-><init>()V

    sput-object v0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->bucketId:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->bucketId:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->id:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->path:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->realPath:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->originalPath:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->compressPath:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cutPath:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->watermarkPath:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->videoThumbnailPath:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->duration:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isChecked:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isCut:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->position:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->num:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->mimeType:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->chooseModel:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->compressed:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->width:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->height:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropImageWidth:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropImageHeight:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropOffsetX:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropOffsetY:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropResultAspectRatio:F

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->size:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isOriginal:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->fileName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->bucketId:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->dateAddedTime:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->customData:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isMaxSelectEnabledMask:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isGalleryEnabledMask:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isEditorImage:Z

    return-void
.end method

.method public static create()Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;
    .locals 1

    new-instance v0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    invoke-direct {v0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;-><init>()V

    return-object v0
.end method

.method public static destroyPool()V
    .locals 1

    sget-object v0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->sPool:Ldc7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldc7;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->sPool:Ldc7;

    :cond_0
    return-void
.end method

.method public static generateHttpAsLocalMedia(Ljava/lang/String;Ljava/lang/String;)Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;
    .locals 1

    invoke-static {}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->create()Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateLocalMedia(Ljava/lang/String;Ljava/lang/String;)Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->create()Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    return-object v0
.end method

.method public static obtain()Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;
    .locals 1

    sget-object v0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->sPool:Ldc7;

    if-nez v0, :cond_0

    new-instance v0, Ldc7;

    invoke-direct {v0}, Ldc7;-><init>()V

    sput-object v0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->sPool:Ldc7;

    :cond_0
    sget-object v0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->sPool:Ldc7;

    invoke-virtual {v0}, Ldc7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->create()Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->compareLocalMedia:Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    return v0
.end method

.method public getAvailablePath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isCut()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isCompressed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isToSandboxPath()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getSandboxPath()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isOriginal()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isWatermarkPath()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getWatermarkPath()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public getBucketId()J
    .locals 2

    iget-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->bucketId:J

    return-wide v0
.end method

.method public getChooseModel()I
    .locals 0

    iget p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->chooseModel:I

    return p0
.end method

.method public getCompareLocalMedia()Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->compareLocalMedia:Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    return-object p0
.end method

.method public getCompressPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->compressPath:Ljava/lang/String;

    return-object p0
.end method

.method public getCropImageHeight()I
    .locals 0

    iget p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropImageHeight:I

    return p0
.end method

.method public getCropImageWidth()I
    .locals 0

    iget p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropImageWidth:I

    return p0
.end method

.method public getCropOffsetX()I
    .locals 0

    iget p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropOffsetX:I

    return p0
.end method

.method public getCropOffsetY()I
    .locals 0

    iget p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropOffsetY:I

    return p0
.end method

.method public getCropResultAspectRatio()F
    .locals 0

    iget p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropResultAspectRatio:F

    return p0
.end method

.method public getCustomData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->customData:Ljava/lang/String;

    return-object p0
.end method

.method public getCutPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cutPath:Ljava/lang/String;

    return-object p0
.end method

.method public getDateAddedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->dateAddedTime:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->duration:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->height:I

    return p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->id:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getNum()I
    .locals 0

    iget p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->num:I

    return p0
.end method

.method public getOriginalPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->originalPath:Ljava/lang/String;

    return-object p0
.end method

.method public getParentFolderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->position:I

    return p0
.end method

.method public getRealPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->realPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSandboxPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->size:J

    return-wide v0
.end method

.method public getVideoThumbnailPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->videoThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public getWatermarkPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->watermarkPath:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->width:I

    return p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isChecked:Z

    return p0
.end method

.method public isCompressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->compressed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isCut:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEditorImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isEditorImage:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGalleryEnabledMask()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isGalleryEnabledMask:Z

    return p0
.end method

.method public isMaxSelectEnabledMask()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isMaxSelectEnabledMask:Z

    return p0
.end method

.method public isOriginal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isOriginal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getOriginalPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isToSandboxPath()Z
    .locals 0

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getSandboxPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isWatermarkPath()Z
    .locals 0

    invoke-virtual {p0}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getWatermarkPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public recycle()V
    .locals 1

    sget-object v0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->sPool:Ldc7;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ldc7;->d(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBucketId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->bucketId:J

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isChecked:Z

    return-void
.end method

.method public setChooseModel(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->chooseModel:I

    return-void
.end method

.method public setCompressPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->compressPath:Ljava/lang/String;

    return-void
.end method

.method public setCompressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->compressed:Z

    return-void
.end method

.method public setCropImageHeight(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropImageHeight:I

    return-void
.end method

.method public setCropImageWidth(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropImageWidth:I

    return-void
.end method

.method public setCropOffsetX(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropOffsetX:I

    return-void
.end method

.method public setCropOffsetY(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropOffsetY:I

    return-void
.end method

.method public setCropResultAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropResultAspectRatio:F

    return-void
.end method

.method public setCustomData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->customData:Ljava/lang/String;

    return-void
.end method

.method public setCut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isCut:Z

    return-void
.end method

.method public setCutPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cutPath:Ljava/lang/String;

    return-void
.end method

.method public setDateAddedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->dateAddedTime:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->duration:J

    return-void
.end method

.method public setEditorImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isEditorImage:Z

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setGalleryEnabledMask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isGalleryEnabledMask:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->height:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->id:J

    return-void
.end method

.method public setMaxSelectEnabledMask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isMaxSelectEnabledMask:Z

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setNum(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->num:I

    return-void
.end method

.method public setOriginal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isOriginal:Z

    return-void
.end method

.method public setOriginalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->originalPath:Ljava/lang/String;

    return-void
.end method

.method public setParentFolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->path:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->position:I

    return-void
.end method

.method public setRealPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->realPath:Ljava/lang/String;

    return-void
.end method

.method public setSandboxPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->size:J

    return-void
.end method

.method public setVideoThumbnailPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->videoThumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public setWatermarkPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->watermarkPath:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->realPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->originalPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->compressPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cutPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->watermarkPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->videoThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isChecked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isCut:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->num:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->chooseModel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->compressed:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropImageWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropImageHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropOffsetX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropOffsetY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->cropResultAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isOriginal:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->bucketId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->dateAddedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->customData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isMaxSelectEnabledMask:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isGalleryEnabledMask:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p0, p0, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->isEditorImage:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
