.class public Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0095\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0007*\u0001f\u0008\u0017\u0018\u0000 j2\u00020\u0001:\u0001kB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012JQ\u0010\u001b\u001a\u00020\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001a\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00042\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0019\u0010\"\u001a\u00020!2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J!\u0010$\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010(\u001a\u00020\u00042\u0010\u0008\u0002\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010&\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0003R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00102\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00100R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0018\u00108\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00100R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u00100R\u0016\u0010@\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010;R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u00100R\u0018\u0010C\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u00100R\u0018\u0010E\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u00100R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0016\u0010M\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010;R\u001b\u0010S\u001a\u00020N8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010RR\u001b\u0010X\u001a\u00020T8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008U\u0010P\u001a\u0004\u0008V\u0010WRr\u0010`\u001a^\u0012\u0013\u0012\u00110H\u00a2\u0006\u000c\u0008Z\u0012\u0008\u0008[\u0012\u0004\u0008\u0008(\\\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008Z\u0012\u0008\u0008[\u0012\u0004\u0008\u0008(]\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008Z\u0012\u0008\u0008[\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u001109\u00a2\u0006\u000c\u0008Z\u0012\u0008\u0008[\u0012\u0004\u0008\u0008(M\u0012\u0004\u0012\u00020\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R3\u0010e\u001a\u001f\u0012\u0013\u0012\u001109\u00a2\u0006\u000c\u0008Z\u0012\u0008\u0008[\u0012\u0004\u0008\u0008(b\u0012\u0004\u0012\u00020\u0004\u0018\u00010a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR\u0014\u0010i\u001a\u00020f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008g\u0010h\u00a8\u0006l"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "M0",
        "Landroid/view/View;",
        "view",
        "P0",
        "(Landroid/view/View;)V",
        "V0",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "downloadBean",
        "U0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "Lcom/transsnet/downloader/bean/DownloadUrlBean;",
        "urlBean",
        "S0",
        "(Lcom/transsnet/downloader/bean/DownloadUrlBean;)V",
        "",
        "pageName",
        "pageFrom",
        "subjectId",
        "postId",
        "ops",
        "resourceId",
        "taskId",
        "J0",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lkotlin/Function0;",
        "animaCallback",
        "Q0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onDestroy",
        "Lbx/y;",
        "c",
        "Lbx/y;",
        "viewBinding",
        "d",
        "Ljava/lang/String;",
        "e",
        "lastPageFrom",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "f",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "g",
        "groupId",
        "",
        "h",
        "Z",
        "animaOnly",
        "i",
        "linkUrl",
        "j",
        "isCheckingLinkUrl",
        "k",
        "l",
        "resource",
        "m",
        "moduleName",
        "n",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "",
        "o",
        "I",
        "localProgress",
        "p",
        "isCancel",
        "Lcom/transsnet/downloader/manager/g;",
        "q",
        "Lkotlin/Lazy;",
        "K0",
        "()Lcom/transsnet/downloader/manager/g;",
        "downloadManager",
        "Lcom/transsnet/downloader/manager/StartDownloadHelper;",
        "r",
        "L0",
        "()Lcom/transsnet/downloader/manager/StartDownloadHelper;",
        "startDownloadHelper",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "count",
        "formatSize",
        "s",
        "Lkotlin/jvm/functions/Function4;",
        "itemSelectListener",
        "Lkotlin/Function1;",
        "isClose",
        "t",
        "Lkotlin/jvm/functions/Function1;",
        "closeListener",
        "com/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1",
        "u",
        "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;",
        "runnable",
        "v",
        "a",
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


# static fields
.field public static final v:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$a;


# instance fields
.field private c:Lbx/y;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/transsion/moviedetailapi/bean/Subject;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/transsion/baselib/db/download/DownloadBean;

.field private o:I

.field private p:Z

.field private final q:Lkotlin/Lazy;

.field private final r:Lkotlin/Lazy;

.field private s:Lkotlin/jvm/functions/Function4;

.field private t:Lkotlin/jvm/functions/Function1;

.field private final u:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->v:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsnet/downloader/R$layout;->fragment_download_res_ana:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->e:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lcom/transsnet/downloader/fragment/t;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/t;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->q:Lkotlin/Lazy;

    .line 22
    .line 23
    new-instance v0, Lcom/transsnet/downloader/fragment/u;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/u;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->r:Lkotlin/Lazy;

    .line 33
    .line 34
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;

    .line 40
    .line 41
    return-void
.end method

.method public static final synthetic A0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic B0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->L0()Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic C0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lbx/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->c:Lbx/y;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic F0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->n:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic G0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->U0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->o:I

    .line 2
    .line 3
    return-void
.end method

