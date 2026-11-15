.class public final Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lp6/a;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001cB\u00a4\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012w\u0010\u0019\u001as\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00180\r\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ%\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001e2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001cH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010)\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010+\u001a\u00020\u00182\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001cH\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u001f\u0010/\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008/\u00100J-\u00103\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00022\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002010\u001cH\u0014\u00a2\u0006\u0004\u00083\u00104J\u0017\u00105\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u00085\u00106J\u0017\u00107\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u00087\u00106J\u0015\u00108\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u00088\u00109J\r\u0010:\u001a\u00020\u0018\u00a2\u0006\u0004\u0008:\u0010;R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0016\u0010\n\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010@R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0085\u0001\u0010\u0019\u001as\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0014\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00180\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u001d\u0010R\u001a\u0004\u0018\u00010M8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010QR\u001d\u0010W\u001a\u0004\u0018\u00010S8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010O\u001a\u0004\u0008U\u0010VR\u001d\u0010\\\u001a\u0004\u0018\u00010X8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010O\u001a\u0004\u0008Z\u0010[R$\u0010b\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u00109\u00a8\u0006d"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lp6/a;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lt6/i;",
        "",
        "pageType",
        "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
        "fragment",
        "Landroid/widget/FrameLayout;",
        "fragmentRootView",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "wrapperNativeManager",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "position",
        "Landroid/view/View;",
        "view",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "bean",
        "type",
        "Lcom/transsnet/downloader/adapter/u0$b;",
        "listener",
        "",
        "popSaveListener",
        "<init>",
        "(ILcom/transsnet/downloader/fragment/DownloadPanelFragment;Landroid/widget/FrameLayout;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lkotlin/jvm/functions/Function5;)V",
        "",
        "list",
        "",
        "O1",
        "(Ljava/util/List;)Ljava/util/List;",
        "it",
        "P1",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)I",
        "Z1",
        "(I)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "z0",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "X1",
        "(Ljava/util/List;)V",
        "holder",
        "item",
        "L1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lp6/a;)V",
        "",
        "payloads",
        "M1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lp6/a;Ljava/util/List;)V",
        "B0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "V1",
        "W1",
        "(Lcom/transsnet/downloader/adapter/u0$b;)V",
        "K1",
        "()V",
        "G",
        "I",
        "H",
        "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
        "Landroid/widget/FrameLayout;",
        "J",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "K",
        "Lkotlin/jvm/functions/Function5;",
        "Lcom/transsnet/downloader/manager/u;",
        "L",
        "Lcom/transsnet/downloader/manager/u;",
        "guideHelper",
        "",
        "M",
        "Z",
        "isSmallScreen",
        "Lep/a;",
        "N",
        "Lkotlin/Lazy;",
        "Q1",
        "()Lep/a;",
        "mAudioApi",
        "Lep/b;",
        "O",
        "R1",
        "()Lep/b;",
        "mFloatApi",
        "Lsi/a;",
        "P",
        "N1",
        "()Lsi/a;",
        "audioDao",
        "Q",
        "Lcom/transsnet/downloader/adapter/u0$b;",
        "S1",
        "()Lcom/transsnet/downloader/adapter/u0$b;",
        "Y1",
        "onItemChangeListener",
        "LayoutType",
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
.field private final G:I

.field private final H:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

.field private final I:Landroid/widget/FrameLayout;

.field private final J:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private final K:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Ljava/lang/Integer;",
            "Lcom/transsnet/downloader/adapter/u0$b;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/transsnet/downloader/manager/u;

.field private final M:Z

.field private final N:Lkotlin/Lazy;

.field private final O:Lkotlin/Lazy;

.field private final P:Lkotlin/Lazy;

.field private Q:Lcom/transsnet/downloader/adapter/u0$b;


