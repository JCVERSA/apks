.class public final Lcom/transsion/letswitch/service/api/CmdResult$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/letswitch/service/api/CmdResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/transsion/letswitch/service/api/CmdResult;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/transsion/letswitch/service/api/CmdResult;
    .locals 1

    .line 1
    const-string p0, "parcel"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/letswitch/service/api/CmdResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/letswitch/service/api/CmdResult;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/service/api/CmdResult$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/transsion/letswitch/service/api/CmdResult;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/transsion/letswitch/service/api/CmdResult;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/transsion/letswitch/service/api/CmdResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/letswitch/service/api/CmdResult$Creator;->newArray(I)[Lcom/transsion/letswitch/service/api/CmdResult;

    move-result-object p0

    return-object p0
.end method
