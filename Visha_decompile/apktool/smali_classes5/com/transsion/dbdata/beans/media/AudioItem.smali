.class public Lcom/transsion/dbdata/beans/media/AudioItem;
.super Lcom/transsion/dbdata/beans/media/MediaItem;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public albumId:I

.field public albumName:Ljava/lang/String;

.field public albumPath:Ljava/lang/String;

.field public artistId:I

.field public artistName:Ljava/lang/String;

.field public exitInPlayList:Z

.field public filteredTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAlbumYear:Ljava/lang/String;

.field public mCustomCoverPath:Ljava/lang/String;

.field public year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/beans/media/AudioItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 4
    iput-wide p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    .line 6
    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 7
    iput-wide p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    .line 8
    iput-object p4, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    .line 14
    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 15
    iput-wide p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    .line 16
    iput-object p4, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    .line 10
    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 11
    iput-wide p3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    .line 12
    iput-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;JLandroid/net/Uri;Ljava/lang/String;I)V
    .locals 3

    move-object v0, p0

    .line 19
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    move v1, p1

    .line 20
    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    move-object v1, p2

    .line 21
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    move-wide v1, p3

    .line 22
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    .line 23
    invoke-static {p7}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-static {p7}, Lav3;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :goto_0
    move/from16 v1, p23

    goto :goto_1

    .line 25
    :cond_0
    invoke-static {p5}, Lav3;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 26
    :goto_1
    iput v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->year:I

    .line 27
    invoke-static/range {p23 .. p23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    move-object v1, p6

    .line 28
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    move-object v1, p7

    .line 29
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    move-wide v1, p8

    .line 30
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    move-object v1, p10

    .line 31
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    move-wide v1, p11

    .line 32
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    move-wide/from16 v1, p13

    .line 33
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    move/from16 v1, p15

    .line 34
    iput v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    move-object/from16 v1, p16

    .line 35
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    move/from16 v1, p17

    .line 36
    iput v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    move-object/from16 v1, p18

    .line 37
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    move-wide/from16 v1, p19

    .line 38
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    move-object/from16 v1, p21

    .line 39
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    move-object/from16 v1, p22

    .line 40
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;JLandroid/net/Uri;Ljava/lang/String;II)V
    .locals 3

    move-object v0, p0

    .line 41
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    move v1, p1

    .line 42
    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    move-object v1, p2

    .line 43
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    move-wide v1, p3

    .line 44
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    .line 45
    invoke-static {p7}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-static {p7}, Lav3;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :goto_0
    move/from16 v1, p23

    goto :goto_1

    .line 47
    :cond_0
    invoke-static {p5}, Lav3;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 48
    :goto_1
    iput v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->year:I

    .line 49
    invoke-static/range {p23 .. p23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    move-object v1, p6

    .line 50
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    move-object v1, p7

    .line 51
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    move-wide v1, p8

    .line 52
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    move-object v1, p10

    .line 53
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    move-wide v1, p11

    .line 54
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    move-wide/from16 v1, p13

    .line 55
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    move/from16 v1, p15

    .line 56
    iput v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    move-object/from16 v1, p16

    .line 57
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    move/from16 v1, p17

    .line 58
    iput v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    move-object/from16 v1, p18

    .line 59
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    move-wide/from16 v1, p19

    .line 60
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    move-object/from16 v1, p21

    .line 61
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    move-object/from16 v1, p22

    .line 62
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    move/from16 v1, p24

    .line 63
    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->num:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 98
    invoke-direct {p0, p1}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>(Landroid/os/Parcel;)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mCustomCoverPath:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->year:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->exitInPlayList:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    .line 134
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->defaultCover:Landroid/graphics/Bitmap;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->subtitleIndex:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uploaderName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_9

    .line 143
    invoke-static {}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->values()[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_a

    :cond_9
    move v0, v2

    .line 144
    :cond_a
    invoke-static {}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->values()[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    move-result-object v3

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    .line 145
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_9

    :cond_b
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 149
    const-string v0, ""

    :cond_d
    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->filteredTypes:Ljava/util/List;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->num:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    .line 65
    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 66
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    .line 67
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    .line 68
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lav3;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    .line 71
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    .line 72
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    .line 73
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    .line 74
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    .line 75
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    .line 76
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    .line 77
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    .line 78
    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->num:I

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->num:I

    .line 79
    sget-boolean v0, Lpp3;->y:Z

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    .line 80
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    .line 82
    iget v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->id:I

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 83
    iget-object v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->parentPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    .line 84
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->bucketId:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    .line 85
    iget-object v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lav3;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->mineType:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    .line 88
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->duration:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    .line 89
    iget-object v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    .line 90
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->dateAdd:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    .line 91
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->dateModified:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    .line 92
    iget-wide v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->size:J

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    .line 93
    iget-object v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    .line 94
    iget-object v0, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->bucketDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    .line 95
    sget-boolean v0, Lpp3;->y:Z

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    .line 96
    iget-object p1, p1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;->data:Ljava/lang/String;

    invoke-static {p1}, Lav3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    .line 97
    sget-object p1, Lge6;->a:Lge6;

    iget-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {p1, v0}, Lge6;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    return-void
.end method

.method public static copy(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iget v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    iget v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->num:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->num:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

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

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    iput-boolean p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    return-void
.end method

.method public static getAlbumArtUri(J)Landroid/net/Uri;
    .locals 1

    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getUri(IZ)Landroid/net/Uri;
    .locals 0

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 6
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 7
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addFilteredType(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->filteredTypes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->filteredTypes:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->filteredTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public convertToMusicVideoDataBean()Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    move v10, v2

    new-instance v1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-object v3, v1

    iget v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v5, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iget-wide v6, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object v8, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v11, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iget-wide v12, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-object v14, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    move-wide/from16 v17, v1

    iget v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    move/from16 v19, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    move-object/from16 v20, v1

    iget v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    move-wide/from16 v23, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v3 .. v26}, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;-><init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;JJILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v27
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p1, p0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public getAlbumYear()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomCoverPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mCustomCoverPath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    return-wide v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    return-wide v0
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

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

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
    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-super {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    invoke-static {v0, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri(IZ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAudioItemChanged(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mCustomCoverPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->exitInPlayList:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->defaultCover:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->subtitleIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uploaderName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_9

    invoke-static {}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->values()[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_a

    :cond_9
    move v0, v2

    :cond_a
    invoke-static {}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->values()[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    move-result-object v3

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_9

    :cond_b
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    const-string p1, ""

    :cond_d
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    return-void
.end method

.method public setAlbumYear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    return-void
.end method

.method public setCustomCoverPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mCustomCoverPath:Ljava/lang/String;

    return-void
.end method

.method public setFromInternal(Z)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    return-object p0
.end method

.method public bridge synthetic setFromInternal(Z)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->setFromInternal(Z)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public setSelectedPos(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Song{id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", bucketId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", bucketDisplayName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mineType=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", duration="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", data=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", dateModified="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", albumId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", albumName=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", year="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->year:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", artistId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", artistName=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", size=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", uri=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", parentPath="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", albumPath="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", displayName=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", isMusicVideo=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", albumYear=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", mCustomCoverPath=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mCustomCoverPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mCustomCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->exitInPlayList:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

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

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->resolution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->relativePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->defaultCover:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->subtitleIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uploaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsParsed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->filteredTypes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->num:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
