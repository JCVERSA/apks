.class public final Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0015\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u001dR\u0018\u0010)\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "res",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "j",
        "()V",
        "m",
        "",
        "pageName",
        "setPageName",
        "(Ljava/lang/String;)V",
        "Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;",
        "fragment",
        "setParentFragment",
        "(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;)V",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "video",
        "setData",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Liu/n;",
        "b",
        "Liu/n;",
        "viewBinding",
        "c",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "downloadBean",
        "d",
        "e",
        "Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;",
        "parentFragment",
        "UGCVideoDetail_psRelease"
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
.field private final a:Ljava/lang/String;

.field private final b:Liu/n;

.field private c:Lcom/transsion/baselib/db/download/DownloadBean;

.field private d:Ljava/lang/String;

.field private e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p2, "ResPostDetailInfoView"

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->a:Ljava/lang/String;

    .line 5
    sget p2, Lcom/transsion/ugcvideodetail/R$layout;->layout_ugc_local_video_detail_info:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    invoke-static {p0}, Liu/n;->a(Landroid/view/View;)Liu/n;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->b:Liu/n;

    .line 7
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->j()V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->l(Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->k(Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->b:Liu/n;

    .line 2
    .line 3
    iget-object v0, v0, Liu/n;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    new-instance v1, Lku/r;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lku/r;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->b:Liu/n;

    .line 14
    .line 15
    iget-object v0, v0, Liu/n;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    new-instance v1, Lku/s;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lku/s;-><init>(Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final k(Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->d:Ljava/lang/String;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->C0()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v4, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v4, p1

    .line 37
    :goto_0
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->A0()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    move-object v5, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v5, p1

    .line 48
    :goto_1
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->z0()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    move-object v6, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move-object v6, p1

    .line 59
    :goto_2
    const-string v2, "details"

    .line 60
    .line 61
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/ugcvideodetail/hepler/h;->e(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    const-string v0, "/ugc_video/detail"

    .line 65
    .line 66
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    move-object v1, p1

    .line 80
    :goto_3
    const-string v2, "id"

    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_4

    .line 95
    :cond_6
    move-object v1, p1

    .line 96
    :goto_4
    const-string v2, "collection_id"

    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    goto :goto_5

    .line 111
    :cond_7
    move-object v1, p1

    .line 112
    :goto_5
    const-string v2, "ops"

    .line 113
    .line 114
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "page_from"

    .line 119
    .line 120
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->d:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 127
    .line 128
    if-eqz v1, :cond_8

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    goto :goto_6

    .line 135
    :cond_8
    move-object v1, p1

    .line 136
    :goto_6
    const-string v2, "parent_video_id"

    .line 137
    .line 138
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 143
    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->C0()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    goto :goto_7

    .line 151
    :cond_9
    move-object v1, p1

    .line 152
    :goto_7
    const-string v2, "parent_track_id"

    .line 153
    .line 154
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    const/4 v1, 0x2

    .line 163
    invoke-static {v0, p0, p1, v1, p1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method private static final l(Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->d:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->C0()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    move-object v4, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v4, v2

    .line 37
    :goto_0
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->A0()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    move-object v5, p1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v5, v2

    .line 48
    :goto_1
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->z0()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    move-object v6, p1

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move-object v6, v2

    .line 59
    :goto_2
    const-string v2, "download"

    .line 60
    .line 61
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/ugcvideodetail/hepler/h;->e(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->m()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private final m()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    move-object v5, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v5, v3

    .line 17
    :goto_0
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    if-eqz v5, :cond_6

    .line 23
    .line 24
    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_6

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_2
    sget-object v2, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    iget-object v10, v0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->d:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->C0()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    move-object v13, v1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object v13, v3

    .line 80
    :goto_1
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->A0()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    move-object v14, v1

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    move-object v14, v3

    .line 91
    :goto_2
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->z0()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :cond_5
    move-object v15, v3

    .line 100
    const/16 v18, 0x1800

    .line 101
    .line 102
    const/16 v19, 0x0

    .line 103
    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v17, 0x0

    .line 107
    .line 108
    invoke-static/range {v4 .. v19}, Lcom/transsnet/downloader/DownloadManagerApi;->g0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public final setData(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 3

    .line 1
    const-string v0, "video"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->b:Liu/n;

    .line 9
    .line 10
    iget-object v0, v0, Liu/n;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->b:Liu/n;

    .line 33
    .line 34
    iget-object v0, v0, Liu/n;->d:Landroidx/constraintlayout/widget/Group;

    .line 35
    .line 36
    const-string v1, "groupDetails"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->b:Liu/n;

    .line 45
    .line 46
    iget-object v0, v0, Liu/n;->e:Landroidx/constraintlayout/widget/Group;

    .line 47
    .line 48
    const-string v1, "groupDownload"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "getContext(...)"

    .line 69
    .line 70
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->b:Liu/n;

    .line 82
    .line 83
    iget-object v0, v0, Liu/n;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 84
    .line 85
    const-string v1, "ivAvatar"

    .line 86
    .line 87
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public final setPageName(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setParentFragment(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCLocalVideoDetailInfoView;->e:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    .line 7
    .line 8
    return-void
.end method
