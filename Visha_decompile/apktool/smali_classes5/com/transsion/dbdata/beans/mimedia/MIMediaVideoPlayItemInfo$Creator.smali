.class public final Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;
    .locals 7

    .line 1
    const-string p0, "parcel"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo$Creator;->newArray(I)[Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;

    move-result-object p0

    return-object p0
.end method
