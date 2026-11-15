.class public Lcom/doman/core/ig/proxy/ParcelableMqttMessage;
.super Ltod;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/doman/core/ig/proxy/ParcelableMqttMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/doman/core/ig/proxy/ParcelableMqttMessage$1;

    invoke-direct {v0}, Lcom/doman/core/ig/proxy/ParcelableMqttMessage$1;-><init>()V

    sput-object v0, Lcom/doman/core/ig/proxy/ParcelableMqttMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ltod;-><init>([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doman/core/ig/proxy/ParcelableMqttMessage;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Ltod;->setQos(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    invoke-virtual {p0, v1}, Ltod;->setRetained(Z)V

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    invoke-virtual {p0, v0}, Ltod;->setDuplicate(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/doman/core/ig/proxy/ParcelableMqttMessage;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ltod;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ltod;->getPayload()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ltod;-><init>([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doman/core/ig/proxy/ParcelableMqttMessage;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ltod;->getQos()I

    move-result v0

    invoke-virtual {p0, v0}, Ltod;->setQos(I)V

    invoke-virtual {p1}, Ltod;->isRetained()Z

    move-result v0

    invoke-virtual {p0, v0}, Ltod;->setRetained(Z)V

    invoke-virtual {p1}, Ltod;->isDuplicate()Z

    move-result p1

    invoke-virtual {p0, p1}, Ltod;->setDuplicate(Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p0}, Ltod;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p0}, Ltod;->getQos()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ltod;->isRetained()Z

    move-result p2

    invoke-virtual {p0}, Ltod;->isDuplicate()Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p2, v1, v2

    const/4 p2, 0x1

    aput-boolean v0, v1, p2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object p0, p0, Lcom/doman/core/ig/proxy/ParcelableMqttMessage;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
