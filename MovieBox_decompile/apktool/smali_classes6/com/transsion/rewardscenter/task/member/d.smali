.class public final Lcom/transsion/rewardscenter/task/member/d;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/task/member/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/transsion/rewardscenterapi/MemberTaskItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J%\u0010\u000b\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u000f2\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/rewardscenter/task/member/d;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/rewardscenterapi/MemberTaskItem;",
        "Lzo/a;",
        "config",
        "<init>",
        "(Lzo/a;)V",
        "",
        "data",
        "",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
        "provider",
        "",
        "F1",
        "(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V",
        "",
        "list",
        "n1",
        "(Ljava/util/Collection;)V",
        "",
        "G",
        "Ljava/util/Set;",
        "supportTaskTypes",
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
.field public static final H:I = 0x8


# instance fields
.field private final G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lzo/a;)V
    .locals 2

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/rewardscenter/task/member/d;->G:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/rewardscenter/task/member/k;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/member/k;-><init>(Lzo/a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/member/d;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/transsion/rewardscenter/task/member/h;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/member/h;-><init>(Lzo/a;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/member/d;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/transsion/rewardscenter/task/member/j;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/member/j;-><init>(Lzo/a;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/member/d;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/transsion/rewardscenter/task/member/e;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/member/e;-><init>(Lzo/a;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/member/d;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/transsion/rewardscenter/task/member/i;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/member/i;-><init>(Lzo/a;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/member/d;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/transsion/rewardscenter/task/member/f;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/member/f;-><init>(Lzo/a;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/member/d;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/transsion/rewardscenter/task/member/g;

    .line 67
    .line 68
    invoke-direct {v0, p1}, Lcom/transsion/rewardscenter/task/member/g;-><init>(Lzo/a;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/transsion/rewardscenter/task/member/d;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/member/d;->G:Ljava/util/Set;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->l()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected N1(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/rewardscenterapi/MemberTaskItem;",
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
    check-cast p1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public n1(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/transsion/rewardscenterapi/MemberTaskItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/transsion/rewardscenter/task/member/d;->G:Ljava/util/Set;

    .line 30
    .line 31
    check-cast v2, Ljava/lang/Iterable;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "task type "

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " not support"

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const/4 v7, 0x4

    .line 76
    const/4 v8, 0x0

    .line 77
    const-string v4, "MemberTask"

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-super {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
