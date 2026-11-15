.class public final Lcom/transsion/rewardscenter/task/ad/d;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/task/ad/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/transsion/rewardscenter/task/ad/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J%\u0010\u000b\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/transsion/rewardscenter/task/ad/d;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/rewardscenter/task/ad/v;",
        "Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;",
        "adHelper",
        "<init>",
        "(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V",
        "",
        "data",
        "",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "a",
        "RewardsCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final G:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/r;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/ad/r;-><init>(Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/s;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/transsion/rewardscenter/task/ad/s;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/m;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/ad/m;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/p;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/ad/p;-><init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdHelper;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method protected N1(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/rewardscenter/task/ad/v;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v;

    .line 11
    .line 12
    instance-of p2, p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->STAGE_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of p2, p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->REGULAR_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of p1, p1, Lcom/transsion/rewardscenter/task/ad/v$b;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    sget-object p1, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->REWARD_AD:Lcom/transsion/rewardscenter/task/ad/AdTaskType;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/rewardscenter/task/ad/AdTaskType;->getValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :goto_0
    return p1

    .line 45
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 46
    .line 47
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p1
.end method