# direct methods
.method public constructor <init>(ILcom/transsnet/downloader/fragment/DownloadPanelFragment;Landroid/widget/FrameLayout;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lkotlin/jvm/functions/Function5;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/transsnet/downloader/fragment/DownloadPanelFragment;",
            "Landroid/widget/FrameLayout;",
            "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/transsnet/downloader/adapter/u0$b;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "popSaveListener"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    iput p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G:I

    .line 17
    .line 18
    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->H:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->I:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->J:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 23
    .line 24
    iput-object p5, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->K:Lkotlin/jvm/functions/Function5;

    .line 25
    .line 26
    const/high16 p1, 0x42f00000    # 120.0f

    .line 27
    .line 28
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    int-to-float p1, p1

    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    int-to-float p2, p2

    .line 38
    div-float/2addr p1, p2

    .line 39
    float-to-double p1, p1

    .line 40
    const-wide p3, 0x3fd6666666666666L    # 0.35

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmpl-double p1, p1, p3

    .line 46
    .line 47
    if-ltz p1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    iput-boolean v1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->M:Z

    .line 52
    .line 53
    new-instance p1, Lcom/transsnet/downloader/adapter/h;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/transsnet/downloader/adapter/h;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->N:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance p1, Lcom/transsnet/downloader/adapter/i;

    .line 65
    .line 66
    invoke-direct {p1}, Lcom/transsnet/downloader/adapter/i;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->O:Lkotlin/Lazy;

    .line 74
    .line 75
    new-instance p1, Lcom/transsnet/downloader/adapter/j;

    .line 76
    .line 77
    invoke-direct {p1}, Lcom/transsnet/downloader/adapter/j;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->P:Lkotlin/Lazy;

    .line 85
    .line 86
    return-void
.end method

.method public static synthetic D1()Lep/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->T1()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic E1()Lsi/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->J1()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic F1()Lep/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->U1()Lep/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic G1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)Lsi/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->N1()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic I1(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Z1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final J1()Lsi/a;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->n1()Lsi/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private final N1()Lsi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->P:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsi/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final O1(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;)",
            "Ljava/util/List<",
            "Lp6/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 25
    .line 26
    invoke-direct {p0, v1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->P1(Lcom/transsion/baselib/db/download/DownloadBean;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setItemType(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v0
.end method

.method private final P1(Lcom/transsion/baselib/db/download/DownloadBean;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->NO_DONE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    :pswitch_0
    goto :goto_0

    .line 15
    :pswitch_1
    sget-object p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->ALL_EP_BTN:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    goto :goto_0

    .line 22
    :pswitch_2
    sget-object p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->AD_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :pswitch_3
    sget-object p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->HIDE_MORE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    goto :goto_0

    .line 36
    :pswitch_4
    sget-object p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->TITLE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :pswitch_5
    sget-object p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->DONE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_0

    .line 50
    :pswitch_6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :goto_0
    return v1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final Q1()Lep/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->N:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final R1()Lep/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->O:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final T1()Lep/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final U1()Lep/b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/b;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/b;

    .line 11
    .line 12
    return-object v0
.end method

.method private final Z1(I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lp6/a;

    .line 6
    .line 7
    instance-of v0, p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Q1()Lep/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Lep/a;->a(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->R1()Lep/b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    move-object v1, p1

    .line 38
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    const-string v1, ""

    .line 47
    .line 48
    :cond_0
    invoke-interface {v0, v1}, Lep/b;->f(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v4, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-direct {v4, p1, p0, v0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$upDateAudioName$1;-><init>(Lp6/a;Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;Lkotlin/coroutines/Continuation;)V

    .line 63
    .line 64
    .line 65
    const/4 v5, 0x3

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v2, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method


# virtual methods
.method public B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->I:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G:I

    .line 15
    .line 16
    sget-object v1, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    instance-of v0, p1, Lcom/transsnet/downloader/adapter/DownloadingHolder;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->L:Lcom/transsnet/downloader/manager/u;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lcom/transsnet/downloader/manager/u;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/u;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->L:Lcom/transsnet/downloader/manager/u;

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->L:Lcom/transsnet/downloader/manager/u;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->I:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    const-wide/16 v2, 0xbb8

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/downloader/manager/u;->d(Landroid/widget/FrameLayout;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;J)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lp6/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->L1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lp6/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lp6/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->M1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lp6/a;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final K1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lp6/a;

    .line 22
    .line 23
    instance-of v2, v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setWrapNativeManager(Lcom/hisavana/common/interfacz/TAdditionalListener;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method protected L1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lp6/a;)V
    .locals 2

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
    instance-of v0, p1, Lcom/transsnet/downloader/adapter/u0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Lcom/transsnet/downloader/adapter/u0;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-interface {v0, v1, p2}, Lcom/transsnet/downloader/adapter/u0;->a(ILp6/a;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-interface {v0, p1, p2}, Lcom/transsnet/downloader/adapter/u0;->b(ILp6/a;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$a;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$a;-><init>(Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p1}, Lcom/transsnet/downloader/adapter/u0;->c(Lcom/transsnet/downloader/adapter/u0$b;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method protected M1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lp6/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lp6/a;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

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
    const-string v0, "payloads"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 31
    .line 32
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    instance-of p3, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 37
    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    instance-of p3, p1, Lcom/transsnet/downloader/adapter/u0;

    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    move-object p3, p1

    .line 45
    check-cast p3, Lcom/transsnet/downloader/adapter/u0;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    check-cast p2, Lp6/a;

    .line 52
    .line 53
    invoke-interface {p3, p1, p2}, Lcom/transsnet/downloader/adapter/u0;->b(ILp6/a;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final S1()Lcom/transsnet/downloader/adapter/u0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Q:Lcom/transsnet/downloader/adapter/u0$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public V1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final W1(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Q:Lcom/transsnet/downloader/adapter/u0$b;

    .line 7
    .line 8
    return-void
.end method

.method public final X1(Ljava/util/List;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->O1(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Y1(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->Q:Lcom/transsnet/downloader/adapter/u0$b;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/h;->a(Lt6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->z0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->V1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public z0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 5

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->NO_DONE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/high16 v1, 0x41400000    # 12.0f

    .line 13
    .line 14
    const/high16 v2, 0x41300000    # 11.0f

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne p2, v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_downloading_item:I

    .line 28
    .line 29
    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lcom/transsnet/downloader/adapter/DownloadingHolder;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G:I

    .line 39
    .line 40
    sget-object v3, Lcom/transsnet/downloader/api/DownloadPageType;->SERIES:Lcom/transsnet/downloader/api/DownloadPageType;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v0, v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    iget-boolean v3, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->M:Z

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    move v1, v2

    .line 64
    :cond_1
    invoke-direct {p2, p1, v0, v1}, Lcom/transsnet/downloader/adapter/DownloadingHolder;-><init>(Landroid/view/View;Ljava/lang/String;F)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_2
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->DONE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne p2, v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_downloaded_item:I

    .line 86
    .line 87
    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance p2, Lcom/transsnet/downloader/adapter/DownloadedHolder;

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->G:I

    .line 97
    .line 98
    sget-object v3, Lcom/transsnet/downloader/api/DownloadPageType;->SERIES:Lcom/transsnet/downloader/api/DownloadPageType;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-ne v0, v4, :cond_3

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    sget-object v0, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_1
    iget-boolean v3, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->M:Z

    .line 118
    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    move v1, v2

    .line 122
    :cond_4
    iget-object v2, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->K:Lkotlin/jvm/functions/Function5;

    .line 123
    .line 124
    invoke-direct {p2, p1, v0, v1, v2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;-><init>(Landroid/view/View;Ljava/lang/String;FLkotlin/jvm/functions/Function5;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :cond_5
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->TITLE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-ne p2, v0, :cond_6

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_download_item_header:I

    .line 146
    .line 147
    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance p2, Lcom/transsnet/downloader/adapter/DownTitleHolder;

    .line 152
    .line 153
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->H:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 157
    .line 158
    invoke-direct {p2, p1, v0}, Lcom/transsnet/downloader/adapter/DownTitleHolder;-><init>(Landroid/view/View;Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->HIDE_MORE_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-ne p2, v0, :cond_7

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_download_item_hide_more:I

    .line 179
    .line 180
    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    new-instance p2, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;

    .line 185
    .line 186
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter;->J:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 190
    .line 191
    invoke-direct {p2, p1, v0}, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;-><init>(Landroid/view/View;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_7
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->AD_LAYOUT:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-ne p2, v0, :cond_8

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_download_item_ad:I

    .line 212
    .line 213
    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    new-instance p2, Lcom/transsnet/downloader/adapter/DownloadAdHolder;

    .line 218
    .line 219
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-direct {p2, p1}, Lcom/transsnet/downloader/adapter/DownloadAdHolder;-><init>(Landroid/view/View;)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_8
    sget-object v0, Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;->ALL_EP_BTN:Lcom/transsnet/downloader/adapter/DownloadExpandAdapter$LayoutType;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-ne p2, v0, :cond_9

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    sget v1, Lcom/transsnet/downloader/R$layout;->adapter_download_item_all_ep:I

    .line 243
    .line 244
    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    new-instance v0, Lcom/transsnet/downloader/adapter/DownloadAllEpBtnHolder;

    .line 249
    .line 250
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-direct {v0, p1}, Lcom/transsnet/downloader/adapter/DownloadAllEpBtnHolder;-><init>(Landroid/view/View;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 257
    .line 258
    .line 259
    move-object p2, v0

    .line 260
    goto :goto_2

    .line 261
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    :goto_2
    return-object p2
.end method
