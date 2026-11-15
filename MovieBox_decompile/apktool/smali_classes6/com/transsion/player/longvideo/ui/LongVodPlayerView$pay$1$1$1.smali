.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/payment/lib/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field final synthetic b:Lln/b;

.field final synthetic c:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/b;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->b:Lln/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p1, "balance"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$hideResolutionPanel(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getConfigViewModel(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/ui/dialog/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->b:Lln/b;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/a;->c(Lln/b;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v3, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1$success$1;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-direct {v3, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1$success$1;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    .line 43
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->d:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->b:Lln/b;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " --> success() --> \u652f\u4ed8\u6210\u529f\uff0c\u5207\u6362\u5206\u8fa8\u7387 --> skuId = "

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " -- config = "

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Lwj/h;->a(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 93
    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    move-object p1, p2

    .line 100
    :goto_0
    if-eqz p1, :cond_1

    .line 101
    .line 102
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    new-instance v3, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1$success$2;

    .line 109
    .line 110
    invoke-direct {v3, p3, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1$success$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 111
    .line 112
    .line 113
    const/4 v4, 0x3

    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v1, 0x0

    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 118
    .line 119
    .line 120
    :cond_1
    return-void
.end method
