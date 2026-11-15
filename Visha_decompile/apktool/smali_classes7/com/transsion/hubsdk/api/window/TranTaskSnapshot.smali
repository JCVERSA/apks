.class public Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mColorSpace:Landroid/graphics/ColorSpace;

.field public mSnapshot:Landroid/hardware/HardwareBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 5
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result p1

    if-gez p1, :cond_0

    .line 6
    sget-object p1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ltz p1, :cond_0

    .line 10
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 11
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/transsion/hubsdk/api/window/TranTaskSnapshot$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object p0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
