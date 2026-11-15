.class public final Lcom/transsion/rewardscenter/task/member/g;
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
    .locals 5

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getDurationCondition()Ljava/lang/Integer;

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
    int-to-long v0, v0

    .line 19
    const-wide/16 v2, 0x3c

    .line 20
    .line 21
    div-long/2addr v0, v2

    .line 22
    sget-object v2, Lhm/k;->a:Lhm/k;

    .line 23
    .line 24
    invoke-virtual {v2}, Lhm/k;->D()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v2, v3, v0, v1}, Lkotlin/ranges/RangesKt;->i(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTitle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " ("

    .line 45
    .line 46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, "/"

    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, " mins)"

    .line 61
    .line 62
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public F(Lcom/transsion/rewardscenterapi/MemberTaskItem;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getDurationCondition()Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v0

    .line 16
    :goto_0
    int-to-long v1, v1

    .line 17
    const-wide/16 v3, 0x3c

    .line 18
    .line 19
    div-long/2addr v1, v3

    .line 20
    sget-object v3, Lhm/k;->a:Lhm/k;

    .line 21
    .line 22
    invoke-virtual {v3}, Lhm/k;->D()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getStatus()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v5, 0x3

    .line 40
    if-ne p1, v5, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    cmp-long p1, v3, v1

    .line 44
    .line 45
    if-ltz p1, :cond_3

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    :cond_3
    :goto_2
    return v0
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
    const-string p1, "oneroom://com.community.oneroom?type=/main/tab&bottomTab=home&topTab=Game"

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
    sget-object v0, Lcom/transsion/rewardscenterapi/TaskType;->GAME_RES_BROWSE:Lcom/transsion/rewardscenterapi/TaskType;

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
