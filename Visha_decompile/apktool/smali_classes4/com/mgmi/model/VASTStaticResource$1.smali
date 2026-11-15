.class final Lcom/mgmi/model/VASTStaticResource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/model/VASTStaticResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mgmi/model/VASTStaticResource;",
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
.method public a(Landroid/os/Parcel;)Lcom/mgmi/model/VASTStaticResource;
    .locals 1

    .line 1
    new-instance p0, Lcom/mgmi/model/VASTStaticResource;

    invoke-direct {p0}, Lcom/mgmi/model/VASTStaticResource;-><init>()V

    .line 2
    const-class v0, Lcom/mgmi/model/Clicks;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/Clicks;

    invoke-static {p0, p1}, Lcom/mgmi/model/VASTStaticResource;->access$002(Lcom/mgmi/model/VASTStaticResource;Lcom/mgmi/model/Clicks;)Lcom/mgmi/model/Clicks;

    return-object p0
.end method

.method public a(I)[Lcom/mgmi/model/VASTStaticResource;
    .locals 0

    .line 3
    new-array p0, p1, [Lcom/mgmi/model/VASTStaticResource;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgmi/model/VASTStaticResource$1;->a(Landroid/os/Parcel;)Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgmi/model/VASTStaticResource$1;->a(I)[Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    return-object p0
.end method
