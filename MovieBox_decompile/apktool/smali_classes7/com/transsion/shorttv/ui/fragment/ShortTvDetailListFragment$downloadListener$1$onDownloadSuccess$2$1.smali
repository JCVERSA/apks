.class final Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1"
    f = "ShortTvDetailListFragment.kt"
    l = {
        0x46e
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $it:Lnr/e;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;


# direct methods
.method constructor <init>(Lnr/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnr/e;",
            "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->$it:Lnr/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->this$0:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->$it:Lnr/e;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->this$0:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;-><init>(Lnr/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$2:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lnr/e;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v11, v2

    .line 28
    move-object v2, v0

    .line 29
    move-object v0, v11

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->$it:Lnr/e;

    .line 43
    .line 44
    invoke-virtual {p1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Media;->getVideo()Lcom/transsion/shorttv/bean/Video;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->this$0:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->$it:Lnr/e;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->y0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lur/d;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    invoke-virtual {v3}, Lnr/e;->e()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v3}, Lnr/e;->c()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    iput-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object v3, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$1:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$2:Ljava/lang/Object;

    .line 95
    .line 96
    iput v2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->label:I

    .line 97
    .line 98
    invoke-interface {v4, v5, v6, p1, p0}, Lur/d;->a(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-ne v2, v0, :cond_2

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_2
    move-object v0, v1

    .line 106
    move-object v1, v3

    .line 107
    move-object v11, v2

    .line 108
    move-object v2, p1

    .line 109
    move-object p1, v11

    .line 110
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 111
    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    invoke-static {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->x0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Lpn/f;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    if-eqz v8, :cond_4

    .line 119
    .line 120
    new-instance v9, Lgn/e;

    .line 121
    .line 122
    invoke-virtual {v1}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_1
    move-object v3, v0

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    const/4 v0, 0x0

    .line 135
    goto :goto_1

    .line 136
    :goto_2
    invoke-virtual {v1}, Lnr/e;->c()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    const/16 v6, 0x18

    .line 141
    .line 142
    const/4 v7, 0x0

    .line 143
    const/4 v5, 0x0

    .line 144
    const/4 v10, 0x0

    .line 145
    move-object v0, v9

    .line 146
    move-object v1, v3

    .line 147
    move v3, v4

    .line 148
    move-object v4, v5

    .line 149
    move-object v5, v10

    .line 150
    invoke-direct/range {v0 .. v7}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, p1}, Lgn/e;->p(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v8, v9}, Lpn/f;->a(Lgn/e;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p1
.end method
