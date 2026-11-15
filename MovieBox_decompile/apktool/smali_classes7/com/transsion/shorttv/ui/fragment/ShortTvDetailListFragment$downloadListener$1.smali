.class public final Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lur/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->z0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->y0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lur/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1, p1, p2}, Lur/d;->k(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->w0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv/ui/adapter/g;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x0

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    check-cast p1, Ljava/lang/Iterable;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    move-object v2, v1

    .line 67
    check-cast v2, Lnr/k;

    .line 68
    .line 69
    instance-of v3, v2, Lnr/e;

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    check-cast v2, Lnr/e;

    .line 74
    .line 75
    invoke-virtual {v2}, Lnr/e;->c()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-ne v2, p2, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move-object v1, v0

    .line 83
    :goto_0
    check-cast v1, Lnr/k;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move-object v1, v0

    .line 87
    :goto_1
    check-cast v1, Lnr/e;

    .line 88
    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 92
    .line 93
    invoke-static {v1}, Lnr/l;->a(Lnr/e;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_6

    .line 98
    .line 99
    invoke-static {p1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->y0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j0()Landroidx/lifecycle/b0;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v1}, Lnr/e;->c()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez p2, :cond_5

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eq p2, v2, :cond_6

    .line 125
    .line 126
    :goto_2
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    new-instance v6, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;

    .line 131
    .line 132
    invoke-direct {v6, v1, p1, v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;-><init>(Lnr/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lkotlin/coroutines/Continuation;)V

    .line 133
    .line 134
    .line 135
    const/4 v7, 0x3

    .line 136
    const/4 v8, 0x0

    .line 137
    const/4 v4, 0x0

    .line 138
    const/4 v5, 0x0

    .line 139
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 140
    .line 141
    .line 142
    :cond_6
    return-void
.end method
