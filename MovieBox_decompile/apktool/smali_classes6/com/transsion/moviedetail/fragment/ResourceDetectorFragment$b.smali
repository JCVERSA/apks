.class public final Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

.field final synthetic b:I

.field final synthetic c:Lcom/transsion/moviedetailapi/DownloadItem;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/transsion/moviedetail/adapter/p;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;ILcom/transsion/moviedetailapi/DownloadItem;Ljava/util/List;Lcom/transsion/moviedetail/adapter/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->c:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->d:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->e:Lcom/transsion/moviedetail/adapter/p;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->f(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->d(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->g(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->e(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    invoke-static {p0}, Lim/a$a;->c(Lim/a;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    .line 22
    .line 23
    iget v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->b:I

    .line 24
    .line 25
    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->c:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->d:Ljava/util/List;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getTotalEpisode()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;->C0(Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;ILcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public f(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lim/a$a;->a(Lim/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "errorMsg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lim/a$a;->b(Lim/a;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "ResourceDetectorFragment --> immediateShowList() --> \u5355\u96c6\u591a\u5206\u8fa8\u7387 --> "

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x0

    .line 30
    const-string v2, "co_mem"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 37
    .line 38
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 45
    .line 46
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    sget-object p1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->c:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->e:Lcom/transsion/moviedetail/adapter/p;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/transsion/moviedetail/adapter/p;->D1()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->isSeries()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    :goto_0
    move v3, v1

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v1, 0x0

    .line 95
    goto :goto_0

    .line 96
    :goto_1
    const/16 v5, 0x8

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v1, 0x0

    .line 100
    const/4 v4, 0x0

    .line 101
    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->c:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->e:Lcom/transsion/moviedetail/adapter/p;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const/4 v2, 0x0

    .line 128
    const-string v3, "subjectdetail"

    .line 129
    .line 130
    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/transsnet/downloader/DownloadManagerApi;->y0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_2
    return-void
.end method
