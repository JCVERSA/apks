.class public final Lcom/transsnet/downloader/adapter/DownTitleHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "source.java"

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/DownTitleHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/transsnet/downloader/adapter/u0;",
        "Landroid/view/View;",
        "view",
        "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
        "fragment",
        "<init>",
        "(Landroid/view/View;Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V",
        "",
        "position",
        "Lp6/a;",
        "item",
        "",
        "a",
        "(ILp6/a;)V",
        "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
        "getFragment",
        "()Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
        "setFragment",
        "(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V",
        "Downloader_psRelease"
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
.field private a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fragment"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownTitleHolder;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic f(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILp6/a;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownTitleHolder;->h(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILp6/a;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(ZZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownTitleHolder;->i(ZZLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final h(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILp6/a;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget v0, Lcom/transsnet/downloader/R$string;->str_count:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "getString(...)"

    .line 26
    .line 27
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const/4 v0, 0x1

    .line 41
    new-array v1, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    aput-object p2, v1, v2

    .line 45
    .line 46
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p2, "format(...)"

    .line 55
    .line 56
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " "

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method private static final i(ZZLandroid/view/View;)V
    .locals 0

    .line 1
    new-instance p2, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lcom/transsnet/downloader/dialog/DownloadTaskControlManagerDialog;-><init>(ZZ)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "DownloadTaskControlManagerDialog"

    .line 11
    .line 12
    invoke-virtual {p2, p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    new-array p0, p0, [Ljava/lang/Object;

    .line 17
    .line 18
    const-class p1, Lwj/d;

    .line 19
    .line 20
    invoke-static {p1, p0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lwj/d;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Lwj/d;->b()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILp6/a;)V
    .locals 7

    .line 1
    instance-of v0, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    sget v0, Lcom/transsnet/downloader/R$id;->tvTitle:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/tn/lib/widget/TnTextView;

    .line 12
    .line 13
    sget v1, Lcom/transsnet/downloader/R$id;->vTopSpace:I

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, p2

    .line 20
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isMore()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/high16 v4, 0x41400000    # 12.0f

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sget v4, Lcom/transsnet/downloader/R$string;->str_downloading_title:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    sget-object v3, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->G()Landroidx/lifecycle/b0;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/util/List;

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v3, v5

    .line 62
    :goto_0
    if-lez v3, :cond_2

    .line 63
    .line 64
    const/high16 v4, 0x41000000    # 8.0f

    .line 65
    .line 66
    :cond_2
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    sget v4, Lcom/transsnet/downloader/R$string;->str_downloaded_title:I

    .line 71
    .line 72
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    .line 78
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCount()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-lez v1, :cond_3

    .line 86
    .line 87
    new-instance v1, Lcom/transsnet/downloader/adapter/c;

    .line 88
    .line 89
    invoke-direct {v1, p0, v4, p2}, Lcom/transsnet/downloader/adapter/c;-><init>(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILp6/a;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    sget p2, Lcom/transsnet/downloader/R$id;->tvManager:I

    .line 96
    .line 97
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Landroid/widget/TextView;

    .line 102
    .line 103
    sget-object v0, Lcom/transsnet/downloader/util/d;->a:Lcom/transsnet/downloader/util/d;

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v2, "getContext(...)"

    .line 110
    .line 111
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/util/d;->j(Landroid/content/Context;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const-class v1, Lim/b;

    .line 119
    .line 120
    new-array v2, v5, [Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {v1, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lim/b;

    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-interface {v1}, Lim/b;->z()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    move v1, v5

    .line 136
    :goto_2
    const/16 v2, 0x8

    .line 137
    .line 138
    if-nez v1, :cond_5

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_5
    if-nez p1, :cond_6

    .line 147
    .line 148
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    new-instance p1, Lcom/transsnet/downloader/adapter/d;

    .line 152
    .line 153
    invoke-direct {p1, v0, v1}, Lcom/transsnet/downloader/adapter/d;-><init>(ZZ)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    :cond_7
    :goto_3
    return-void
.end method

.method public b(ILp6/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/adapter/u0$a;->a(Lcom/transsnet/downloader/adapter/u0;ILp6/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/adapter/u0$a;->b(Lcom/transsnet/downloader/adapter/u0;Lcom/transsnet/downloader/adapter/u0$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
