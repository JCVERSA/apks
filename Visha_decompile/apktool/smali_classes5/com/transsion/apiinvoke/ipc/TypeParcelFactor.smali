.class public Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$PrimitiveTypeTypeParcel;,
        Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$ArrayTypeTypeParcel;,
        Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$HashMapTypeTypeParcel;,
        Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$LinkedHashMapTypeTypeParcel;,
        Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$HashtableTypeTypeParcel;,
        Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$ArrayListTypeTypeParcel;,
        Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$ParcelableTypeTypeParcel;,
        Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$SerializableTypeTypeParcel;
    }
.end annotation


# static fields
.field private static final TYPE_CONST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultInstance:Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;


# instance fields
.field private mArrayTypeParcel:Lcom/transsion/apiinvoke/ipc/ITypeParcel;

.field private mDefaultTypeParcel:Lcom/transsion/apiinvoke/ipc/ITypeParcel;

.field private final mTypeParcelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/transsion/apiinvoke/ipc/ITypeParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->TYPE_CONST:Ljava/util/List;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$PrimitiveTypeTypeParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$PrimitiveTypeTypeParcel;-><init>(Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$1;)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mDefaultTypeParcel:Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    new-instance v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$ArrayTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$ArrayTypeTypeParcel;-><init>(Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$1;)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mArrayTypeParcel:Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    new-instance v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$HashMapTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$HashMapTypeTypeParcel;-><init>(Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$1;)V

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$LinkedHashMapTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$LinkedHashMapTypeTypeParcel;-><init>(Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$1;)V

    const-class v2, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$HashtableTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$HashtableTypeTypeParcel;-><init>(Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$1;)V

    const-class v2, Ljava/util/Hashtable;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$ArrayListTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$ArrayListTypeTypeParcel;-><init>(Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$1;)V

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    const-class v2, Ljava/util/List;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$ParcelableTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$ParcelableTypeTypeParcel;-><init>(Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$1;)V

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$SerializableTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$SerializableTypeTypeParcel;-><init>(Lcom/transsion/apiinvoke/ipc/TypeParcelFactor$1;)V

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/typeparcel/ApiRequestTypeParcel;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/ApiRequestTypeParcel;-><init>()V

    const-class v1, Lcom/transsion/apiinvoke/invoke/ApiRequest;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/typeparcel/ApiResponseTypeParcel;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/ApiResponseTypeParcel;-><init>()V

    const-class v1, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/typeparcel/TypeValuePairTypeParcel;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/TypeValuePairTypeParcel;-><init>()V

    const-class v1, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/typeparcel/BundleTypeParcel;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/BundleTypeParcel;-><init>()V

    const-class v1, Landroid/os/Bundle;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/typeparcel/IBinderTypeParcel;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/IBinderTypeParcel;-><init>()V

    const-class v1, Landroid/os/IBinder;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/typeparcel/IInterfaceTypeParcel;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/IInterfaceTypeParcel;-><init>()V

    const-class v1, Landroid/os/IInterface;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/typeparcel/PublishDataTypeParcel;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/PublishDataTypeParcel;-><init>()V

    const-class v1, Lcom/transsion/apiinvoke/subscribe/PublishData;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/os/Parcel;I)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->readPrimitiveType(Landroid/os/Parcel;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Landroid/os/Parcel;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->writePrimitiveType(Landroid/os/Parcel;Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic access$800(Ljava/lang/Class;)Lcom/transsion/apiinvoke/ipc/ITypeParcel;
    .locals 0

    invoke-static {p0}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->findTypeParcel(Ljava/lang/Class;)Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->TYPE_CONST:Ljava/util/List;

    return-object v0
.end method

.method private static findTypeParcel(Ljava/lang/Class;)Lcom/transsion/apiinvoke/ipc/ITypeParcel;
    .locals 4

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mArrayTypeParcel:Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0

    :cond_0
    sget-object v1, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->TYPE_CONST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mDefaultTypeParcel:Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0

    :cond_1
    iget-object v1, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const-class v1, Ljava/util/HashMap;

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0

    :cond_3
    const-class v1, Ljava/util/LinkedHashMap;

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0

    :cond_4
    const-class v1, Ljava/util/Hashtable;

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0

    :cond_5
    const-class v1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_c

    const-class v2, Ljava/util/List;

    invoke-static {p0, v2}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const-class v1, Landroid/os/Parcelable;

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0

    :cond_7
    const-class v1, Ljava/io/Serializable;

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0

    :cond_8
    const-class v1, Landroid/os/IBinder;

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    const-class v3, Landroid/os/IInterface;

    invoke-static {p0, v3}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz v2, :cond_9

    if-eqz p0, :cond_9

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0

    :cond_9
    if-eqz v2, :cond_a

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0

    :cond_a
    if-eqz p0, :cond_b

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_c
    :goto_0
    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    return-object p0
.end method

.method public static getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;
    .locals 2

    sget-object v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->defaultInstance:Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->defaultInstance:Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    invoke-direct {v1}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;-><init>()V

    sput-object v1, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->defaultInstance:Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->defaultInstance:Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    return-object v0
.end method

.method private static isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static readPrimitiveType(Landroid/os/Parcel;I)Ljava/lang/Object;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "TypeParcelFactor"

    const-string p1, "readPrimitiveType not support"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static writePrimitiveType(Landroid/os/Parcel;Ljava/lang/Object;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    const-string p0, "TypeParcelFactor"

    const-string p1, "writePrimitiveType not support"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->findTypeParcel(Ljava/lang/Class;)Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/transsion/apiinvoke/ipc/ITypeParcel;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerTypeParcel(Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/ITypeParcel;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized unRegisterTypeParcel(Ljava/lang/Class;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->mTypeParcelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 1

    monitor-enter p0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p2, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :cond_1
    invoke-static {p2}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->findTypeParcel(Ljava/lang/Class;)Lcom/transsion/apiinvoke/ipc/ITypeParcel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/apiinvoke/ipc/ITypeParcel;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
