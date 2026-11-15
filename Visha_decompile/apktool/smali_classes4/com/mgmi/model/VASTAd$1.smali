.class final Lcom/mgmi/model/VASTAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/model/VASTAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mgmi/model/VASTAd;",
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
.method public a(Landroid/os/Parcel;)Lcom/mgmi/model/VASTAd;
    .locals 1

    .line 1
    new-instance p0, Lcom/mgmi/model/VASTAd;

    invoke-direct {p0}, Lcom/mgmi/model/VASTAd;-><init>()V

    .line 2
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mgmi/model/VASTAd;->access$002(Lcom/mgmi/model/VASTAd;Ljava/util/Map;)Ljava/util/Map;

    .line 3
    const-class v0, Lcom/mgmi/model/VASTMediaFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mgmi/model/VASTAd;->access$102(Lcom/mgmi/model/VASTAd;Ljava/util/List;)Ljava/util/List;

    .line 4
    const-class v0, Lcom/mgmi/model/VASTStaticResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mgmi/model/VASTAd;->access$202(Lcom/mgmi/model/VASTAd;Ljava/util/List;)Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p0, p1}, Lcom/mgmi/model/VASTAd;->access$302(Lcom/mgmi/model/VASTAd;I)I

    return-object p0
.end method

.method public a(I)[Lcom/mgmi/model/VASTAd;
    .locals 0

    .line 6
    new-array p0, p1, [Lcom/mgmi/model/VASTAd;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgmi/model/VASTAd$1;->a(Landroid/os/Parcel;)Lcom/mgmi/model/VASTAd;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgmi/model/VASTAd$1;->a(I)[Lcom/mgmi/model/VASTAd;

    move-result-object p0

    return-object p0
.end method
