.class public final Lcom/transsion/rewardscenter/task/member/e;
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
.method public D(Lcom/transsion/rewardscenterapi/MemberTaskItem;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTimesCondition()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    sget-object v1, Lhm/k;->a:Lhm/k;

    .line 19
    .line 20
    invoke-virtual {v1}, Lhm/k;->G()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, " ("

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, "/"

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, ")"

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public F(Lcom/transsion/rewardscenterapi/MemberTaskItem;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTimesCondition()Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v0

    .line 16
    :goto_0
    sget-object v1, Lhm/k;->a:Lhm/k;

    .line 17
    .line 18
    invoke-virtual {v1}, Lhm/k;->G()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lt v1, p1, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_1
    return v0
.end method

.method public G()V
    .locals 1

    .line 1
    sget-object v0, Lhm/k;->a:Lhm/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhm/k;->u()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public K(Landroid/widget/TextView;Lcom/transsion/rewardscenterapi/MemberTaskItem;)V
    .locals 6

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
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getJumpUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getJumpUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-string p1, ""

    .line 31
    .line 32
    :cond_1
    :goto_0
    move-object v2, p1

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    const-string p1, "oneroom://com.community.oneroom?type=/main/tab&tabIndex=0"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_2
    sget-object v0, Lhj/b;->a:Lhj/b;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v4, 0x4

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static/range {v0 .. v5}, Lhj/b;->d(Lhj/b;Landroid/content/Context;Ljava/lang/String;Lhj/c;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenterapi/TaskType;->DOWNLOAD_MOVIE:Lcom/transsion/rewardscenterapi/TaskType;

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
