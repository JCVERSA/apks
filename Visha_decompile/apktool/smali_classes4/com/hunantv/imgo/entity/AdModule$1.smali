.class final Lcom/hunantv/imgo/entity/AdModule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/entity/AdModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hunantv/imgo/entity/AdModule;",
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
.method public a(Landroid/os/Parcel;)Lcom/hunantv/imgo/entity/AdModule;
    .locals 0

    .line 1
    new-instance p0, Lcom/hunantv/imgo/entity/AdModule;

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/entity/AdModule;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Lcom/hunantv/imgo/entity/AdModule;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/hunantv/imgo/entity/AdModule;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/entity/AdModule$1;->a(Landroid/os/Parcel;)Lcom/hunantv/imgo/entity/AdModule;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/entity/AdModule$1;->a(I)[Lcom/hunantv/imgo/entity/AdModule;

    move-result-object p0

    return-object p0
.end method
