.class public Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;
.super Lcom/mgtv/data/aphone/core/entity/JsonEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;,
        Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$NaviBean;,
        Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;
    }
.end annotation


# static fields
.field public static final AD_CLICK_IN:I = 0x2

.field public static final AD_CLICK_OUT:I = 0x1

.field public static final AD_CLICK_UNKNOW:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOLLOW_FOLLOWED:I = 0x1

.field public static final FOLLOW_UNFOLLOW:I = 0x2

.field public static final FOLLOW_UNKNOW:I = 0x0

.field private static final serialVersionUID:J = -0xfb111b57070cf95L


# instance fields
.field public channel:Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field public navi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$NaviBean;",
            ">;"
        }
    .end annotation
.end field

.field public seqid:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$1;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$1;-><init>()V

    sput-object v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/entity/JsonEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/entity/JsonEntity;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->seqid:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->timestamp:J

    .line 5
    const-class v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->channel:Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;

    .line 6
    sget-object v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->data:Ljava/util/List;

    .line 7
    sget-object v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$NaviBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->navi:Ljava/util/List;

    return-void
.end method

.method public static addUniqueKey(Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;)Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;
    .locals 5

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;

    iget-object v4, v4, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->moduleType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;->indexKey:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->seqid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->channel:Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->data:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;->navi:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
