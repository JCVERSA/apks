.class public Lcom/mgmi/model/VASTMediaFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgmi/model/VASTMediaFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiFramework:Ljava/lang/String;

.field private bitrate:Ljava/math/BigInteger;

.field private delivery:Ljava/lang/String;

.field private duration:I

.field private height:Ljava/math/BigInteger;

.field private id:Ljava/lang/String;

.field private maintainAspectRatio:Ljava/lang/Boolean;

.field private scalable:Ljava/lang/Boolean;

.field private type:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field private videoClick:Lcom/mgmi/model/Clicks;

.field private width:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgmi/model/VASTMediaFile$1;

    invoke-direct {v0}, Lcom/mgmi/model/VASTMediaFile$1;-><init>()V

    sput-object v0, Lcom/mgmi/model/VASTMediaFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/mgmi/model/VASTMediaFile;Lcom/mgmi/model/Clicks;)Lcom/mgmi/model/Clicks;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->videoClick:Lcom/mgmi/model/Clicks;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getApiFramework()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    return-object p0
.end method

.method public getBitrate()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getDelivery()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->delivery:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTMediaFile;->duration:I

    return p0
.end method

.method public getHeight()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->value:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoClick()Lcom/mgmi/model/Clicks;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->videoClick:Lcom/mgmi/model/Clicks;

    return-object p0
.end method

.method public getWidth()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hasClickEvents()Z
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->videoClick:Lcom/mgmi/model/Clicks;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isMaintainAspectRatio()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isScalable()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setApiFramework(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    return-void
.end method

.method public setBitrate(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    return-void
.end method

.method public setDelivery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->delivery:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTMediaFile;->duration:I

    return-void
.end method

.method public setHeight(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->id:Ljava/lang/String;

    return-void
.end method

.method public setMaintainAspectRatio(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    return-void
.end method

.method public setScalable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->value:Ljava/lang/String;

    return-void
.end method

.method public setVideoClick(Lcom/mgmi/model/Clicks;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->videoClick:Lcom/mgmi/model/Clicks;

    return-void
.end method

.method public setWidth(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFile [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTMediaFile;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTMediaFile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delivery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTMediaFile;->delivery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTMediaFile;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scalable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maintainAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apiFramework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/VASTMediaFile;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/model/VASTMediaFile;->videoClick:Lcom/mgmi/model/Clicks;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
