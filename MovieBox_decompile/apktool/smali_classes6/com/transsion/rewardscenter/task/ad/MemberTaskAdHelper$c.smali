.class public final Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;-><init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->N(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Loh/a;->k(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    const-string v2, "MemberTaskStageNativeScene"

    .line 11
    .line 12
    invoke-static {v0, v2, p1, v1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->D(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {v0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->N(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;->x(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final x(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Lcom/transsion/rewardscenter/task/ad/v$c;
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v0, "bean"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v14, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 9
    .line 10
    move-object/from16 v15, p0

    .line 11
    .line 12
    iget-object v0, v15, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;->d:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    const/16 v12, 0x1de

    .line 19
    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const-wide/16 v8, 0x0

    .line 27
    .line 28
    const-wide/16 v10, 0x0

    .line 29
    .line 30
    move-object v0, v14

    .line 31
    invoke-direct/range {v0 .. v13}, Lcom/transsion/rewardscenter/task/ad/v$c;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    return-object v14
.end method
