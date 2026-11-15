.class public final Lcom/transsion/bean/lottery/LotteryDrawResultEntity$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/bean/lottery/LotteryDrawResultEntity;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/bean/lottery/LotteryDrawResultEntity;
    .locals 2

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    .line 7
    .line 8
    sget-object v1, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;-><init>(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/bean/lottery/LotteryDrawResultEntity;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$a;->a(Landroid/os/Parcel;)Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

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
    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$a;->b(I)[Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
