.class public Lcom/transsion/apiinvoke/ipc/typeparcel/ApiResponseTypeParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/ITypeParcel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/apiinvoke/ipc/ITypeParcel<",
        "Lcom/transsion/apiinvoke/invoke/ApiResponse;",
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
.method public readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    .line 2
    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object v1

    const-class v2, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    invoke-virtual {v1, p1, v2}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;-><init>(ILjava/lang/String;Lcom/transsion/apiinvoke/invoke/TypeValuePair;)V

    return-object p0
.end method

.method public bridge synthetic readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/typeparcel/ApiResponseTypeParcel;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/ApiResponse;I)V
    .locals 0

    .line 2
    iget p0, p3, Lcom/transsion/apiinvoke/invoke/ApiResponse;->resultCode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p0, p3, Lcom/transsion/apiinvoke/invoke/ApiResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->getResultData()Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 6
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->getFactor()Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;

    move-result-object p0

    const-class p2, Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    invoke-virtual {p3}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->getResultData()Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/apiinvoke/ipc/TypeParcelFactor;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p3, Lcom/transsion/apiinvoke/invoke/ApiResponse;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/apiinvoke/ipc/typeparcel/ApiResponseTypeParcel;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Lcom/transsion/apiinvoke/invoke/ApiResponse;I)V

    return-void
.end method
