.class public final Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field final synthetic b:Lur/i;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lur/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->b:Lur/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lkotlin/Unit;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$setLoading(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l0()Landroidx/lifecycle/b0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l0()Landroidx/lifecycle/b0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 62
    .line 63
    :cond_2
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->isPaid()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 v0, 0x1

    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/f;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayerView$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/ui/ORPlayerView;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getData$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lnr/e;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lnr/e;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->b:Lur/i;

    .line 97
    .line 98
    invoke-interface {v0}, Lur/i;->getUserId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$callPayMethod(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Unit;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a(Lkotlin/Unit;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
