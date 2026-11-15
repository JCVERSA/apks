.class public final Lcom/transsion/rewardscenter/task/ad/p;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

.field private f:Z

.field private final g:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/p;->e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 5
    .line 6
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->REWARD_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/p;->g:I

    .line 13
    .line 14
    sget p1, Lcom/transsion/rewardscenter/R$layout;->member_task_reward_layout:I

    .line 15
    .line 16
    iput p1, p0, Lcom/transsion/rewardscenter/task/ad/p;->h:I

    .line 17
    .line 18
    return-void
.end method

.method private static final B(Lcom/transsion/rewardscenter/task/ad/p;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/ad/p;->D(Z)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Lcom/transsion/rewardscenter/task/ad/p;->e:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/transsion/rewardscenter/task/ad/o;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/rewardscenter/task/ad/o;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;->Y(Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final C(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private final D(Z)V
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
    const-string v2, "member_ad_task_reward"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "MemberAdTask"

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method static synthetic E(Lcom/transsion/rewardscenter/task/ad/p;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/ad/p;->D(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic y(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/rewardscenter/task/ad/p;->C(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/rewardscenter/task/ad/p;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/task/ad/p;->B(Lcom/transsion/rewardscenter/task/ad/p;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v;)V
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
    instance-of p2, p2, Lcom/transsion/rewardscenter/task/ad/v$b;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 17
    .line 18
    sget p2, Lcom/transsion/rewardscenter/R$id;->reward_action:I

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    new-instance p2, Lcom/transsion/rewardscenter/task/ad/n;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/transsion/rewardscenter/task/ad/n;-><init>(Lcom/transsion/rewardscenter/task/ad/p;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/p;->f:Z

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/p;->f:Z

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p2, p1, v0}, Lcom/transsion/rewardscenter/task/ad/p;->E(Lcom/transsion/rewardscenter/task/ad/p;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/rewardscenter/task/ad/v;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/p;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/task/ad/v;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/rewardscenter/task/ad/p;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/rewardscenter/task/ad/p;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/p;->m()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    return-object p2
.end method
