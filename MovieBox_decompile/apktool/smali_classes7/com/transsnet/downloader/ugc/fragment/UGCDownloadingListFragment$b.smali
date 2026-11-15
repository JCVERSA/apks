.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;
.super Lzw/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lzw/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->j(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->x0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->H()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public h(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 7

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->getTAG()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const-string v3, "onRefresh completed -> refresh all"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;->p1(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 32
    .line 33
    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/f0;

    .line 34
    .line 35
    invoke-direct {v0, p2}, Lcom/transsnet/downloader/ugc/fragment/f0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v1, 0x1f4

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_0
    iget-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/4 v0, -0x1

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 76
    .line 77
    instance-of v3, v2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 78
    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    check-cast v2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    move v0, v1

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    :goto_1
    if-ltz v0, :cond_6

    .line 107
    .line 108
    iget-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const/4 v1, 0x0

    .line 115
    if-eqz p2, :cond_3

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move-object p2, v1

    .line 125
    :goto_2
    instance-of v2, p2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 126
    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    move-object v1, p2

    .line 130
    check-cast v1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 131
    .line 132
    :cond_4
    if-eqz v1, :cond_6

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 157
    .line 158
    :cond_5
    iget-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    if-eqz p2, :cond_6

    .line 165
    .line 166
    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    :goto_3
    return-void
.end method
