.class public final Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;
    .locals 11

    .line 1
    const-string p0, "parcel"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    move-object v8, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_2
    if-eq v0, p0, :cond_1

    sget-object v10, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    new-instance p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo$Creator;->newArray(I)[Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    move-result-object p0

    return-object p0
.end method
