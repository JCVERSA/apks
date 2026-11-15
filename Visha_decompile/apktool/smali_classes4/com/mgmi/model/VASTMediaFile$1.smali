.class final Lcom/mgmi/model/VASTMediaFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/model/VASTMediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mgmi/model/VASTMediaFile;",
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
.method public a(Landroid/os/Parcel;)Lcom/mgmi/model/VASTMediaFile;
    .locals 1

    .line 1
    new-instance p0, Lcom/mgmi/model/VASTMediaFile;

    invoke-direct {p0}, Lcom/mgmi/model/VASTMediaFile;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/model/VASTMediaFile;->value:Ljava/lang/String;

    .line 3
    const-class v0, Lcom/mgmi/model/Clicks;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/Clicks;

    invoke-static {p0, p1}, Lcom/mgmi/model/VASTMediaFile;->access$002(Lcom/mgmi/model/VASTMediaFile;Lcom/mgmi/model/Clicks;)Lcom/mgmi/model/Clicks;

    return-object p0
.end method

.method public a(I)[Lcom/mgmi/model/VASTMediaFile;
    .locals 0

    .line 4
    new-array p0, p1, [Lcom/mgmi/model/VASTMediaFile;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgmi/model/VASTMediaFile$1;->a(Landroid/os/Parcel;)Lcom/mgmi/model/VASTMediaFile;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgmi/model/VASTMediaFile$1;->a(I)[Lcom/mgmi/model/VASTMediaFile;

    move-result-object p0

    return-object p0
.end method
