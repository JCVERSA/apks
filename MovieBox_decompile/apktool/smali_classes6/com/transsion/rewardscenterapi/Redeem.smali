.class public final Lcom/transsion/rewardscenterapi/Redeem;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/rewardscenterapi/Redeem;",
        "Ljava/io/Serializable;",
        "skuPointList",
        "",
        "Lcom/transsion/rewardscenterapi/SkuPoint;",
        "lotteryPrize",
        "Lcom/transsion/rewardscenterapi/LotteryPrize;",
        "hasPaid",
        "",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/rewardscenterapi/LotteryPrize;Z)V",
        "getSkuPointList",
        "()Ljava/util/List;",
        "getLotteryPrize",
        "()Lcom/transsion/rewardscenterapi/LotteryPrize;",
        "getHasPaid",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "RewardsCenterApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final hasPaid:Z

.field private final lotteryPrize:Lcom/transsion/rewardscenterapi/LotteryPrize;

.field private final skuPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/rewardscenterapi/SkuPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/rewardscenterapi/Redeem;-><init>(Ljava/util/List;Lcom/transsion/rewardscenterapi/LotteryPrize;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/transsion/rewardscenterapi/LotteryPrize;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/rewardscenterapi/SkuPoint;",
            ">;",
            "Lcom/transsion/rewardscenterapi/LotteryPrize;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/rewardscenterapi/Redeem;->skuPointList:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/transsion/rewardscenterapi/Redeem;->lotteryPrize:Lcom/transsion/rewardscenterapi/LotteryPrize;

    .line 5
    iput-boolean p3, p0, Lcom/transsion/rewardscenterapi/Redeem;->hasPaid:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/rewardscenterapi/LotteryPrize;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/rewardscenterapi/Redeem;-><init>(Ljava/util/List;Lcom/transsion/rewardscenterapi/LotteryPrize;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/rewardscenterapi/Redeem;Ljava/util/List;Lcom/transsion/rewardscenterapi/LotteryPrize;ZILjava/lang/Object;)Lcom/transsion/rewardscenterapi/Redeem;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/rewardscenterapi/Redeem;->skuPointList:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/rewardscenterapi/Redeem;->lotteryPrize:Lcom/transsion/rewardscenterapi/LotteryPrize;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Lcom/transsion/rewardscenterapi/Redeem;->hasPaid:Z

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/rewardscenterapi/Redeem;->copy(Ljava/util/List;Lcom/transsion/rewardscenterapi/LotteryPrize;Z)Lcom/transsion/rewardscenterapi/Redeem;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/rewardscenterapi/SkuPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenterapi/Redeem;->skuPointList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/transsion/rewardscenterapi/LotteryPrize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenterapi/Redeem;->lotteryPrize:Lcom/transsion/rewardscenterapi/LotteryPrize;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/rewardscenterapi/Redeem;->hasPaid:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/util/List;Lcom/transsion/rewardscenterapi/LotteryPrize;Z)Lcom/transsion/rewardscenterapi/Redeem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/rewardscenterapi/SkuPoint;",
            ">;",
            "Lcom/transsion/rewardscenterapi/LotteryPrize;",
            "Z)",
            "Lcom/transsion/rewardscenterapi/Redeem;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/rewardscenterapi/Redeem;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/rewardscenterapi/Redeem;-><init>(Ljava/util/List;Lcom/transsion/rewardscenterapi/LotteryPrize;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/rewardscenterapi/Redeem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/rewardscenterapi/Redeem;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/rewardscenterapi/Redeem;->skuPointList:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/rewardscenterapi/Redeem;->skuPointList:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/rewardscenterapi/Redeem;->lotteryPrize:Lcom/transsion/rewardscenterapi/LotteryPrize;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/rewardscenterapi/Redeem;->lotteryPrize:Lcom/transsion/rewardscenterapi/LotteryPrize;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-boolean v1, p0, Lcom/transsion/rewardscenterapi/Redeem;->hasPaid:Z

    .line 36
    .line 37
    iget-boolean p1, p1, Lcom/transsion/rewardscenterapi/Redeem;->hasPaid:Z

    .line 38
    .line 39
    if-eq v1, p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final getHasPaid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/rewardscenterapi/Redeem;->hasPaid:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLotteryPrize()Lcom/transsion/rewardscenterapi/LotteryPrize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenterapi/Redeem;->lotteryPrize:Lcom/transsion/rewardscenterapi/LotteryPrize;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkuPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/rewardscenterapi/SkuPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenterapi/Redeem;->skuPointList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenterapi/Redeem;->skuPointList:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/rewardscenterapi/Redeem;->lotteryPrize:Lcom/transsion/rewardscenterapi/LotteryPrize;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/rewardscenterapi/LotteryPrize;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/transsion/rewardscenterapi/Redeem;->hasPaid:Z

    .line 27
    .line 28
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenterapi/Redeem;->skuPointList:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenterapi/Redeem;->lotteryPrize:Lcom/transsion/rewardscenterapi/LotteryPrize;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/rewardscenterapi/Redeem;->hasPaid:Z

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "Redeem(skuPointList="

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", lotteryPrize="

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", hasPaid="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
