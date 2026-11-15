.class Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WheelSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field barColor:I

.field barWidth:I

.field circleRadius:I

.field fillRadius:Z

.field isSpinning:Z

.field linearProgress:Z

.field mProgress:F

.field private final mSuperState:Landroid/os/Parcelable;

.field mTargetProgress:F

.field rimColor:I

.field rimWidth:I

.field spinSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState$1;

    invoke-direct {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState$1;-><init>()V

    sput-object v0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    :goto_0
    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->mProgress:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->isSpinning:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->spinSpeed:F

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->barWidth:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->barColor:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->rimWidth:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->rimColor:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->circleRadius:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->linearProgress:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->fillRadius:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->mSuperState:Landroid/os/Parcelable;

    return-void

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "superState must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSuperState()Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->mSuperState:Landroid/os/Parcelable;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->mProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->mTargetProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->isSpinning:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->spinSpeed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->barWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->barColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->rimWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->rimColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->circleRadius:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->linearProgress:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;->fillRadius:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
