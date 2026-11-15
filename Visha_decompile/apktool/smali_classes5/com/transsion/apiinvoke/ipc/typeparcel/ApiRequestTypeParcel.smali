.class public Lcom/transsion/apiinvoke/ipc/typeparcel/ApiRequestTypeParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/ITypeParcel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/apiinvoke/ipc/ITypeParcel<",
        "Lcom/transsion/apiinvoke/invoke/ApiRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Lcom/transsion/apiinvoke/invoke/ApiRequest;
    .locals 4

    .line 2
    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-direct {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->channel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->apiMethod(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->packageName(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    new-array v0, p2, [Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 8
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v2

    const-class v3, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    invoke-virtual {v2, p1, v3}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->setParameters([Lcom/transsion/apiinvoke/invoke/TypeValuePair;)Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    .line 10
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->build()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/typeparcel/ApiRequestTypeParcel;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/ApiRequest;I)V
    .locals 3

    .line 2
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getChannelName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiMethod()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->packageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getRequestParameter()[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    .line 7
    array-length p3, p0

    if-nez p3, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    array-length p3, p0

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    array-length p3, p0

    :goto_0
    if-ge p2, p3, :cond_2

    aget-object v0, p0, p2

    .line 10
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v1

    const-class v2, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    invoke-virtual {v1, p1, v2, v0, p4}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p3, Lcom/transsion/apiinvoke/invoke/ApiRequest;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/apiinvoke/ipc/typeparcel/ApiRequestTypeParcel;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/ApiRequest;I)V

    return-void
.end method
