.class public Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;
.super Ljava/lang/Object;
.source "source.java"

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

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
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

.method protected constructor <init>(Landroid/os/Parcel;)V
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
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getDownX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downX:F

    .line 2
    .line 3
    return v0
.end method

.method public getDownY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downY:F

    .line 2
    .line 3
    return v0
.end method

.method public getImageH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageH:I

    .line 2
    .line 3
    return v0
.end method

.method public getImageW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageW:I

    .line 2
    .line 3
    return v0
.end method

.method public getUpX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upX:F

    .line 2
    .line 3
    return v0
.end method

.method public getUpY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upY:F

    .line 2
    .line 3
    return v0
.end method

.method public setDownX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downX:F

    .line 2
    .line 3
    return-void
.end method

.method public setDownY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downY:F

    .line 2
    .line 3
    return-void
.end method

.method public setImageH(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageH:I

    .line 2
    .line 3
    return-void
.end method

.method public setImageW(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageW:I

    .line 2
    .line 3
    return-void
.end method

.method public setUpX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upX:F

    .line 2
    .line 3
    return-void
.end method

.method public setUpY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upY:F

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DownUpPointBean{downX="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downX:F

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", downY="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downY:F

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", upX="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upX:F

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", upY="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upY:F

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", imageH="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageH:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", imageW="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageW:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x7d

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downX:F

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->downY:F

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upX:F

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->upY:F

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageH:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->imageW:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
