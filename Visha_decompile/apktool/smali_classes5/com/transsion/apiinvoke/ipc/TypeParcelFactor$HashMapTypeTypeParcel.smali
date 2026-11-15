.class Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$HashMapTypeTypeParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/ITypeParcel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMapTypeTypeParcel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/apiinvoke/ipc/ITypeParcel<",
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$HashMapTypeTypeParcel;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$HashMapTypeTypeParcel;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 0

    .line 2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    return-object p2
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$HashMapTypeTypeParcel;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/util/HashMap;I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/util/HashMap;I)V
    .locals 0

    .line 2
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
