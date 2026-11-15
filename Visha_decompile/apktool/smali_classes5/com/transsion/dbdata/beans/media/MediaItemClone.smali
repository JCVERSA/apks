.class public Lcom/transsion/dbdata/beans/media/MediaItemClone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x398d8d9ab3950253L


# instance fields
.field public albumName:Ljava/lang/String;

.field public artistName:Ljava/lang/String;

.field public bucketDisplayName:Ljava/lang/String;

.field public bucketId:J

.field public data:Ljava/lang/String;

.field public dateAdd:J

.field public dateModified:J

.field public dateToken:J

.field public displayName:Ljava/lang/String;

.field public duration:J

.field public fromInternal:Z

.field private height:I

.field public id:I

.field public isPlayComplete:Z

.field public isSelected:Z

.field public isTimeItem:Z

.field public isVirtualFolder:Z

.field public listFlag:I

.field private mIsParsed:Z

.field public mineType:Ljava/lang/String;

.field public parentPath:Ljava/lang/String;

.field public playPosition:I

.field public playlistId:J

.field public relativePath:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public selectedPos:I

.field public size:J

.field public title:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public virtualFolderMatchName:Ljava/lang/String;

.field public virtualFolderMatchPath:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->fromInternal:Z

    .line 5
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mIsParsed:Z

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->fromInternal:Z

    .line 16
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mIsParsed:Z

    .line 17
    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->id:I

    .line 18
    iput-wide p2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->bucketId:J

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchName:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->fromInternal:Z

    .line 23
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mIsParsed:Z

    .line 24
    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->id:I

    .line 25
    iput-wide p2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->bucketId:J

    .line 26
    iput-object p4, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->displayName:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->artistName:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->albumName:Ljava/lang/String;

    .line 29
    iput p7, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->listFlag:I

    .line 30
    iput-wide p8, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->playlistId:J

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;JJLandroid/net/Uri;)V
    .locals 3

    move-object v0, p0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v1, ""

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchName:Ljava/lang/String;

    .line 41
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->fromInternal:Z

    .line 43
    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mIsParsed:Z

    move v1, p1

    .line 44
    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->id:I

    move-wide v1, p2

    .line 45
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->bucketId:J

    move-object v1, p4

    .line 46
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->title:Ljava/lang/String;

    move-object v1, p5

    .line 47
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->displayName:Ljava/lang/String;

    move-object v1, p6

    .line 48
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mineType:Ljava/lang/String;

    move-object v1, p7

    .line 49
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->bucketDisplayName:Ljava/lang/String;

    move-object v1, p8

    .line 50
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->data:Ljava/lang/String;

    move-wide v1, p9

    .line 51
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->dateToken:J

    move-wide v1, p11

    .line 52
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->dateAdd:J

    move-wide/from16 v1, p13

    .line 53
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->dateModified:J

    move-object/from16 v1, p15

    .line 54
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->resolution:Ljava/lang/String;

    move-wide/from16 v1, p16

    .line 55
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->duration:J

    move-wide/from16 v1, p18

    .line 56
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->size:J

    move-object/from16 v1, p20

    .line 57
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(IJZLjava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->fromInternal:Z

    .line 34
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mIsParsed:Z

    .line 35
    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->id:I

    .line 36
    iput-wide p2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->bucketId:J

    .line 37
    iput-boolean p4, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->isVirtualFolder:Z

    .line 38
    iput-object p5, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchName:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->fromInternal:Z

    .line 62
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mIsParsed:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->id:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->bucketId:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->title:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->displayName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mineType:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->bucketDisplayName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->data:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->dateToken:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->dateAdd:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->dateModified:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->resolution:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->duration:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->size:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->isSelected:Z

    .line 77
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->uri:Landroid/net/Uri;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->fromInternal:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->selectedPos:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->fromInternal:Z

    .line 10
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mIsParsed:Z

    .line 11
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaItemClone{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bucketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->bucketId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mineType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mineType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bucketDisplayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->bucketDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", data=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dateToken="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->dateToken:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dateAdd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->dateAdd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dateModified="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->dateModified:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", resolution=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selectedPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->selectedPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->fromInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsParsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->mIsParsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVirtualFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->isVirtualFolder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", virtualFolderMatchName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItemClone;->playPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
