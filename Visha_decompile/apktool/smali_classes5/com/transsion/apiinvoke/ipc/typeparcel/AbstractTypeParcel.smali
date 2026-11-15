.class public abstract Lcom/transsion/apiinvoke/ipc/typeparcel/AbstractTypeParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/ITypeParcel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/apiinvoke/ipc/ITypeParcel<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractTypeParcel"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasDescribeContents(Landroid/os/Parcel;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initParcelHeader(Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;)V
    .locals 0

    return-void
.end method

.method public readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/ipc/typeparcel/AbstractTypeParcel;->hasDescribeContents(Landroid/os/Parcel;)Z

    move-result v0

    const-string v1, "AbstractTypeParcel"

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/ipc/typeparcel/AbstractTypeParcel;->readHeader(Landroid/os/Parcel;)Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFormParcel, readHeader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->empty()Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFormParcel, oldVersion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/AbstractTypeParcel;->readParcel(Landroid/os/Parcel;Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public readHeader(Landroid/os/Parcel;)Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;
    .locals 0

    invoke-static {p1}, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->readParcelHeader(Landroid/os/Parcel;)Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;

    move-result-object p0

    return-object p0
.end method

.method public abstract readParcel(Landroid/os/Parcel;Ljava/lang/Class;Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Class;",
            "Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;",
            ")TT;"
        }
    .end annotation
.end method

.method public writeHeader(Landroid/os/Parcel;Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;)V
    .locals 0

    invoke-virtual {p2, p1, p2}, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;->writeParcelHeader(Landroid/os/Parcel;Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;)V

    return-void
.end method

.method public abstract writeParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Class;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/Class;",
            "TT;I)V"
        }
    .end annotation

    new-instance v0, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/AbstractTypeParcel;->initParcelHeader(Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/apiinvoke/ipc/typeparcel/AbstractTypeParcel;->writeHeader(Landroid/os/Parcel;Lcom/transsion/apiinvoke/ipc/typeparcel/ParcelHeader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToParcel, writeHeader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractTypeParcel"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/apiinvoke/ipc/typeparcel/AbstractTypeParcel;->writeParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V

    return-void
.end method
