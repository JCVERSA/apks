.class public final Lcom/transsion/moviedetail/adapter/p;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R$\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/moviedetail/adapter/p;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/DownloadItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "movieDetailBean",
        "",
        "list",
        "<init>",
        "(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/List;)V",
        "",
        "E1",
        "()V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "onAttachedToRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "holder",
        "item",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;)V",
        "",
        "F",
        "Ljava/lang/String;",
        "resourceId",
        "G",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "D1",
        "()Lcom/transsion/moviedetailapi/bean/Subject;",
        "G1",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "mMovieDetailBean",
        "Lcom/transsnet/downloader/widget/DownloadView;",
        "H",
        "Lcom/transsnet/downloader/widget/DownloadView;",
        "downloadView",
        "MovieDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private F:Ljava/lang/String;

.field private G:Lcom/transsion/moviedetailapi/bean/Subject;

.field private H:Lcom/transsnet/downloader/widget/DownloadView;


# direct methods
.method public constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$layout;->adapter_resource_detector_alone_layout:I

    .line 2
    .line 3
    invoke-direct {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic B1(Lcom/transsion/moviedetail/adapter/p;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/adapter/p;->F1(Lcom/transsion/moviedetail/adapter/p;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final E1()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object v3, v0

    .line 11
    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    new-instance v8, Lcom/transsion/moviedetail/adapter/o;

    .line 14
    .line 15
    invoke-direct {v8, p0}, Lcom/transsion/moviedetail/adapter/o;-><init>(Lcom/transsion/moviedetail/adapter/p;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 19
    .line 20
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v2, v0

    .line 27
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 28
    .line 29
    const-class v0, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v0, "getName(...)"

    .line 36
    .line 37
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 41
    .line 42
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static final F1(Lcom/transsion/moviedetail/adapter/p;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    move v2, v0

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;->getResourceId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v2, -0x1

    .line 47
    :goto_1
    if-ltz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catch_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 54
    .line 55
    const/4 p1, 0x2

    .line 56
    const/4 v1, 0x0

    .line 57
    const-string v2, " callback change data fail"

    .line 58
    .line 59
    invoke-static {p0, v2, v0, p1, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;)V
    .locals 12

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/transsion/moviedetail/R$id;->tvTitle:I

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/DownloadItem;->getResolution()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v3

    .line 28
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "P "

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide/16 v1, 0x0

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-wide v4, v1

    .line 65
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/DownloadItem;->getDuration()Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move-wide v6, v1

    .line 77
    :goto_2
    const/4 v0, 0x1

    .line 78
    invoke-static {v4, v5, v0}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    cmp-long v1, v6, v1

    .line 83
    .line 84
    if-lez v1, :cond_3

    .line 85
    .line 86
    const-wide/16 v1, 0x3e8

    .line 87
    .line 88
    mul-long/2addr v6, v1

    .line 89
    invoke-static {v6, v7}, Lcom/transsion/baseui/util/TimeUtilKt;->o(J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, " \u00b7 "

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_3
    sget v1, Lcom/transsion/moviedetail/R$id;->tvSize:I

    .line 114
    .line 115
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 116
    .line 117
    .line 118
    sget v0, Lcom/transsion/moviedetail/R$id;->innerIvDownload:I

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/transsnet/downloader/widget/DownloadView;

    .line 125
    .line 126
    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/p;->H:Lcom/transsnet/downloader/widget/DownloadView;

    .line 127
    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    const-string v0, "subjectdetail"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/widget/DownloadView;->setPageFrom(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    iput-object v6, p0, Lcom/transsion/moviedetail/adapter/p;->F:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v4, p0, Lcom/transsion/moviedetail/adapter/p;->H:Lcom/transsnet/downloader/widget/DownloadView;

    .line 142
    .line 143
    if-eqz v4, :cond_6

    .line 144
    .line 145
    iget-object p1, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 146
    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->isSeries()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :cond_5
    move-object v7, v3

    .line 158
    const/16 v10, 0x18

    .line 159
    .line 160
    const/4 v11, 0x0

    .line 161
    const/4 v5, 0x0

    .line 162
    const/4 v8, 0x0

    .line 163
    const/4 v9, 0x0

    .line 164
    invoke-static/range {v4 .. v11}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_6
    return-void
.end method

.method public final D1()Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/adapter/p;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final G1(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/p;->G:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/moviedetail/adapter/p;->E1()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