.method private static final I0()Lcom/transsnet/downloader/manager/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "page_from"

    .line 7
    .line 8
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string p2, "subject_id"

    .line 12
    .line 13
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v1, "post_id"

    .line 17
    .line 18
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string p4, "ops"

    .line 22
    .line 23
    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string p4, "resource_id"

    .line 27
    .line 28
    invoke-interface {v0, p4, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p5, "task_id"

    .line 32
    .line 33
    invoke-interface {v0, p5, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string p5, "module_name"

    .line 37
    .line 38
    iget-object p7, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->m:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v0, p5, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object p5, Lqi/h;->a:Lqi/h;

    .line 44
    .line 45
    const-string p7, "download_click"

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    move-object p1, p7

    .line 50
    :cond_0
    invoke-virtual {p5, p1, p7, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p4, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object p2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p2, p7, p1, p3}, Lcom/transsion/baselib/report/e;->l(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private final K0()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->q:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private final L0()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->r:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 8
    .line 9
    return-object v0
.end method

.method private final M0()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->c:Lbx/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lbx/y;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v1, Lcom/transsnet/downloader/R$string;->download_analyzing:I

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->l:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " from "

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->h:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getLogViewConfig()Lqi/b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const-string v1, "anima_only"

    .line 57
    .line 58
    const-string v2, "true"

    .line 59
    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 64
    .line 65
    const/4 v7, 0x4

    .line 66
    const/4 v8, 0x0

    .line 67
    const-string v4, "downloadAna"

    .line 68
    .line 69
    const-string v5, "anima only~}"

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    move v0, v1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/4 v0, 0x0

    .line 86
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "single\uff0c initData subject is null = "

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, ", "

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    const/4 v13, 0x4

    .line 109
    const/4 v14, 0x0

    .line 110
    const-string v10, "downloadAna"

    .line 111
    .line 112
    const/4 v12, 0x0

    .line 113
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->i:Ljava/lang/String;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-lez v0, :cond_5

    .line 126
    .line 127
    iput-boolean v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->j:Z

    .line 128
    .line 129
    sget-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 136
    .line 137
    if-eqz v3, :cond_4

    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :cond_4
    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->i:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2, v3}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->P(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->Q()Landroidx/lifecycle/b0;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    new-instance v1, Lcom/transsnet/downloader/fragment/r;

    .line 162
    .line 163
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/r;-><init>(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)V

    .line 164
    .line 165
    .line 166
    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$c;

    .line 167
    .line 168
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 176
    .line 177
    if-nez v0, :cond_6

    .line 178
    .line 179
    sget-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->z()Landroidx/lifecycle/b0;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_7

    .line 190
    .line 191
    new-instance v1, Lcom/transsnet/downloader/fragment/s;

    .line 192
    .line 193
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/s;-><init>(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)V

    .line 194
    .line 195
    .line 196
    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$c;

    .line 197
    .line 198
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_6
    if-eqz v0, :cond_7

    .line 206
    .line 207
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    new-instance v6, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;

    .line 212
    .line 213
    invoke-direct {v6, v0, p0, v2}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$3$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/coroutines/Continuation;)V

    .line 214
    .line 215
    .line 216
    const/4 v7, 0x3

    .line 217
    const/4 v8, 0x0

    .line 218
    const/4 v4, 0x0

    .line 219
    const/4 v5, 0x0

    .line 220
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 221
    .line 222
    .line 223
    :cond_7
    :goto_1
    return-void
.end method

.method private static final N0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsnet/downloader/bean/DownloadUrlBean;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->j:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->S0(Lcom/transsnet/downloader/bean/DownloadUrlBean;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final O0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v4, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$2$1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {v4, p1, p0, v0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$initData$2$1;-><init>(Ljava/util/List;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method private final P0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lbx/y;->a(Landroid/view/View;)Lbx/y;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->c:Lbx/y;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lbx/y;->c:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x64

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->c:Lbx/y;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Lbx/y;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 27
    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->V0()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static synthetic R0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->Q0(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onAnalyzeSuccess"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private final S0(Lcom/transsnet/downloader/bean/DownloadUrlBean;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getResource()Lcom/transsion/moviedetailapi/DownloadItem;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getResource()Lcom/transsion/moviedetailapi/DownloadItem;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getResource()Lcom/transsion/moviedetailapi/DownloadItem;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 36
    .line 37
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getTotalEpisode()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 45
    .line 46
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    new-instance v9, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    move-object v0, v9

    .line 54
    move-object v2, p0

    .line 55
    move-object v4, p1

    .line 56
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2;-><init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsnet/downloader/bean/DownloadUrlBean;Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    const/4 v10, 0x3

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    :goto_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 68
    .line 69
    const/4 v4, 0x4

    .line 70
    const/4 v5, 0x0

    .line 71
    const-string v1, "downloadAna"

    .line 72
    .line 73
    const-string v2, "url has no resource, open url"

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/transsnet/downloader/fragment/v;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/fragment/v;-><init>(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->Q0(Lkotlin/jvm/functions/Function0;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-void
.end method

.method private static final T0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "/web/web"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->i:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "url"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-static {v0, p0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private final U0(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final V0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->c:Lbx/y;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lbx/y;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lij/y;->a:Lij/y;

    .line 14
    .line 15
    invoke-virtual {v1}, Lij/y;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "download_analyzing_anima_night.json"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "download_analyzing_anima.json"

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->c:Lbx/y;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Lbx/y;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method private static final W0()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/StartDownloadHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic n0()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->W0()Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic o0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->T0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsnet/downloader/bean/DownloadUrlBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->N0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lcom/transsnet/downloader/bean/DownloadUrlBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->O0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r0()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->I0()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic s0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic t0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->t:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->n:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Lcom/transsnet/downloader/manager/g;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->K0()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic z0(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final Q0(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->c:Lbx/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lbx/y;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->u:Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->c:Lbx/y;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lbx/y;->c:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x64

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->c:Lbx/y;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, v0, Lbx/y;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    sget-object v1, Lij/y;->a:Lij/y;

    .line 36
    .line 37
    invoke-virtual {v1}, Lij/y;->a()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const-string v1, "download_analyzing_success_anima_night.json"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v1, "download_analyzing_success_anima.json"

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$b;

    .line 56
    .line 57
    invoke-direct {v1, p0, p1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$b;-><init>(Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v2, "extra_page_from"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    :cond_0
    move-object v0, v1

    .line 30
    :cond_1
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const-string v2, "extra_last_page_from"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    :cond_2
    move-object v0, v1

    .line 47
    :cond_3
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->e:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    const-string v2, "extra_subject"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    const/4 v0, 0x0

    .line 63
    :goto_0
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    const-string v2, "extra_group_id"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    :cond_5
    move-object v0, v1

    .line 82
    :cond_6
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->g:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    const-string p1, "extra_anima_only"

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    :cond_7
    iput-boolean p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->h:Z

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_8

    .line 103
    .line 104
    const-string v0, "extra_link_url"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-nez p1, :cond_9

    .line 111
    .line 112
    :cond_8
    move-object p1, v1

    .line 113
    :cond_9
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->i:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_a

    .line 120
    .line 121
    const-string v0, "extra_ops"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-nez p1, :cond_b

    .line 128
    .line 129
    :cond_a
    move-object p1, v1

    .line 130
    :cond_b
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->k:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_c

    .line 137
    .line 138
    const-string v0, "extra_resource"

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-nez p1, :cond_d

    .line 145
    .line 146
    :cond_c
    move-object p1, v1

    .line 147
    :cond_d
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->l:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_f

    .line 154
    .line 155
    const-string v0, "extra_module_name"

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-nez p1, :cond_e

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_e
    move-object v1, p1

    .line 165
    :cond_f
    :goto_1
    iput-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->m:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getLogViewConfig()Lqi/b;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_10

    .line 172
    .line 173
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_10

    .line 178
    .line 179
    const-string v0, "page_from"

    .line 180
    .line 181
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->d:Ljava/lang/String;

    .line 182
    .line 183
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getLogViewConfig()Lqi/b;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_11

    .line 191
    .line 192
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_11

    .line 197
    .line 198
    const-string v0, "last_page_from"

    .line 199
    .line 200
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->e:Ljava/lang/String;

    .line 201
    .line 202
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getLogViewConfig()Lqi/b;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    if-eqz p1, :cond_12

    .line 210
    .line 211
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-eqz p1, :cond_12

    .line 216
    .line 217
    const-string v0, "ops"

    .line 218
    .line 219
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->k:Ljava/lang/String;

    .line 220
    .line 221
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getLogViewConfig()Lqi/b;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    if-eqz p1, :cond_13

    .line 229
    .line 230
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    if-eqz p1, :cond_13

    .line 235
    .line 236
    const-string v0, "type"

    .line 237
    .line 238
    const-string v1, "1"

    .line 239
    .line 240
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    :cond_13
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    const-string v2, "onCreateDialog: "

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "requireContext(...)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/google/android/material/bottomsheet/c;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-direct {v0, p1, v1}, Lcom/google/android/material/bottomsheet/c;-><init>(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    sget v2, Lcom/transsion/baseui/R$style;->BaseBottomDialogAnimation:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const/16 v2, 0x50

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 51
    .line 52
    .line 53
    const/high16 v2, 0x3f000000    # 0.5f

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 65
    .line 66
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 67
    .line 68
    .line 69
    :cond_1
    sget-object v3, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    .line 70
    .line 71
    invoke-virtual {v3, p1}, Lcom/transsion/baseui/util/a;->b(Landroid/content/Context;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 76
    .line 77
    const/high16 p1, 0x43280000    # 168.0f

    .line 78
    .line 79
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-virtual {v1, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->Y(Landroidx/lifecycle/b0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->b0(Landroidx/lifecycle/b0;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onDestroy()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->n:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-static {v3, v4, v2}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    :cond_0
    const-string v1, ""

    .line 43
    .line 44
    :cond_1
    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->s:Lkotlin/jvm/functions/Function4;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-boolean v4, p0, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->p:Z

    .line 53
    .line 54
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-interface {v3, v2, v1, v0, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->P0(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;->M0()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
