.class public final Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->L1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lp6/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$a;->a:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$a;->a:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->S1()Lcom/transsnet/downloader/adapter/u0$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/transsnet/downloader/adapter/u0$b;->a(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x3

    .line 13
    if-eq p2, v0, :cond_4

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_1
    iget-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$a;->a:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->H1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sget-object v0, Lcom/transsnet/downloader/api/DownloadPageType;->SERIES:Lcom/transsnet/downloader/api/DownloadPageType;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne p2, v0, :cond_3

    .line 32
    .line 33
    sget-object p2, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    :try_start_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    sget-object p1, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_0
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    sget-object p2, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    :goto_2
    sget-object p1, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->V()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/4 v4, 0x6

    .line 115
    const/4 v5, 0x0

    .line 116
    const/4 v2, 0x0

    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->I(Lcom/transsnet/downloader/viewmodel/DownloadListManager;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    iget-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$a;->a:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$a;->a:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;

    .line 128
    .line 129
    invoke-static {p2, p1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->I1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;I)V

    .line 130
    .line 131
    .line 132
    :goto_3
    return-void
.end method

.method public b(IIIZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/adapter/u0$b$a;->a(Lcom/transsnet/downloader/adapter/u0$b;IIIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
