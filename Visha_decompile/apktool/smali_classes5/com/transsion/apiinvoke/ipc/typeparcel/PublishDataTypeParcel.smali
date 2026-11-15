.class public Lcom/transsion/apiinvoke/ipc/typeparcel/PublishDataTypeParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/ITypeParcel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/apiinvoke/ipc/ITypeParcel<",
        "Lcom/transsion/apiinvoke/subscribe/PublishData;",
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
.method public readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Lcom/transsion/apiinvoke/subscribe/PublishData;
    .locals 3

    .line 2
    new-instance p0, Lcom/transsion/apiinvoke/subscribe/PublishData;

    invoke-direct {p0}, Lcom/transsion/apiinvoke/subscribe/PublishData;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-nez p2, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p2, Lcom/transsion/apiinvoke/subscribe/Publisher;

    invoke-direct {p2}, Lcom/transsion/apiinvoke/subscribe/Publisher;-><init>()V

    .line 5
    new-instance v0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p2, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p2}, Lcom/transsion/apiinvoke/subscribe/PublishData;->setPublisher(Lcom/transsion/apiinvoke/subscribe/Publisher;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/subscribe/PublishData;->setData(Ljava/io/Serializable;)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/typeparcel/PublishDataTypeParcel;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Lcom/transsion/apiinvoke/subscribe/PublishData;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Lcom/transsion/apiinvoke/subscribe/PublishData;I)V
    .locals 1

    .line 2
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/subscribe/PublishData;->getPublisher()Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 p4, 0x1

    .line 4
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object v0, v0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->channel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object v0, v0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->apiName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/subscribe/PublishData;->getData()Ljava/io/Serializable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/subscribe/PublishData;->getData()Ljava/io/Serializable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p3, Lcom/transsion/apiinvoke/subscribe/PublishData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/apiinvoke/ipc/typeparcel/PublishDataTypeParcel;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Lcom/transsion/apiinvoke/subscribe/PublishData;I)V

    return-void
.end method
