.class public Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x3cb215533a5463a6L


# instance fields
.field public channelIcon:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public wechatDesc:Ljava/lang/String;

.field public wechatTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean$1;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean$1;-><init>()V

    sput-object v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;->channelIcon:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;->title:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;->wechatDesc:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;->wechatTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;->channelIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;->wechatDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$ChannelBean;->wechatTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
