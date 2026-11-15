.class public Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/room/Entity;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final color:I

.field public id:J
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->id:J

    .line 3
    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->name:Ljava/lang/String;

    .line 4
    iput p4, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->color:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->id:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->name:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->color:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->name:Ljava/lang/String;

    .line 7
    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->color:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->id:J

    iget-wide v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->color:I

    iget v2, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->color:I

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->color:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TagInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->color:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->color:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
