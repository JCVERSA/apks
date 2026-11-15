.class public Lcom/transsion/letswitch/ipc/type/ParcelableFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/letswitch/ipc/type/ParcelableFactory$DefaultInstanceHolder;,
        Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ArrayTypeTypeParcel;,
        Lcom/transsion/letswitch/ipc/type/ParcelableFactory$HashMapTypeTypeParcel;,
        Lcom/transsion/letswitch/ipc/type/ParcelableFactory$LinkedHashMapTypeTypeParcel;,
        Lcom/transsion/letswitch/ipc/type/ParcelableFactory$HashtableTypeTypeParcel;,
        Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ArrayListTypeTypeParcel;,
        Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ParcelableTypeTypeParcel;,
        Lcom/transsion/letswitch/ipc/type/ParcelableFactory$SerializableTypeTypeParcel;
    }
.end annotation


# instance fields
.field private arrayTypeParcel:Lcom/transsion/letswitch/ipc/type/ITypeParcel;

.field private final typeParcelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/transsion/letswitch/ipc/type/ITypeParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->typeParcelMap:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ArrayTypeTypeParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ArrayTypeTypeParcel;-><init>(Lmw7;)V

    iput-object v0, p0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->arrayTypeParcel:Lcom/transsion/letswitch/ipc/type/ITypeParcel;

    .line 5
    new-instance v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$HashMapTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$HashMapTypeTypeParcel;-><init>(Lmw7;)V

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/letswitch/ipc/type/ITypeParcel;)V

    .line 6
    new-instance v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$LinkedHashMapTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$LinkedHashMapTypeTypeParcel;-><init>(Lmw7;)V

    const-class v2, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/letswitch/ipc/type/ITypeParcel;)V

    .line 7
    new-instance v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$HashtableTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$HashtableTypeTypeParcel;-><init>(Lmw7;)V

    const-class v2, Ljava/util/Hashtable;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/letswitch/ipc/type/ITypeParcel;)V

    .line 8
    new-instance v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ArrayListTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ArrayListTypeTypeParcel;-><init>(Lmw7;)V

    .line 9
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/letswitch/ipc/type/ITypeParcel;)V

    .line 10
    const-class v2, Ljava/util/List;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/letswitch/ipc/type/ITypeParcel;)V

    .line 11
    new-instance v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ParcelableTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$ParcelableTypeTypeParcel;-><init>(Lmw7;)V

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/letswitch/ipc/type/ITypeParcel;)V

    .line 12
    new-instance v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$SerializableTypeTypeParcel;

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$SerializableTypeTypeParcel;-><init>(Lmw7;)V

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->registerTypeParcel(Ljava/lang/Class;Lcom/transsion/letswitch/ipc/type/ITypeParcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Lmw7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;-><init>()V

    return-void
.end method

.method public static findTypeParcel(Ljava/lang/Class;)Lcom/transsion/letswitch/ipc/type/ITypeParcel;
    .locals 3

    invoke-static {}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->getInstance()Lcom/transsion/letswitch/ipc/type/ParcelableFactory;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->arrayTypeParcel:Lcom/transsion/letswitch/ipc/type/ITypeParcel;

    return-object p0

    :cond_0
    iget-object v1, v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->typeParcelMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/letswitch/ipc/type/ITypeParcel;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-class v1, Ljava/util/HashMap;

    invoke-static {p0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->typeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/letswitch/ipc/type/ITypeParcel;

    return-object p0

    :cond_2
    const-class v1, Ljava/util/LinkedHashMap;

    invoke-static {p0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->typeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/letswitch/ipc/type/ITypeParcel;

    return-object p0

    :cond_3
    const-class v1, Ljava/util/Hashtable;

    invoke-static {p0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->typeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/letswitch/ipc/type/ITypeParcel;

    return-object p0

    :cond_4
    const-class v1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    const-class v2, Ljava/util/List;

    invoke-static {p0, v2}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    const-class v1, Landroid/os/Parcelable;

    invoke-static {p0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->typeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/letswitch/ipc/type/ITypeParcel;

    return-object p0

    :cond_5
    const-class v1, Ljava/io/Serializable;

    invoke-static {p0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->typeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/letswitch/ipc/type/ITypeParcel;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0

    :cond_7
    iget-object p0, v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->typeParcelMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/letswitch/ipc/type/ITypeParcel;

    return-object p0
.end method

.method public static getInstance()Lcom/transsion/letswitch/ipc/type/ParcelableFactory;
    .locals 1

    invoke-static {}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$DefaultInstanceHolder;->a()Lcom/transsion/letswitch/ipc/type/ParcelableFactory;

    move-result-object v0

    return-object v0
.end method

.method private static isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized registerTypeParcel(Ljava/lang/Class;Lcom/transsion/letswitch/ipc/type/ITypeParcel;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;->typeParcelMap:Ljava/util/Map;

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
