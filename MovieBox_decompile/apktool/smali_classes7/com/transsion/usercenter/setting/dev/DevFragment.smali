.class public final Lcom/transsion/usercenter/setting/dev/DevFragment;
.super Lcom/transsion/baseui/fragment/BaseListFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseListFragment<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017R\u0014\u0010\u001d\u001a\u00020\u00028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/dev/DevFragment;",
        "Lcom/transsion/baseui/fragment/BaseListFragment;",
        "",
        "<init>",
        "()V",
        "s0",
        "()Ljava/lang/String;",
        "getPageStateLayoutTitle",
        "",
        "isShowPageStateLayoutTitle",
        "()Z",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "m0",
        "()Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "",
        "G0",
        "loadMore",
        "initViewModel",
        "lazyLoadData",
        "retryLoadData",
        "",
        "b",
        "I",
        "page",
        "c",
        "pageSize",
        "d",
        "Ljava/lang/String;",
        "id",
        "e",
        "Z",
        "isSetRvEmptyLayout",
        "Lcom/transsion/usercenter/setting/dev/f;",
        "f",
        "Lkotlin/Lazy;",
        "R0",
        "()Lcom/transsion/usercenter/setting/dev/f;",
        "mViewModel",
        "UserCenter_psRelease"
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
.field private b:I

.field private c:I

.field private final d:Ljava/lang/String;

.field private e:Z

.field private final f:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->c:I

    .line 7
    .line 8
    const-string v0, "ID:001"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->d:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/usercenter/setting/dev/a;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/transsion/usercenter/setting/dev/a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->f:Lkotlin/Lazy;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic O0()Lcom/transsion/usercenter/setting/dev/f;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/setting/dev/DevFragment;->U0()Lcom/transsion/usercenter/setting/dev/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic P0(Lcom/transsion/usercenter/setting/dev/DevFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->T0(Lcom/transsion/usercenter/setting/dev/DevFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q0(Lcom/transsion/usercenter/setting/dev/DevFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/dev/DevFragment;->S0(Lcom/transsion/usercenter/setting/dev/DevFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final R0()Lcom/transsion/usercenter/setting/dev/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/usercenter/setting/dev/f;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final S0(Lcom/transsion/usercenter/setting/dev/DevFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->changeLoadingState(Z)V

    .line 3
    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->e:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0, v3, v2, v3}, Lcom/transsion/baseui/fragment/BaseListFragment;->K0(Lcom/transsion/baseui/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget v1, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->b:I

    .line 21
    .line 22
    add-int/2addr v1, v2

    .line 23
    iput v1, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->b:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->A0()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    invoke-static {p0, v3, v2, v3}, Lcom/transsion/baseui/fragment/BaseListFragment;->K0(Lcom/transsion/baseui/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    check-cast p1, Ljava/util/Collection;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_3
    if-nez p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->E0()V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_1

    .line 77
    :cond_5
    move v1, v0

    .line 78
    :goto_1
    const/16 v4, 0x14

    .line 79
    .line 80
    if-le v1, v4, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->E0()V

    .line 83
    .line 84
    .line 85
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p0

    .line 88
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    goto :goto_2

    .line 105
    :cond_7
    move v1, v0

    .line 106
    :goto_2
    const/16 v4, 0x1e

    .line 107
    .line 108
    if-le v1, v4, :cond_8

    .line 109
    .line 110
    invoke-static {p0, v0, v2, v3}, Lcom/transsion/baseui/fragment/BaseListFragment;->D0(Lcom/transsion/baseui/fragment/BaseListFragment;ZILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_9

    .line 119
    .line 120
    check-cast p1, Ljava/util/Collection;

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 123
    .line 124
    .line 125
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseListFragment;->B0()V

    .line 126
    .line 127
    .line 128
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p0
.end method

.method private static final T0(Lcom/transsion/usercenter/setting/dev/DevFragment;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->R0()Lcom/transsion/usercenter/setting/dev/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->b:I

    .line 6
    .line 7
    iget v2, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->c:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/usercenter/setting/dev/f;->e(IILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final U0()Lcom/transsion/usercenter/setting/dev/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/usercenter/setting/dev/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/usercenter/setting/dev/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public G0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/usercenter/setting/dev/DevFragment;->b:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->lazyLoadData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u65e0\u7f51\u7edc\u3001\u65e0\u6570\u636e\u7684\u65f6\u5019\u5c55\u793a\u7684\u6807\u9898"

    .line 2
    .line 3
    return-object v0
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->R0()Lcom/transsion/usercenter/setting/dev/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/dev/f;->d()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsion/usercenter/setting/dev/c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/setting/dev/c;-><init>(Lcom/transsion/usercenter/setting/dev/DevFragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsion/usercenter/setting/dev/DevFragment$a;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsion/usercenter/setting/dev/DevFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public isShowPageStateLayoutTitle()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public lazyLoadData()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, v0, v1, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->M0(Lcom/transsion/baseui/fragment/BaseListFragment;Landroid/view/View;ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljj/b;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljj/b;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/transsion/usercenter/setting/dev/b;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/transsion/usercenter/setting/dev/b;-><init>(Lcom/transsion/usercenter/setting/dev/DevFragment;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0xbb8

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public loadMore()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->lazyLoadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public m0()Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/usercenter/setting/dev/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/usercenter/setting/dev/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public retryLoadData()V
    .locals 2

    .line 1
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    const-string v1, "\u8054\u7f51\u91cd\u8bd5"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->lazyLoadData()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public s0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u6211\u662f\u6807\u9898"

    .line 2
    .line 3
    return-object v0
.end method
