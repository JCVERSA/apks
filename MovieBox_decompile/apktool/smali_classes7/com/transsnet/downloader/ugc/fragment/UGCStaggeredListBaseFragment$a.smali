.class public final Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$a;
.super Landroidx/recyclerview/widget/DiffUtil$e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->v0()Landroidx/recyclerview/widget/DiffUtil$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/transsnet/downloader/ugc/adapter/c;Lcom/transsnet/downloader/ugc/adapter/c;)Z
    .locals 5

    .line 1
    const-string v0, "oldItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newItem"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v0, v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    cmp-long p1, v3, p1

    .line 60
    .line 61
    if-nez p1, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v1, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-ne v0, v3, :cond_0

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 109
    .line 110
    .line 111
    move-result-wide p1

    .line 112
    cmp-long p1, v3, p1

    .line 113
    .line 114
    if-nez p1, :cond_0

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 118
    .line 119
    if-eqz v0, :cond_0

    .line 120
    .line 121
    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 122
    .line 123
    if-eqz v0, :cond_0

    .line 124
    .line 125
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    :goto_0
    return v1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 2
    .line 3
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$a;->a(Lcom/transsnet/downloader/ugc/adapter/c;Lcom/transsnet/downloader/ugc/adapter/c;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 2
    .line 3
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$a;->b(Lcom/transsnet/downloader/ugc/adapter/c;Lcom/transsnet/downloader/ugc/adapter/c;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public b(Lcom/transsnet/downloader/ugc/adapter/c;Lcom/transsnet/downloader/ugc/adapter/c;)Z
    .locals 1

    .line 1
    const-string v0, "oldItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newItem"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const/4 p1, 0x0

    .line 111
    :goto_0
    return p1
.end method
