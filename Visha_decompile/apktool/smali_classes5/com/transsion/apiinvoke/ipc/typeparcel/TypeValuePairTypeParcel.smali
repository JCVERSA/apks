.class public Lcom/transsion/apiinvoke/ipc/typeparcel/TypeValuePairTypeParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/ITypeParcel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/apiinvoke/ipc/ITypeParcel<",
        "Lcom/transsion/apiinvoke/invoke/TypeValuePair;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mappingClass(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    const-class p0, Ljava/lang/String;

    return-object p0

    :cond_5
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_7
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_8

    const-class p0, Ljava/util/List;

    return-object p0

    :cond_8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9

    const-class p0, Ljava/util/Map;

    return-object p0

    :cond_9
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_a

    const-class p0, Ljava/util/Set;

    return-object p0

    :cond_a
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_b

    const-class p0, Landroid/os/Bundle;

    return-object p0

    :cond_b
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_c

    const-class p0, Landroid/os/Parcelable;

    return-object p0

    :cond_c
    instance-of p1, p1, Ljava/io/Serializable;

    if-eqz p1, :cond_d

    const-class p0, Ljava/io/Serializable;

    :cond_d
    return-object p0
.end method


# virtual methods
.method public readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 5

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->empty()Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->create(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {p2, p1, p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->create(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 12
    new-array v2, p2, [Ljava/lang/Object;

    :goto_0
    if-ge v0, p2, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 14
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {v1, v2, p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->create(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/typeparcel/TypeValuePairTypeParcel;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/TypeValuePair;I)V
    .locals 3

    const/4 p0, 0x0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValueType()Ljava/lang/Class;

    move-result-object p2

    .line 4
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/TypeValuePairTypeParcel;->mappingClass(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_3

    .line 7
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_3
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/apiinvoke/ipc/typeparcel/TypeValuePairTypeParcel;->mappingClass(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 14
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object p2

    invoke-virtual {p2, p1, p0, v0, p4}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    .line 16
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    if-nez p3, :cond_5

    .line 18
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    :cond_5
    :goto_0
    if-ge p0, p3, :cond_6

    .line 19
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/transsion/apiinvoke/ipc/typeparcel/TypeValuePairTypeParcel;->mappingClass(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 22
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2, p4}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p3, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/apiinvoke/ipc/typeparcel/TypeValuePairTypeParcel;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/TypeValuePair;I)V

    return-void
.end method
