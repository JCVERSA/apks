.class public Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/mgtv/json/JsonInterface;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleDataBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7d2fe24df38fdec1L


# instance fields
.field public activityId:Ljava/lang/String;

.field public adJump:I

.field public adJumpUrl:Ljava/lang/String;

.field public adOrigin:Ljava/lang/String;

.field public bgColor:Ljava/lang/String;

.field public childId:Ljava/lang/String;

.field public cornerType:Ljava/lang/String;

.field public filter:Ljava/lang/String;

.field public filters:Ljava/lang/String;

.field public fontColor:Ljava/lang/String;

.field public imgHUrl:Ljava/lang/String;

.field public imgHVUrl:Ljava/lang/String;

.field public isFollowed:I

.field public isShare:Ljava/lang/String;

.field public jumpId:Ljava/lang/String;

.field public jumpKind:Ljava/lang/String;

.field public liveEndTime:Ljava/lang/String;

.field public liveStartTime:Ljava/lang/String;

.field public mobileTitle:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pageUrl:Ljava/lang/String;

.field public phoneImgUrl:Ljava/lang/String;

.field public playerType:Ljava/lang/String;

.field public rightCorner:Ljava/lang/String;

.field public sortNo:Ljava/lang/String;

.field public subName:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public tvChannelId:Ljava/lang/String;

.field public updateInfo:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean$1;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean$1;-><init>()V

    sput-object v0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->bgColor:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->childId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->cornerType:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->filter:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->fontColor:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->imgHUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->imgHVUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->isShare:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->jumpId:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->jumpKind:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->liveEndTime:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->liveStartTime:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->mobileTitle:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->name:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->pageUrl:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->phoneImgUrl:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->playerType:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->rightCorner:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->sortNo:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->subName:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->title:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->tvChannelId:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->updateInfo:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->videoUrl:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->activityId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->isFollowed:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->adJump:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->adJumpUrl:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->adOrigin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getImgUrl(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->phoneImgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->phoneImgUrl:Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->imgHUrl:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->imgHVUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->mobileTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->mobileTitle:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->name:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->bgColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->childId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->cornerType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->filter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->fontColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->imgHUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->imgHVUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->isShare:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->jumpId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->jumpKind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->liveEndTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->liveStartTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->mobileTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->pageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->phoneImgUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->playerType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->rightCorner:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->sortNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->subName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->tvChannelId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->updateInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->activityId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->isFollowed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->adJump:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->adJumpUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/entity/ChannelIndexEntity$DataBean$ModuleDataBean;->adOrigin:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
