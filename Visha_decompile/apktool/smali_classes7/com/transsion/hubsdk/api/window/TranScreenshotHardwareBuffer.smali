.class public Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TranScreenshotHardwareBuffer"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mColorSpace:Landroid/graphics/ColorSpace;

.field private mContainsHdrLayers:Z

.field private mContainsSecureLayers:Z

.field private mHardwareBuffer:Landroid/hardware/HardwareBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 4
    iput-object p2, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 5
    iput-boolean p3, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    .line 6
    iput-boolean p4, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-class v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    .line 10
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 11
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 13
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
    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return-void
.end method


# virtual methods
.method public asBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public containsHdrLayers()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return p0
.end method

.method public containsSecureLayers()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object p0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setColorSpace(Landroid/graphics/ColorSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public setContainsHdrLayers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return-void
.end method

.method public setContainsSecureLayers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return-void
.end method

.method public setHardwareBuffer(Landroid/hardware/HardwareBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/window/TranScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
