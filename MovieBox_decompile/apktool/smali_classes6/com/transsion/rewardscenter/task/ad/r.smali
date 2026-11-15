.class public final Lcom/transsion/rewardscenter/task/ad/r;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

.field private f:Z

.field private final g:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/r;->e:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

    .line 5
    .line 6
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->STAGE_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/r;->g:I

    .line 13
    .line 14
    sget p1, Lcom/transsion/rewardscenter/R$layout;->member_task_stage_item_layout:I

    .line 15
    .line 16
    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/r;->h:I

    .line 17
    .line 18
    return-void
.end method

.method private static final A(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/v$c;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/ad/r;->B(Lcom/transsion/rewardscenter/task/ad/v$c;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private final B(Lcom/transsion/rewardscenter/task/ad/v$c;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "module_name"

    .line 7
    .line 8
    const-string v2, "member_ad_task_stage"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/v$c;->e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "ad_state"

    .line 22
    .line 23
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 27
    .line 28
    const-string v1, "MemberAdTask"

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final C()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "module_name"

    .line 7
    .line 8
    const-string v2, "member_ad_task_stage"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 14
    .line 15
    const-string v2, "MemberAdTask"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic y(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/v$c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/r;->A(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/v$c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/rewardscenter/task/ad/v;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/r;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/rewardscenter/task/ad/r;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/rewardscenter/task/ad/r;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v;)V
    .locals 1

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p2, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 17
    .line 18
    const-string v0, "null cannot be cast to non-null type com.transsion.rewardscenter.task.ad.StageTaskAdView"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/r;->e:Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;->setAdHelper(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)V

    .line 28
    .line 29
    .line 30
    move-object v0, p2

    .line 31
    check-cast v0, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;->setData(Lcom/transsion/rewardscenter/task/ad/v$c;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/q;

    .line 37
    .line 38
    invoke-direct {v0, p0, p2}, Lcom/transsion/rewardscenter/task/ad/q;-><init>(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;->setClickCallback(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    iget-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/r;->f:Z

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/r;->f:Z

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/transsion/rewardscenter/task/ad/r;->C()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method
