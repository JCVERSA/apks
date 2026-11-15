.class public final Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;
    .locals 5

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-eq v3, v1, :cond_0

    .line 21
    .line 22
    sget-object v4, Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    .line 24
    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    .line 36
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;

    .line 41
    .line 42
    new-instance v1, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;

    .line 43
    .line 44
    invoke-direct {v1, v0, v2, p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;)V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method public final b(I)[Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem$a;->a(Landroid/os/Parcel;)Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem$a;->b(I)[Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
