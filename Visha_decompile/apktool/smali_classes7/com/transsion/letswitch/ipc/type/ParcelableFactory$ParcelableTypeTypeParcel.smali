.class Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ParcelableTypeTypeParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/letswitch/ipc/type/ITypeParcel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/letswitch/ipc/type/ParcelableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableTypeTypeParcel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/letswitch/ipc/type/ITypeParcel<",
        "Landroid/os/Parcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmw7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ParcelableTypeTypeParcel;-><init>()V

    return-void
.end method


# virtual methods
.method public readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ParcelableTypeTypeParcel;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Landroid/os/Parcelable;I)V
    .locals 0

    .line 2
    invoke-virtual {p1, p3, p4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p3, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ParcelableTypeTypeParcel;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Landroid/os/Parcelable;I)V

    return-void
.end method
