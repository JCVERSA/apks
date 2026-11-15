.class public final Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportLiveViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Landroid/view/View;",
        "rootView",
        "<init>",
        "(Landroid/view/View;)V",
        "",
        "timestamp",
        "",
        "g",
        "(J)Ljava/lang/String;",
        "Lcom/transsion/home/bean/LiveListItem;",
        "item",
        "",
        "j",
        "(Lcom/transsion/home/bean/LiveListItem;)V",
        "i",
        "()V",
        "h",
        "a",
        "Landroid/view/View;",
        "getRootView",
        "()Landroid/view/View;",
        "Lkotlinx/coroutines/t1;",
        "b",
        "Lkotlinx/coroutines/t1;",
        "job",
        "c",
        "Lcom/transsion/home/bean/LiveListItem;",
        "info",
        "Home_psRelease"
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
.field private final a:Landroid/view/View;

.field private b:Lkotlinx/coroutines/t1;

.field private c:Lcom/transsion/home/bean/LiveListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "rootView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->a:Landroid/view/View;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic f(Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;)Lcom/transsion/home/bean/LiveListItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->c:Lcom/transsion/home/bean/LiveListItem;

    .line 2
    .line 3
    return-object p0
.end method

.method private final g(J)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2}, Lcom/transsion/baseui/util/TimeUtilKt;->q(J)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sub-long/2addr p1, v0

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 14
    .line 15
    const-string v1, " \u00b7 HH:mm:ss"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "GMT+0:00"

    .line 21
    .line 22
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->i()V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "format(...)"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_0
    if-gez v1, :cond_1

    .line 47
    .line 48
    const-string p1, ""

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->a:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne v1, v0, :cond_2

    .line 62
    .line 63
    sget p2, Lcom/transsion/usercenter/R$string;->user_day_left:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget p2, Lcom/transsion/usercenter/R$string;->user_days_left:I

    .line 67
    .line 68
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    aput-object v1, v0, v2

    .line 76
    .line 77
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v0, " \u00b7 "

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method


# virtual methods
.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->b:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->b:Lkotlinx/coroutines/t1;

    .line 11
    .line 12
    return-void
.end method

.method public final i()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->c:Lcom/transsion/home/bean/LiveListItem;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/home/bean/LiveListItem;->getStatus()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    const-string v2, "MatchIng"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->b:Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    instance-of v2, v0, Landroidx/lifecycle/u;

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    check-cast v0, Landroidx/lifecycle/u;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    move-object v0, v1

    .line 45
    :goto_1
    if-nez v0, :cond_4

    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v5, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder$startCutDown$1;

    .line 53
    .line 54
    invoke-direct {v5, v0, p0, v1}, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder$startCutDown$1;-><init>(Landroidx/lifecycle/u;Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x3

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->b:Lkotlinx/coroutines/t1;

    .line 66
    .line 67
    :cond_5
    :goto_2
    return-void
.end method

.method public final j(Lcom/transsion/home/bean/LiveListItem;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->c:Lcom/transsion/home/bean/LiveListItem;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/home/bean/LiveListItem;->getStartTime()Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-wide v3, v1

    .line 20
    :goto_0
    sget v0, Lcom/transsion/home/R$id;->main_op_sport_live_status_text:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    sub-long v5, v3, v5

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/home/bean/LiveListItem;->getStartTime()Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v8, "MatchNotStart"

    .line 42
    .line 43
    const-string v9, "MatchIng"

    .line 44
    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    cmp-long v1, v5, v1

    .line 48
    .line 49
    if-gtz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1, v9}, Lcom/transsion/home/bean/LiveListItem;->setStatus(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1, v8}, Lcom/transsion/home/bean/LiveListItem;->setStatus(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/home/bean/LiveListItem;->getStatus()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->a:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget v1, Lcom/transsion/home/R$string;->sport_live_upcoming:I

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, v3, v4}, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->g(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    sget p1, Lcom/tn/lib/widget/R$drawable;->bg_corner_tips_rectangle_2:I

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    const-string p1, ""

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    sget p1, Lcom/transsion/home/R$mipmap;->ic_op_sport_live_status:I

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    invoke-static {v0}, Luf/c;->h(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    return-void
.end method
