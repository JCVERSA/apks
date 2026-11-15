.class public final Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

.field final synthetic b:Lur/i;

.field final synthetic c:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Lur/i;Lcom/transsion/shorttv/bean/Subject;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->b:Lur/i;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->c:Lcom/transsion/shorttv/bean/Subject;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lkotlin/Unit;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->O0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->j()Landroidx/lifecycle/b0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->j()Landroidx/lifecycle/b0;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->p()Landroidx/lifecycle/b0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 61
    .line 62
    :cond_2
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->isPaid()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 v0, 0x1

    .line 69
    if-ne p1, v0, :cond_4

    .line 70
    .line 71
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->g0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R0(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->g0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->S0()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->P0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->r()Landroidx/lifecycle/b0;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/lang/Long;

    .line 113
    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const-wide/16 v0, 0x0

    .line 122
    .line 123
    :goto_0
    invoke-static {p1, v0, v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->M0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;J)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->b:Lur/i;

    .line 130
    .line 131
    invoke-interface {v0}, Lur/i;->getUserId()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->c:Lcom/transsion/shorttv/bean/Subject;

    .line 136
    .line 137
    iget v2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->d:I

    .line 138
    .line 139
    invoke-static {p1, v0, v1, v2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->G0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)V

    .line 140
    .line 141
    .line 142
    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Unit;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a(Lkotlin/Unit;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
