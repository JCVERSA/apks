.class public final Lcom/transsnet/downloader/widget/DownloadResolutionTabView;
.super Lcom/noober/background/view/BLConstraintLayout;
.source "source.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\'\u0010\u0017\u001a\u00020\u000c2\u000e\u0010\u0015\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00142\u0006\u0010\u0016\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001e\u0010\u0012J\u0015\u0010 \u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\t\u00a2\u0006\u0004\u0008 \u0010\u0012J#\u0010%\u001a\u00020\u000c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!2\u0006\u0010$\u001a\u00020\t\u00a2\u0006\u0004\u0008%\u0010&J#\u0010)\u001a\u00020\u000c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\'0!2\u0006\u0010(\u001a\u00020\t\u00a2\u0006\u0004\u0008)\u0010&J\'\u0010,\u001a\u00020\u000c2\u0018\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u000c0*\u00a2\u0006\u0004\u0008,\u0010-J\'\u0010.\u001a\u00020\u000c2\u0018\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u000c0*\u00a2\u0006\u0004\u0008.\u0010-J\u001b\u00100\u001a\u00020\u000c2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000c0/\u00a2\u0006\u0004\u00080\u00101J\u001b\u00102\u001a\u00020\u000c2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000c0/\u00a2\u0006\u0004\u00082\u00101J\u0017\u00105\u001a\u00020\u000c2\u0008\u00104\u001a\u0004\u0018\u000103\u00a2\u0006\u0004\u00085\u00106R\u0014\u00109\u001a\u0002038\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0014\u0010@\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR*\u0010G\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u000c\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR*\u0010I\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u000c\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010FR\u001e\u0010L\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u001e\u0010N\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010KR\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010?R\u0016\u0010R\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010?R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0016\u0010\u0010\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010?R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010V\u00a8\u0006W"
    }
    d2 = {
        "Lcom/transsnet/downloader/widget/DownloadResolutionTabView;",
        "Lcom/noober/background/view/BLConstraintLayout;",
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
        "n",
        "()V",
        "p",
        "curSeason",
        "t",
        "(I)V",
        "l",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "adapter",
        "position",
        "o",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "setSubject",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "seasons",
        "setSeasons",
        "season",
        "setSeason",
        "",
        "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
        "data",
        "resolutionPosition",
        "setResolutionContentData",
        "(Ljava/util/List;I)V",
        "Lcom/transsion/moviedetailapi/bean/DubsInfo;",
        "audioPosition",
        "setAudioContentData",
        "Lkotlin/Function2;",
        "listener",
        "setResolutionItemClickListener",
        "(Lkotlin/jvm/functions/Function2;)V",
        "setAudioItemClickListener",
        "Lkotlin/Function0;",
        "setSeasonClickListener",
        "(Lkotlin/jvm/functions/Function0;)V",
        "setAudioClickListener",
        "",
        "name",
        "updateAudioTrack",
        "(Ljava/lang/String;)V",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Lbx/y0;",
        "b",
        "Lbx/y0;",
        "viewBinding",
        "c",
        "I",
        "dp16",
        "Lcom/transsnet/downloader/adapter/r;",
        "d",
        "Lcom/transsnet/downloader/adapter/r;",
        "resolutionTabAdapter",
        "e",
        "Lkotlin/jvm/functions/Function2;",
        "resolutionItemClickListener",
        "f",
        "audioItemClickListener",
        "g",
        "Lkotlin/jvm/functions/Function0;",
        "audioClickListener",
        "h",
        "seasonClickListener",
        "i",
        "curResPosition",
        "j",
        "curAudioPosition",
        "k",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "m",
        "Ljava/lang/Integer;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lbx/y0;

.field private final c:I

.field private d:Lcom/transsnet/downloader/adapter/r;

.field private e:Lkotlin/jvm/functions/Function2;

.field private f:Lkotlin/jvm/functions/Function2;

.field private g:Lkotlin/jvm/functions/Function0;

.field private h:Lkotlin/jvm/functions/Function0;

.field private i:I

.field private j:I

.field private k:Lcom/transsion/moviedetailapi/bean/Subject;

.field private l:I

.field private m:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/noober/background/view/BLConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p2, "DownloadResolutionTabView"

    iput-object p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->a:Ljava/lang/String;

    const/high16 p2, 0x41800000    # 16.0f

    .line 5
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->c:I

    const/4 p2, -0x1

    .line 6
    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    .line 7
    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->j:I

    const/4 p2, 0x1

    .line 8
    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->l:I

    .line 9
    sget p2, Lcom/transsnet/downloader/R$layout;->layout_download_re_resolution_tab:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    invoke-static {p0}, Lbx/y0;->a(Landroid/view/View;)Lbx/y0;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 11
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->n()V

    return-void
.end method

.method public static final synthetic access$refreshResolutionRes(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->o(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->q(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->r(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->m(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->s(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsnet/downloader/adapter/r;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/adapter/r;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsnet/downloader/widget/v;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/v;-><init>(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->d:Lcom/transsnet/downloader/adapter/r;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 17
    .line 18
    iget-object v0, v0, Lbx/y0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x4

    .line 27
    invoke-direct {v1, v2, v3}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    new-instance v1, Ltf/a;

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    invoke-static {v2}, Llj/a;->b(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-direct {v1, v2, v3, v3, v3}, Ltf/a;-><init>(IIII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->d:Lcom/transsnet/downloader/adapter/r;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private static final m(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    .line 12
    .line 13
    if-ne p3, p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p2, Lyg/l;->a:Lyg/l;

    .line 17
    .line 18
    invoke-virtual {p2}, Lyg/l;->e()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 25
    .line 26
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_tips:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    instance-of v0, p2, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    check-cast p2, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p2, 0x0

    .line 44
    :goto_0
    if-eqz p2, :cond_3

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    const-class v1, Lim/b;

    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lim/b;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->getResolution()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    new-instance v1, Lcom/transsnet/downloader/widget/DownloadResolutionTabView$a;

    .line 68
    .line 69
    invoke-direct {v1, p0, p1, p3}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView$a;-><init>(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, p2, v1}, Lim/b;->g(Ljava/lang/Integer;Lim/a;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method private final n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :cond_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    const/4 v2, -0x2

    .line 24
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->c:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->c:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->l()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->p()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private final o(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    instance-of v2, v1, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    move-object v1, v0

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->setSelected(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    .line 25
    .line 26
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_2
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    instance-of v2, v1, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    move-object v0, v1

    .line 44
    check-cast v0, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    .line 45
    .line 46
    :cond_2
    if-eqz v0, :cond_3

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;->setSelected(Z)V

    .line 50
    .line 51
    .line 52
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->e:Lkotlin/jvm/functions/Function2;

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_4
    return-void
.end method

.method private final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 2
    .line 3
    iget-object v0, v0, Lbx/y0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    new-instance v1, Lcom/transsnet/downloader/widget/s;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/s;-><init>(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 14
    .line 15
    iget-object v0, v0, Lbx/y0;->i:Lcom/noober/background/view/BLTextView;

    .line 16
    .line 17
    new-instance v1, Lcom/transsnet/downloader/widget/t;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/t;-><init>(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 26
    .line 27
    iget-object v0, v0, Lbx/y0;->f:Lcom/noober/background/view/BLTextView;

    .line 28
    .line 29
    new-instance v1, Lcom/transsnet/downloader/widget/u;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/widget/u;-><init>(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private static final q(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "/profile/user_center_labels_feedback"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "feedback_from_page"

    .line 8
    .line 9
    const-string v1, "SUBJECT_DETAIL"

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->k:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    const-string v2, "subject_id"

    .line 27
    .line 28
    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-static {p1, p0, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static final r(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "DownloadDialog"

    .line 6
    .line 7
    const-string v2, "innerTvTitle click then switch audio track"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->g:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private static final s(Lcom/transsnet/downloader/widget/DownloadResolutionTabView;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "DownloadDialog"

    .line 6
    .line 7
    const-string v2, "Switch seasons"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->h:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private final t(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->l:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->k:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->isTvType()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ne v1, v3, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 17
    .line 18
    iget-object v1, v1, Lbx/y0;->f:Lcom/noober/background/view/BLTextView;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    sget v2, Lcom/transsnet/downloader/R$string;->download_video_detail_season_index:I

    .line 27
    .line 28
    invoke-static {p1}, Lsm/f;->a(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p1, v3, v0

    .line 35
    .line 36
    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->k:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->isEduType()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ne v1, v3, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 55
    .line 56
    iget-object v1, v1, Lbx/y0;->f:Lcom/noober/background/view/BLTextView;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    sget v2, Lcom/transsnet/downloader/R$string;->download_video_detail_unit_index:I

    .line 65
    .line 66
    invoke-static {p1}, Lsm/f;->a(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-array v3, v3, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object p1, v3, v0

    .line 73
    .line 74
    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 83
    .line 84
    iget-object p1, p1, Lbx/y0;->f:Lcom/noober/background/view/BLTextView;

    .line 85
    .line 86
    const-string v0, "ivSeasons"

    .line 87
    .line 88
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void
.end method


# virtual methods
.method public final setAudioClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->g:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method

.method public final setAudioContentData(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/DubsInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "setAudioContentData size:"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const-string v2, "DownloadDialog"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->j:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 40
    .line 41
    iget-object v0, v0, Lbx/y0;->i:Lcom/noober/background/view/BLTextView;

    .line 42
    .line 43
    const-string v1, "tvLanguage"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-object v1, p1

    .line 49
    check-cast v1, Ljava/util/Collection;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x0

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v3, 0x1

    .line 63
    if-le v1, v3, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v3, v2

    .line 67
    :goto_0
    if-eqz v3, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/16 v2, 0x8

    .line 71
    .line 72
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    if-ltz p2, :cond_2

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ge p2, v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 84
    .line 85
    iget-object v0, v0, Lbx/y0;->i:Lcom/noober/background/view/BLTextView;

    .line 86
    .line 87
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/transsion/moviedetailapi/bean/DubsInfo;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/DubsInfo;->getLanName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void
.end method

.method public final setAudioItemClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/transsion/moviedetailapi/bean/DubsInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->f:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method

.method public final setResolutionContentData(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 7
    .line 8
    iget-object v0, v0, Lbx/y0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    const-string v1, "qualityRecyclerView"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 19
    .line 20
    iget-object v0, v0, Lbx/y0;->k:Landroid/view/View;

    .line 21
    .line 22
    const-string v1, "vLine"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iput p2, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->i:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->d:Lcom/transsnet/downloader/adapter/r;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    check-cast p1, Ljava/util/Collection;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    invoke-direct {p0, v0, p2}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->o(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final setResolutionItemClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->e:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method

.method public final setSeason(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->t(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setSeasonClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->h:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method

.method public final setSeasons(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->m:Ljava/lang/Integer;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const-string v1, "ivSeasons"

    .line 9
    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 13
    .line 14
    iget-object p1, p1, Lbx/y0;->f:Lcom/noober/background/view/BLTextView;

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 24
    .line 25
    iget-object p1, p1, Lbx/y0;->f:Lcom/noober/background/view/BLTextView;

    .line 26
    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 1

    .line 1
    const-string v0, "subject"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->k:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetectors()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 23
    .line 24
    iget-object v0, v0, Lbx/y0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getUploadBy()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final updateAudioTrack(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadResolutionTabView;->b:Lbx/y0;

    .line 2
    .line 3
    iget-object v0, v0, Lbx/y0;->i:Lcom/noober/background/view/BLTextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
