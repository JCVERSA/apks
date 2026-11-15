.class public Lcom/simple/spiderman/utils/CrashModel$Device;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simple/spiderman/utils/CrashModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/simple/spiderman/utils/CrashModel$Device;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private brand:Ljava/lang/String;

.field private cpuAbi:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private release:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/simple/spiderman/utils/CrashModel$Device$1;

    invoke-direct {v0}, Lcom/simple/spiderman/utils/CrashModel$Device$1;-><init>()V

    sput-object v0, Lcom/simple/spiderman/utils/CrashModel$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->model:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->brand:Ljava/lang/String;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->version:Ljava/lang/String;

    .line 5
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->release:Ljava/lang/String;

    .line 6
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->cpuAbi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->model:Ljava/lang/String;

    .line 9
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->brand:Ljava/lang/String;

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->version:Ljava/lang/String;

    .line 11
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->release:Ljava/lang/String;

    .line 12
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->cpuAbi:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->model:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->brand:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->version:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->release:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->cpuAbi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public getCpuAbi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->cpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->release:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->version:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->model:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->brand:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->release:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/simple/spiderman/utils/CrashModel$Device;->cpuAbi:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
