.class public Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BRIGHTNESS_MAX_REASON_NONE:I = 0x0

.field public static final BRIGHTNESS_MAX_REASON_THERMAL:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIGH_BRIGHTNESS_MODE_HDR:I = 0x2

.field public static final HIGH_BRIGHTNESS_MODE_OFF:I = 0x0

.field public static final HIGH_BRIGHTNESS_MODE_SUNLIGHT:I = 0x1


# instance fields
.field public mAdjustedBrightness:F

.field public mBrightness:F

.field public mBrightnessMaxReason:I

.field public mBrightnessMaximum:F

.field public mBrightnessMinimum:F

.field public mHighBrightnessMode:I

.field public mHighBrightnessTransitionPoint:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightness:F

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mAdjustedBrightness:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMinimum:F

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaximum:F

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessMode:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessTransitionPoint:F

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaxReason:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/transsion/hubsdk/api/view/TranBrightnessInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;-><init>(Landroid/os/Parcel;)V

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

    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mAdjustedBrightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMinimum:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaximum:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessTransitionPoint:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaxReason:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
