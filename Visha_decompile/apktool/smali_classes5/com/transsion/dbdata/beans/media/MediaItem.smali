.class public Lcom/transsion/dbdata/beans/media/MediaItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field public static final ORIENTATION_UNDEFINED:I = -0x1


# instance fields
.field public bucketDisplayName:Ljava/lang/String;

.field public bucketId:J

.field public data:Ljava/lang/String;

.field public dateAdd:J

.field public dateModified:J

.field public dateToken:J

.field public defaultCover:Landroid/graphics/Bitmap;

.field private degree:I

.field public displayName:Ljava/lang/String;

.field public duration:J

.field public fromInternal:Z

.field public height:I

.field public id:I

.field public isConvertedFailed:I

.field public isDamaged:Z

.field public isExist:Z

.field public isFavorite:Z

.field public isKtFile:Z

.field public isMusicVideo:Z

.field public isPlayComplete:Z

.field public isSelected:Z

.field public isTimeItem:Z

.field public isVirtualFolder:Z

.field public isYoutubeUrl:Z

.field public lastModified:J

.field public mIsMediaTionAd:Z

.field mIsParsed:Z

.field private mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

.field public md5Str:Ljava/lang/String;

.field public mediaType:I

.field public mineType:Ljava/lang/String;

.field public num:I

.field private orientation:I

.field public originUrl:Ljava/lang/String;

.field public parentPath:Ljava/lang/String;

.field public playCount:I

.field public playPosition:I

.field public recordDateModified:J

.field public relativePath:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public selectedPos:I

.field public size:J

.field public subtitleIndex:I

.field public thumbnailUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

.field public uploaderName:Ljava/lang/String;

.field public transient uri:Landroid/net/Uri;

.field public virtualFolderMatchName:Ljava/lang/String;

.field public virtualFolderMatchPath:Ljava/lang/String;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/beans/media/MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 3
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isExist:Z

    .line 6
    sget-object v2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    .line 7
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    .line 8
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    .line 10
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    .line 11
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isExist:Z

    .line 17
    sget-object v2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    .line 18
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    .line 19
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    .line 21
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    .line 22
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    .line 23
    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 24
    iput-wide p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;JJLandroid/net/Uri;)V
    .locals 4

    move-object v0, p0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 53
    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 54
    const-string v2, ""

    iput-object v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    .line 55
    iput-object v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v3, 0x1

    .line 56
    iput-boolean v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isExist:Z

    .line 57
    sget-object v3, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iput-object v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    .line 58
    iput-object v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    .line 59
    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    const/4 v2, -0x1

    .line 60
    iput v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    .line 61
    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    .line 62
    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    move v1, p1

    .line 63
    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    move-wide v1, p2

    .line 64
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    move-object v1, p4

    .line 65
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    move-object v1, p5

    .line 66
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    move-object v1, p6

    .line 67
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    move-object v1, p7

    .line 68
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    move-object v1, p8

    .line 69
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    move-wide v1, p9

    .line 70
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    move-wide v1, p11

    .line 71
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    move-wide/from16 v1, p13

    .line 72
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    move-object/from16 v1, p15

    .line 73
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    move-wide/from16 v1, p16

    .line 74
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    move-wide/from16 v1, p18

    .line 75
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    move-object/from16 v1, p20

    .line 76
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(IJZLjava/lang/String;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isExist:Z

    .line 30
    sget-object v2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    .line 31
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    .line 32
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    .line 34
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    .line 35
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    .line 36
    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 37
    iput-wide p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    .line 38
    iput-boolean p4, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    .line 39
    iput-object p5, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 79
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v2, 0x1

    .line 81
    iput-boolean v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isExist:Z

    .line 82
    sget-object v3, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    .line 83
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    .line 84
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    const/4 v3, -0x1

    .line 85
    iput v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    .line 86
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    .line 87
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->recordDateModified:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    iput-boolean v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    iput-boolean v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uploaderName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_4
    iput-boolean v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isConvertedFailed:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, v3

    .line 113
    :goto_5
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->degree:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_6

    move v0, v2

    :cond_6
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    .line 117
    const-class v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 42
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v2, 0x1

    .line 44
    iput-boolean v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isExist:Z

    .line 45
    sget-object v2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    .line 46
    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    .line 47
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    .line 49
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    .line 50
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    .line 51
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    return-void
.end method

.method public static copy(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uploaderName:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uploaderName:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isConvertedFailed:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isConvertedFailed:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->degree:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->degree:I

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->recordDateModified:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->recordDateModified:J

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->lastModified:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->lastModified:J

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isDamaged:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isDamaged:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->defaultCover:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->defaultCover:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->subtitleIndex:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->subtitleIndex:I

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    iput p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static getUri(IZ)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getUriStringSafely(IZ)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri(IZ)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loadResolution()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    invoke-static {v1}, Lge6;->w(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    aget v0, v1, v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    :cond_1
    return-void
.end method


# virtual methods
.method public clearDefaultCover()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->defaultCover:Landroid/graphics/Bitmap;

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v2, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    iget-wide v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-wide v4, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-ne p1, p0, :cond_4

    move v1, v0

    :cond_4
    return v1
.end method

.method public getDefaultCover()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->defaultCover:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDegree()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->degree:I

    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lzu3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzu3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->loadResolution()V

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    return p0
.end method

.method public getIsMediaTionAd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    return p0
.end method

.method public getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    return p0
.end method

.method public getPlayPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    return p0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectedPos()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    return p0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTransUri()Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "external"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    invoke-static {v0, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri(IZ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getVideoRatio()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getHeight()I

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3ffb333333333333L    # 1.7

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-string p0, "16:9"

    goto :goto_0

    :cond_0
    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    const-string p0, "4:3"

    goto :goto_0

    :cond_1
    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    const-string p0, "3:4"

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    const-string p0, "9:16"

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p0, "unknown"

    :goto_0
    return-object p0
.end method

.method public getVirtualFolderMatchName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    return-object p0
.end method

.method public getVirtualFolderMatchPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->loadResolution()V

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    return p0
.end method

.method public isDamaged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isDamaged:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    return p0
.end method

.method public isVirtualFolder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    return p0
.end method

.method public setConvertedFailed(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isConvertedFailed:I

    return-void
.end method

.method public setDamaged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isDamaged:Z

    return-void
.end method

.method public setDefaultCover(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->defaultCover:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDegree(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->degree:I

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setFromInternal(Z)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    return-object p0
.end method

.method public setIsMediaTionAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    return-void
.end method

.method public setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    return-void
.end method

.method public setRelativePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    return-void
.end method

.method public setSelectedPos(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    return-void
.end method

.method public setSubtitleIndex(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->subtitleIndex:I

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    return-void
.end method

.method public setVirtualFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    return-void
.end method

.method public setVirtualFolderMatchName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    return-void
.end method

.method public setVirtualFolderMatchPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaItem{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bucketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mineType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bucketDisplayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", data=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dateToken="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dateAdd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dateModified="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", resolution=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selectedPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsParsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVirtualFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", virtualFolderMatchName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPlayComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTimeItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->degree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isKtFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMiMediaInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->recordDateModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uploaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isConvertedFailed:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->degree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
