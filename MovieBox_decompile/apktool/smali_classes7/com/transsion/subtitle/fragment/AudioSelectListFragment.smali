.class public final Lcom/transsion/subtitle/fragment/AudioSelectListFragment;
.super Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/fragment/AudioSelectListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment<",
        "Ljt/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 -2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001.B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\'\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J!\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\n2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/transsion/subtitle/fragment/AudioSelectListFragment;",
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;",
        "Ljt/c;",
        "<init>",
        "()V",
        "",
        "Lcom/transsion/moviedetailapi/bean/DubsInfo;",
        "list",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "downloadBean",
        "",
        "k0",
        "(Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "h0",
        "(Landroid/view/LayoutInflater;)Ljt/c;",
        "lazyLoadData",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Llt/b;",
        "callback",
        "j0",
        "(Llt/b;)V",
        "",
        "g",
        "Ljava/util/List;",
        "dataList",
        "h",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "Lcom/transsion/subtitle/adapter/a;",
        "i",
        "Lcom/transsion/subtitle/adapter/a;",
        "listAdapter",
        "",
        "j",
        "I",
        "selectedPosition",
        "k",
        "Llt/b;",
        "mCallback",
        "l",
        "a",
        "VideoSubtitle_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final l:Lcom/transsion/subtitle/fragment/AudioSelectListFragment$a;


# instance fields
.field private g:Ljava/util/List;

.field private h:Lcom/transsion/baselib/db/download/DownloadBean;

.field private i:Lcom/transsion/subtitle/adapter/a;

.field private j:I

.field private k:Llt/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/subtitle/fragment/AudioSelectListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->l:Lcom/transsion/subtitle/fragment/AudioSelectListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Lcom/transsion/subtitle/adapter/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->i0(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Lcom/transsion/subtitle/adapter/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g0(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->k0(Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final i0(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Lcom/transsion/subtitle/adapter/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p3, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    .line 12
    .line 13
    if-ne p4, p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p3, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    check-cast p3, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    .line 23
    .line 24
    iget v0, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    .line 25
    .line 26
    if-ltz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->setSelected(Z)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iput p4, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p3, v0}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->setSelected(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 52
    .line 53
    .line 54
    sget-object p2, Lwf/a;->a:Lwf/a$a;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->getTAG()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    const-string v1, "<get-TAG>(...)"

    .line 61
    .line 62
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->getLanName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->getLanCode()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "item select, "

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", code = "

    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p2, p4, v1, v0}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->k:Llt/b;

    .line 102
    .line 103
    if-eqz p2, :cond_2

    .line 104
    .line 105
    invoke-interface {p2, p3}, Llt/b;->h(Lcom/transsion/moviedetailapi/bean/DubsInfo;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->k:Llt/b;

    .line 109
    .line 110
    if-eqz p2, :cond_3

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    sget p3, Lcom/transsion/subtitle/R$string;->audio_switch_toast:I

    .line 117
    .line 118
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string p3, "getString(...)"

    .line 123
    .line 124
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p2, p1}, Llt/b;->c(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->a0()V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method private final k0(Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->h:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    .line 9
    .line 10
    check-cast p1, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    .line 16
    .line 17
    check-cast p1, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 p2, 0x0

    .line 24
    :goto_0
    if-ge p2, p1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->isSelected()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iput p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->j:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->h0(Landroid/view/LayoutInflater;)Ljt/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h0(Landroid/view/LayoutInflater;)Ljt/c;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljt/c;->c(Landroid/view/LayoutInflater;)Ljt/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/transsion/subtitle/adapter/a;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->g:Ljava/util/List;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/transsion/subtitle/adapter/a;-><init>(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Lcom/transsion/subtitle/fragment/a;

    .line 14
    .line 15
    invoke-direct {p2, p0, p1}, Lcom/transsion/subtitle/fragment/a;-><init>(Lcom/transsion/subtitle/fragment/AudioSelectListFragment;Lcom/transsion/subtitle/adapter/a;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->i:Lcom/transsion/subtitle/adapter/a;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljt/c;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p1, Ljt/c;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    new-instance p2, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p2, v0}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->i:Lcom/transsion/subtitle/adapter/a;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public final j0(Llt/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/AudioSelectListFragment;->k:Llt/b;

    .line 2
    .line 3
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method
