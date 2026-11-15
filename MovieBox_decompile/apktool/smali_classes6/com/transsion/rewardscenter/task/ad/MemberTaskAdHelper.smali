.class public final Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;
.super Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$a;

.field public static final s:I

.field private static final t:Lkotlin/Lazy;

.field private static final u:Lkotlin/Lazy;


# instance fields
.field private final g:Landroid/content/Context;

.field private final h:Lkotlinx/coroutines/n0;

.field private i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

.field private j:Lkotlin/jvm/functions/Function1;

.field private k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

.field private l:Lkotlin/jvm/functions/Function1;

.field private m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

.field private n:Lkotlin/jvm/functions/Function1;

.field private final o:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;

.field private final p:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;

.field private final q:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->r:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->s:I

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/e;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/e;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->t:Lkotlin/Lazy;

    .line 23
    .line 24
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/f;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/f;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->u:Lkotlin/Lazy;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;-><init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->h:Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->o:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->p:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;

    .line 26
    .line 27
    new-instance p1, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->q:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic B()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->b0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic C()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->a0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final synthetic D(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->W(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic F(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlinx/coroutines/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->h:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic G()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->u:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic H()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->t:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic I(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->l:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic J(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic K(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->n:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic M(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->q:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$rewardAdListener$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic N(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic O(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Lcom/transsion/ad/bidding/video/BiddingVideoManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    return-void
.end method

.method private final T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->U()V

    .line 14
    .line 15
    .line 16
    :cond_1
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 17
    .line 18
    return-void
.end method

.method private final U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 14
    .line 15
    .line 16
    :cond_1
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->m:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 17
    .line 18
    return-void
.end method

.method private final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->U()V

    .line 14
    .line 15
    .line 16
    :cond_1
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 17
    .line 18
    return-void
.end method

.method private final W(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 11

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "MemberTaskAdHelper ----> "

    .line 10
    .line 11
    const-string v3, "Regular"

    .line 12
    .line 13
    const-string v4, "Stage"

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 22
    .line 23
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    move-object v3, v4

    .line 34
    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " loaded item, packageName: "

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const/4 v9, 0x4

    .line 62
    const/4 v10, 0x0

    .line 63
    const-string v6, "StageTaskAd"

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    check-cast p2, Ljava/lang/Iterable;

    .line 71
    .line 72
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$filterAds$$inlined$sortedByDescending$1;

    .line 73
    .line 74
    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$filterAds$$inlined$sortedByDescending$1;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Ljava/lang/Iterable;

    .line 82
    .line 83
    new-instance v0, Ljava/util/HashSet;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    move-object v6, v5

    .line 108
    check-cast v6, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 109
    .line 110
    invoke-virtual {p0, v6}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_2

    .line 119
    .line 120
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    move-object v5, v1

    .line 144
    check-cast v5, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 145
    .line 146
    sget-object v6, Lcom/transsion/rewardscenter/task/ad/u;->a:Lcom/transsion/rewardscenter/task/ad/u;

    .line 147
    .line 148
    invoke-virtual {p0, v5}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v6, p1, v5}, Lcom/transsion/rewardscenter/task/ad/u;->m(Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-nez v5, :cond_4

    .line 157
    .line 158
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_7

    .line 171
    .line 172
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 177
    .line 178
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 179
    .line 180
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_6

    .line 187
    .line 188
    move-object v1, v4

    .line 189
    goto :goto_4

    .line 190
    :cond_6
    move-object v1, v3

    .line 191
    :goto_4
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, " filtered item, packageName: "

    .line 207
    .line 208
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    const/4 v9, 0x4

    .line 219
    const/4 v10, 0x0

    .line 220
    const-string v6, "StageTaskAd"

    .line 221
    .line 222
    const/4 v8, 0x0

    .line 223
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_7
    return-object p2
.end method

.method private static final a0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 2
    .line 3
    const-string v1, "MemberTaskRegularNativeScene"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->g(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static final b0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 2
    .line 3
    const-string v1, "MemberTaskStageNativeScene"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->g(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method


# virtual methods
.method public final Q(Lcom/transsion/rewardscenter/task/ad/v$a;)V
    .locals 7

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->n(Z)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v2, "StageTaskAd"

    .line 22
    .line 23
    const-string v3, "MemberTaskAdHelper ----> bindRegularNativeAd"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->R()V

    .line 34
    .line 35
    .line 36
    :cond_1
    new-instance v0, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v0, v1, v3, v2, v3}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->p(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/d0;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/d0;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->l(Lcom/transsion/ad/bidding/base/r;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/w;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/w;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$a;->q(Lcom/transsion/ad/bidding/base/u;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->h()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->d()Lcom/transsion/ad/bidding/base/r;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->j()Lcom/transsion/ad/bidding/base/u;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$a;->c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method public final R()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 7
    .line 8
    const-string v1, "MemberTaskRegularNativeScene"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->p:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$b;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final S()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 7
    .line 8
    const-string v1, "MemberTaskStageNativeScene"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->o:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$c;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final X(Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->l:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->u()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-gtz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->t()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-gtz p1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->T()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->R()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->h:Lkotlinx/coroutines/n0;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v3, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadRegularAd$1;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-direct {v3, p0, p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadRegularAd$1;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final Y(Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->n:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->U()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->h:Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v4, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadRewardAd$1;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-direct {v4, p0, p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadRewardAd$1;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final Z(Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->j:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->v()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-gtz p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->V()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->h:Lkotlinx/coroutines/n0;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v3, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadStageAd$1;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-direct {v3, p0, p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper$loadStageAd$1;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public c(Lcom/transsion/rewardscenter/task/ad/v$c;)V
    .locals 4

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->n(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->S()V

    .line 22
    .line 23
    .line 24
    :cond_1
    new-instance v0, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v0, v1, v3, v2, v3}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->p(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/d0;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/d0;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->l(Lcom/transsion/ad/bidding/base/r;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/w;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->g:Landroid/content/Context;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/task/ad/w;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/v$c;->r(Lcom/transsion/ad/bidding/base/u;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->h()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->d()Lcom/transsion/ad/bidding/base/r;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->k()Lcom/transsion/ad/bidding/base/u;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->i:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->U()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->j:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->l:Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->n:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    return-void
.end method
