.class public final Lcom/transsion/rewardscenter/task/member/h;
.super Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;
.source "source.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lzo/a;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;-><init>(Lzo/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public E(Landroid/widget/TextView;Lcom/transsion/rewardscenterapi/MemberTaskItem;)V
    .locals 1

    .line 1
    const-string v0, "button"

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
    invoke-super {p0, p1, p2}, Lcom/transsion/rewardscenter/task/member/BaseTaskCommonProvider;->E(Landroid/widget/TextView;Lcom/transsion/rewardscenterapi/MemberTaskItem;)V

    .line 12
    .line 13
    .line 14
    const/high16 p2, 0x3f000000    # 0.5f

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public K(Landroid/widget/TextView;Lcom/transsion/rewardscenterapi/MemberTaskItem;)V
    .locals 1

    .line 1
    const-string v0, "button"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "item"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenterapi/TaskType;->OPEN_APP:Lcom/transsion/rewardscenterapi/TaskType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
