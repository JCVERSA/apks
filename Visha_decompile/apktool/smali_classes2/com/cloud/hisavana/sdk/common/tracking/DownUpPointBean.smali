.class public Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downX:F

.field private downY:F

.field private imageH:I

.field private imageW:I

.field private upX:F

.field private upY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean$a;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean$a;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downX:F

    .line 4
    iput p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downY:F

    .line 5
    iput p3, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upX:F

    .line 6
    iput p4, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upY:F

    .line 7
    iput p5, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageH:I

    .line 8
    iput p6, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageW:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downX:F

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downY:F

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upX:F

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upY:F

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageH:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageW:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDownX()F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downX:F

    return p0
.end method

.method public getDownY()F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downY:F

    return p0
.end method

.method public getImageH()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageH:I

    return p0
.end method

.method public getImageW()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageW:I

    return p0
.end method

.method public getUpX()F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upX:F

    return p0
.end method

.method public getUpY()F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upY:F

    return p0
.end method

.method public setDownX(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downX:F

    return-void
.end method

.method public setDownY(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downY:F

    return-void
.end method

.method public setImageH(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageH:I

    return-void
.end method

.method public setImageW(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageW:I

    return-void
.end method

.method public setUpX(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upX:F

    return-void
.end method

.method public setUpY(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownUpPointBean{downX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", downY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", upX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", upY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", imageH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageW:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageH:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageW:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
