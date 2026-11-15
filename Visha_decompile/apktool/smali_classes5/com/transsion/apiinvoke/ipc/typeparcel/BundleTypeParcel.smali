.class public Lcom/transsion/apiinvoke/ipc/typeparcel/BundleTypeParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/ITypeParcel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/apiinvoke/ipc/ITypeParcel<",
        "Landroid/os/Bundle;",
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
.method public readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/typeparcel/BundleTypeParcel;->readFormParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/apiinvoke/ipc/typeparcel/BundleTypeParcel;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method
