.class public Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private filePriorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/Priority;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private sha1hash:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->uri:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->sha1hash:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->name:Ljava/lang/String;

    .line 10
    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->filePriorities:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/Priority;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->uri:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->sha1hash:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->name:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->filePriorities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFilePriorities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/Priority;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->filePriorities:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSha1hash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->sha1hash:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->sha1hash:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnetInfo{uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sha1hash=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->sha1hash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", filePriorities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->filePriorities:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->sha1hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/MagnetInfo;->filePriorities:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
