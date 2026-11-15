.class public final Lcom/transsnet/downloader/adapter/DownloadedHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "source.java"

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0;


# annotations
.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0098\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012w\u0010\u0014\u001as\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0004\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00130\t\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\'\u0010\u0018\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J3\u0010\u001e\u001a\u00020\u00132\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010&\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008&\u0010%J1\u0010-\u001a\u00020\u00132\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'2\u0008\u0010+\u001a\u0004\u0018\u00010*2\u0006\u0010,\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008-\u0010.JO\u00103\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00083\u00104J\u0017\u00105\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u00085\u00106J\u001f\u00107\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020*H\u0002\u00a2\u0006\u0004\u00087\u00108J!\u0010:\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\u0017\u001a\u0004\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008:\u0010;J!\u0010<\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\u0017\u001a\u0004\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008<\u0010;J\u0017\u0010=\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008=\u0010>R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010?R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010@R\u0085\u0001\u0010\u0014\u001as\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0004\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00130\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010AR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001d\u0010M\u001a\u0004\u0018\u00010H8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010LR\u001d\u0010R\u001a\u0004\u0018\u00010N8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008O\u0010J\u001a\u0004\u0008P\u0010QR\u001d\u0010W\u001a\u0004\u0018\u00010S8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010J\u001a\u0004\u0008U\u0010VR\u0014\u0010[\u001a\u00020X8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0014\u0010_\u001a\u00020\\8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0014\u0010a\u001a\u00020\\8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010^R\u0014\u0010c\u001a\u00020\\8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010^R\u0014\u0010e\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010CR\u0014\u0010i\u001a\u00020f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0014\u0010k\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010CR\u0014\u0010m\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010CR\u0016\u0010o\u001a\u00020X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010ZR\u0016\u0010q\u001a\u00020X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010ZR\u0018\u0010t\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010s\u00a8\u0006u"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/DownloadedHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/transsnet/downloader/adapter/u0;",
        "Landroid/view/View;",
        "view",
        "",
        "pageFrom",
        "",
        "stateTextSizeDP",
        "Lkotlin/Function5;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "position",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "bean",
        "type",
        "Lcom/transsnet/downloader/adapter/u0$b;",
        "listener",
        "",
        "popSaveListener",
        "<init>",
        "(Landroid/view/View;Ljava/lang/String;FLkotlin/jvm/functions/Function5;)V",
        "item",
        "L",
        "(ILandroid/view/View;Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "",
        "readProgress",
        "duration",
        "status",
        "P",
        "(Ljava/lang/Long;Ljava/lang/Long;II)V",
        "M",
        "(Lcom/transsion/baselib/db/download/DownloadBean;I)V",
        "Landroid/content/Context;",
        "context",
        "U",
        "(Landroid/content/Context;)V",
        "z",
        "Ljava/lang/ref/SoftReference;",
        "",
        "userTag",
        "Lcom/transsion/baselib/db/audio/AudioBean;",
        "audioBean",
        "resourceId",
        "X",
        "(Ljava/lang/ref/SoftReference;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/lang/String;)V",
        "path",
        "url",
        "postId",
        "subjectId",
        "N",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "O",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "T",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/audio/AudioBean;)V",
        "Lp6/a;",
        "a",
        "(ILp6/a;)V",
        "b",
        "c",
        "(Lcom/transsnet/downloader/adapter/u0$b;)V",
        "Ljava/lang/String;",
        "F",
        "Lkotlin/jvm/functions/Function5;",
        "d",
        "Landroid/view/View;",
        "D",
        "()Landroid/view/View;",
        "setView",
        "(Landroid/view/View;)V",
        "Lep/a;",
        "e",
        "Lkotlin/Lazy;",
        "B",
        "()Lep/a;",
        "mAudioApi",
        "Lep/b;",
        "f",
        "C",
        "()Lep/b;",
        "mFloatApi",
        "Lsi/a;",
        "g",
        "A",
        "()Lsi/a;",
        "audioDao",
        "Landroid/widget/TextView;",
        "h",
        "Landroid/widget/TextView;",
        "tvName",
        "Lcom/tn/lib/widget/TnTextView;",
        "i",
        "Lcom/tn/lib/widget/TnTextView;",
        "tvPercent",
        "j",
        "tvFileSize",
        "k",
        "tvSaveFileName",
        "l",
        "vNoFile",
        "Landroid/widget/ProgressBar;",
        "m",
        "Landroid/widget/ProgressBar;",
        "progressBar",
        "n",
        "seriesBg1",
        "o",
        "seriesBg2",
        "p",
        "tvSaveTo",
        "q",
        "tvEp",
        "r",
        "Lcom/transsnet/downloader/adapter/u0$b;",
        "onItemChangeListener",
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

.field private final b:F

.field private final c:Lkotlin/jvm/functions/Function5;

.field private d:Landroid/view/View;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Landroid/widget/TextView;

.field private final i:Lcom/tn/lib/widget/TnTextView;

.field private final j:Lcom/tn/lib/widget/TnTextView;

.field private final k:Lcom/tn/lib/widget/TnTextView;

.field private final l:Landroid/view/View;

.field private final m:Landroid/widget/ProgressBar;

.field private final n:Landroid/view/View;

.field private final o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/transsnet/downloader/adapter/u0$b;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;FLkotlin/jvm/functions/Function5;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageFrom"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "popSaveListener"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->a:Ljava/lang/String;

    .line 20
    .line 21
    iput p3, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->b:F

    .line 22
    .line 23
    iput-object p4, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->c:Lkotlin/jvm/functions/Function5;

    .line 24
    .line 25
    new-instance p2, Lcom/transsnet/downloader/adapter/g0;

    .line 26
    .line 27
    invoke-direct {p2}, Lcom/transsnet/downloader/adapter/g0;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->e:Lkotlin/Lazy;

    .line 35
    .line 36
    new-instance p2, Lcom/transsnet/downloader/adapter/h0;

    .line 37
    .line 38
    invoke-direct {p2}, Lcom/transsnet/downloader/adapter/h0;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->f:Lkotlin/Lazy;

    .line 46
    .line 47
    new-instance p2, Lcom/transsnet/downloader/adapter/w;

    .line 48
    .line 49
    invoke-direct {p2}, Lcom/transsnet/downloader/adapter/w;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->g:Lkotlin/Lazy;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->d:Landroid/view/View;

    .line 59
    .line 60
    sget p1, Lcom/transsnet/downloader/R$id;->tv_name:I

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->h:Landroid/widget/TextView;

    .line 69
    .line 70
    sget p1, Lcom/transsnet/downloader/R$id;->tv_process:I

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/tn/lib/widget/TnTextView;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->i:Lcom/tn/lib/widget/TnTextView;

    .line 79
    .line 80
    sget p1, Lcom/transsnet/downloader/R$id;->layout_no_file_tips:I

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->l:Landroid/view/View;

    .line 87
    .line 88
    sget p1, Lcom/transsnet/downloader/R$id;->progress_bar:I

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/widget/ProgressBar;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->m:Landroid/widget/ProgressBar;

    .line 97
    .line 98
    sget p1, Lcom/transsnet/downloader/R$id;->v_series_top_bg:I

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->n:Landroid/view/View;

    .line 105
    .line 106
    sget p1, Lcom/transsnet/downloader/R$id;->v_series_top_bg_2:I

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->o:Landroid/view/View;

    .line 113
    .line 114
    sget p1, Lcom/transsnet/downloader/R$id;->tv_file_size:I

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcom/tn/lib/widget/TnTextView;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->j:Lcom/tn/lib/widget/TnTextView;

    .line 123
    .line 124
    sget p1, Lcom/transsnet/downloader/R$id;->tv_save_file_name:I

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lcom/tn/lib/widget/TnTextView;

    .line 131
    .line 132
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->k:Lcom/tn/lib/widget/TnTextView;

    .line 133
    .line 134
    sget p1, Lcom/transsnet/downloader/R$id;->tv_save_to:I

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Landroid/widget/TextView;

    .line 141
    .line 142
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->p:Landroid/widget/TextView;

    .line 143
    .line 144
    sget p1, Lcom/transsnet/downloader/R$id;->tv_ep:I

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Landroid/widget/TextView;

    .line 151
    .line 152
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->q:Landroid/widget/TextView;

    .line 153
    .line 154
    return-void
.end method

.method private final A()Lsi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->g:Lkotlin/Lazy;

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

.method private final B()Lep/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->e:Lkotlin/Lazy;

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

.method private final C()Lep/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->f:Lkotlin/Lazy;

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

.method private static final E(Lcom/transsnet/downloader/adapter/DownloadedHolder;Lp6/a;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget v0, Lcom/transsnet/downloader/R$string;->download_files:I

    .line 8
    .line 9
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCount()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object p1, v1, v2

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " \u00b7 "

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method private static final F(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static final G(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILp6/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 5
    .line 6
    invoke-direct {p0, p1, p3, p2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->L(ILandroid/view/View;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final H(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILp6/a;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 5
    .line 6
    invoke-direct {p0, p1, p3, p2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->L(ILandroid/view/View;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method private static final I(Lp6/a;Lcom/transsnet/downloader/adapter/DownloadedHolder;ILandroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const-wide/16 v1, 0x3e8

    .line 8
    .line 9
    invoke-virtual {v0, p3, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    check-cast p0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    if-ne p3, v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->O(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-direct {p1, p0, p2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->M(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final J()Lep/a;
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

.method private static final K()Lep/b;
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

.method private final L(ILandroid/view/View;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->isAllFileExist()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v1, "getContext(...)"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2, p3, p1}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->v(Landroid/content/Context;Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->c:Lkotlin/jvm/functions/Function5;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v7, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->r:Lcom/transsnet/downloader/adapter/u0$b;

    .line 34
    .line 35
    move-object v4, p2

    .line 36
    move-object v5, p3

    .line 37
    invoke-interface/range {v2 .. v7}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final M(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->d:Landroid/view/View;

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "getContext(...)"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->v(Landroid/content/Context;Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v3, Lcom/transsnet/downloader/adapter/DownloadedHolder$openMedia$1;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-direct {v3, p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadedHolder$openMedia$1;-><init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 53
    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, "exists:"

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, "  canRead"

    .line 97
    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, "    "

    .line 105
    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v2, "yy"

    .line 117
    .line 118
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 122
    .line 123
    filled-new-array {v0}, [Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->s([Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_3

    .line 142
    .line 143
    if-nez v0, :cond_3

    .line 144
    .line 145
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->U(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v1, ""

    .line 163
    .line 164
    if-nez v0, :cond_4

    .line 165
    .line 166
    move-object v4, v1

    .line 167
    goto :goto_1

    .line 168
    :cond_4
    move-object v4, v0

    .line 169
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-nez v0, :cond_5

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :cond_5
    move-object v5, v0

    .line 180
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-lez v0, :cond_7

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    if-nez v0, :cond_6

    .line 207
    .line 208
    :goto_2
    move-object v7, v1

    .line 209
    goto :goto_3

    .line 210
    :cond_6
    move-object v7, v0

    .line 211
    goto :goto_3

    .line 212
    :cond_7
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-nez v0, :cond_6

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    if-nez v0, :cond_8

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    :cond_8
    move-object v8, v0

    .line 230
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-nez v0, :cond_9

    .line 235
    .line 236
    move-object v9, v1

    .line 237
    goto :goto_4

    .line 238
    :cond_9
    move-object v9, v0

    .line 239
    :goto_4
    move-object v2, p0

    .line 240
    move-object v3, p1

    .line 241
    move v10, p2

    .line 242
    invoke-direct/range {v2 .. v10}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->N(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    .line 244
    .line 245
    :goto_5
    return-void
.end method

.method private final N(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "id"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->d:Landroid/view/View;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object p3, Lpr/a;->a:Lpr/a;

    .line 23
    .line 24
    invoke-virtual {p3}, Lpr/a;->b()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    invoke-virtual {p3, v2, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const-string p4, "ep"

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 43
    .line 44
    .line 45
    move-result p5

    .line 46
    invoke-virtual {p3, p4, p5}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    const-string p4, "ms"

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 53
    .line 54
    .line 55
    move-result-wide p5

    .line 56
    invoke-virtual {p3, p4, p5, p6}, Lcom/therouter/router/Navigator;->G(Ljava/lang/String;J)Lcom/therouter/router/Navigator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1, p2, v3, v1, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->d:Landroid/view/View;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move-object v0, v3

    .line 74
    :goto_1
    instance-of v4, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 75
    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object v0, v3

    .line 82
    :goto_2
    if-nez v0, :cond_5

    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    const-string v4, "/video/detail"

    .line 86
    .line 87
    invoke-static {v4}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const-string v5, "subject_type"

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-virtual {v4, v5, v6}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4, v2, p7}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v4, "extra_local_path"

    .line 106
    .line 107
    invoke-virtual {v2, v4, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const-string v2, "extra_url"

    .line 112
    .line 113
    invoke-virtual {p2, v2, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const-string p4, "extra_resource_id"

    .line 118
    .line 119
    invoke-virtual {p2, p4, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    const-string p3, "extra_subject_id"

    .line 124
    .line 125
    invoke-virtual {p2, p3, p7}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    const-string p3, "extra_name"

    .line 130
    .line 131
    invoke-virtual {p2, p3, p5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    const-string p3, "extra_post_id"

    .line 136
    .line 137
    invoke-virtual {p2, p3, p6}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    const-string p3, "extra_completed"

    .line 142
    .line 143
    const/4 p4, 0x1

    .line 144
    invoke-virtual {p2, p3, p4}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const-string p3, "extra_is_series"

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 151
    .line 152
    .line 153
    move-result p4

    .line 154
    invoke-virtual {p2, p3, p4}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    const-string p3, "extra_page_from"

    .line 159
    .line 160
    iget-object p4, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->a:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p2, p3, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    const-string p3, "extra_height"

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoHeight()I

    .line 169
    .line 170
    .line 171
    move-result p4

    .line 172
    invoke-virtual {p2, p3, p4}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    const-string p3, "extra_width"

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    .line 179
    .line 180
    .line 181
    move-result p4

    .line 182
    invoke-virtual {p2, p3, p4}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_6

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    const/4 p8, -0x1

    .line 194
    :goto_3
    const-string p1, "extra_series_position"

    .line 195
    .line 196
    invoke-virtual {p2, p1, p8}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1, v0, v3, v1, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method private final O(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

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
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->d:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v0, v2

    .line 36
    :goto_0
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object v0, v2

    .line 44
    :goto_1
    if-nez v0, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const-string v1, "/download/series_list"

    .line 48
    .line 49
    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    const-string p1, "Series"

    .line 60
    .line 61
    :cond_3
    const-string v3, "extra_name"

    .line 62
    .line 63
    invoke-virtual {v1, v3, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 v1, 0x2

    .line 68
    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private final P(Ljava/lang/Long;Ljava/lang/Long;II)V
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    move-wide v6, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-wide v6, v0

    .line 12
    :goto_0
    const-wide/16 v2, 0x1

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide p1, v2

    .line 22
    :goto_1
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-gtz v0, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-wide v2, p1

    .line 28
    :goto_2
    long-to-float p1, v6

    .line 29
    const/high16 p2, 0x3f800000    # 1.0f

    .line 30
    .line 31
    mul-float/2addr p1, p2

    .line 32
    long-to-float p2, v2

    .line 33
    div-float/2addr p1, p2

    .line 34
    const/16 p2, 0x64

    .line 35
    .line 36
    int-to-float p2, p2

    .line 37
    mul-float/2addr p1, p2

    .line 38
    float-to-int p1, p1

    .line 39
    if-ltz p1, :cond_3

    .line 40
    .line 41
    const/16 p2, 0x65

    .line 42
    .line 43
    if-ge p1, p2, :cond_3

    .line 44
    .line 45
    iget-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->i:Lcom/tn/lib/widget/TnTextView;

    .line 46
    .line 47
    new-instance v0, Lcom/transsnet/downloader/adapter/v;

    .line 48
    .line 49
    move-object v4, v0

    .line 50
    move v5, p1

    .line 51
    move v8, p4

    .line 52
    move-object v9, p0

    .line 53
    invoke-direct/range {v4 .. v9}, Lcom/transsnet/downloader/adapter/v;-><init>(IJILcom/transsnet/downloader/adapter/DownloadedHolder;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->m:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    const/4 p1, 0x1

    .line 65
    if-eq p3, p1, :cond_5

    .line 66
    .line 67
    const/4 p1, 0x6

    .line 68
    if-eq p3, p1, :cond_4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->i:Lcom/tn/lib/widget/TnTextView;

    .line 72
    .line 73
    new-instance p2, Lcom/transsnet/downloader/adapter/a0;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Lcom/transsnet/downloader/adapter/a0;-><init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->i:Lcom/tn/lib/widget/TnTextView;

    .line 83
    .line 84
    new-instance p2, Lcom/transsnet/downloader/adapter/z;

    .line 85
    .line 86
    invoke-direct {p2, p0}, Lcom/transsnet/downloader/adapter/z;-><init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 90
    .line 91
    .line 92
    :goto_3
    return-void
.end method

.method private static final Q(IJILcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    const/16 p1, 0x64

    .line 6
    .line 7
    if-eq p0, p1, :cond_1

    .line 8
    .line 9
    if-ne p3, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p4, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget p2, Lcom/transsnet/downloader/R$string;->download_listened:I

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-array p3, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object p0, p3, v0

    .line 26
    .line 27
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p4, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget p2, Lcom/transsnet/downloader/R$string;->download_watched:I

    .line 39
    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-array p3, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object p0, p3, v0

    .line 47
    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p0, p4, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sget p1, Lcom/transsnet/downloader/R$string;->download_finished:I

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-wide/16 v2, 0x0

    .line 67
    .line 68
    cmp-long p0, p1, v2

    .line 69
    .line 70
    if-lez p0, :cond_4

    .line 71
    .line 72
    if-ne p3, v1, :cond_3

    .line 73
    .line 74
    iget-object p0, p4, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    sget p1, Lcom/transsnet/downloader/R$string;->download_listened:I

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    new-array p3, v1, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object p2, p3, v0

    .line 89
    .line 90
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-object p0, p4, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    sget p1, Lcom/transsnet/downloader/R$string;->download_watched:I

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    new-array p3, v1, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object p2, p3, v0

    .line 110
    .line 111
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget-object p0, p4, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    sget p1, Lcom/transsnet/downloader/R$string;->download_not_open:I

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    :goto_0
    return-object p0
.end method

.method private static final R(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget v0, Lcom/transsnet/downloader/R$string;->download_not_open:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static final S(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget v0, Lcom/transsnet/downloader/R$string;->download_finished:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private final T(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;

    .line 7
    .line 8
    invoke-direct {v1, p2, p1, p0, v0}, Lcom/transsnet/downloader/adapter/DownloadedHolder$b;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/adapter/DownloadedHolder;Ljava/lang/ref/SoftReference;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setAudioListener(Lcom/transsion/player/orplayer/e;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final U(Landroid/content/Context;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lcom/transsnet/downloader/R$string;->download_open_file_no_permission:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->m0(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lcom/transsion/transfer/R$string;->wifi_setting:I

    .line 11
    .line 12
    new-instance v2, Lcom/transsnet/downloader/adapter/x;

    .line 13
    .line 14
    invoke-direct {v2, p0, p1}, Lcom/transsnet/downloader/adapter/x;-><init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->p0(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v1, Lcom/transsnet/downloader/R$color;->download_snackbar_bg:I

    .line 22
    .line 23
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sget v2, Lcom/transsnet/downloader/R$color;->download_snackbar_action:I

    .line 28
    .line 29
    invoke-static {p1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->r0(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->H()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "getView(...)"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/high16 v4, 0x41000000    # 8.0f

    .line 46
    .line 47
    invoke-static {v4}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    int-to-float v5, v5

    .line 52
    invoke-static {v3, v5}, Lcom/transsion/baseui/util/q;->c(Landroid/view/View;F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->H()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget v5, Lcom/google/android/material/R$id;->snackbar_action:I

    .line 60
    .line 61
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/widget/Button;

    .line 66
    .line 67
    const/high16 v5, 0x41600000    # 14.0f

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    new-instance v7, Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x11

    .line 87
    .line 88
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v4}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    invoke-static {v7, v1}, Lcom/transsion/baseui/util/q;->c(Landroid/view/View;F)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Luf/a;->c(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Lcom/transsnet/downloader/adapter/y;

    .line 117
    .line 118
    invoke-direct {v1, v3}, Lcom/transsnet/downloader/adapter/y;-><init>(Landroid/widget/Button;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const/high16 v4, 0x42880000    # 68.0f

    .line 129
    .line 130
    invoke-static {v4}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    .line 136
    const/high16 v4, 0x42000000    # 32.0f

    .line 137
    .line 138
    invoke-static {v4}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Landroid/view/ViewGroup;

    .line 149
    .line 150
    if-eqz v4, :cond_0

    .line 151
    .line 152
    invoke-virtual {v4, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    :cond_0
    invoke-static {v3}, Luf/c;->g(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->H()Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    sget v3, Lcom/google/android/material/R$id;->snackbar_text:I

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Landroid/widget/TextView;

    .line 169
    .line 170
    if-eqz v1, :cond_2

    .line 171
    .line 172
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    .line 177
    .line 178
    invoke-static {p1}, Luf/a;->c(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    .line 187
    .line 188
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->X()V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method private static final V(Lcom/transsnet/downloader/adapter/DownloadedHolder;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->z(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final W(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final X(Ljava/lang/ref/SoftReference;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    if-eqz p3, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p3, "null cannot be cast to non-null type com.transsnet.downloader.adapter.DownloadedHolder"

    .line 16
    .line 17
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lcom/transsnet/downloader/adapter/DownloadedHolder;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {p1, v0, p2, p3, v1}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->P(Ljava/lang/Long;Ljava/lang/Long;II)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/transsnet/downloader/adapter/DownloadedHolder;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->V(Lcom/transsnet/downloader/adapter/DownloadedHolder;Landroid/content/Context;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g()Lep/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->J()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h()Lep/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->K()Lep/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->F(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lp6/a;Lcom/transsnet/downloader/adapter/DownloadedHolder;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->I(Lp6/a;Lcom/transsnet/downloader/adapter/DownloadedHolder;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k()Lsi/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->y()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->W(Landroid/widget/Button;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILp6/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->G(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILp6/a;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->S(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->R(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILp6/a;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->H(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILp6/a;Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic q(Lcom/transsnet/downloader/adapter/DownloadedHolder;Lp6/a;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->E(Lcom/transsnet/downloader/adapter/DownloadedHolder;Lp6/a;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(IJILcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->Q(IJILcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Lsi/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->A()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Lep/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->B()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u(Lcom/transsnet/downloader/adapter/DownloadedHolder;)Lep/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->C()Lep/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v(Lcom/transsnet/downloader/adapter/DownloadedHolder;Ljava/lang/Long;Ljava/lang/Long;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->P(Ljava/lang/Long;Ljava/lang/Long;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/transsnet/downloader/adapter/DownloadedHolder;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->T(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/transsnet/downloader/adapter/DownloadedHolder;Ljava/lang/ref/SoftReference;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->X(Ljava/lang/ref/SoftReference;Lcom/transsion/baselib/db/audio/AudioBean;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final y()Lsi/a;
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

.method private final z(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->x([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v2, Lcom/transsnet/downloader/adapter/DownloadedHolder$a;

    .line 16
    .line 17
    invoke-direct {v2, v0, v1}, Lcom/transsnet/downloader/adapter/DownloadedHolder$a;-><init>(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lcom/blankj/utilcode/util/PermissionUtils;->m(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->y()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final D()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public a(ILp6/a;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->i:Lcom/tn/lib/widget/TnTextView;

    .line 8
    .line 9
    iget v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->b:F

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    cmpg-float v5, v4, v5

    .line 13
    .line 14
    const/high16 v6, 0x41400000    # 12.0f

    .line 15
    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    move v4, v6

    .line 19
    :cond_0
    const/4 v5, 0x2

    .line 20
    invoke-virtual {v3, v5, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 21
    .line 22
    .line 23
    instance-of v3, v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 24
    .line 25
    if-eqz v3, :cond_e

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const/4 v7, 0x1

    .line 35
    const/4 v8, 0x0

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v9

    .line 42
    iget v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->b:F

    .line 43
    .line 44
    cmpg-float v4, v4, v6

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    move v4, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v4, v8

    .line 51
    :goto_0
    invoke-static {v9, v10, v4}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    :cond_2
    const-string v4, ""

    .line 58
    .line 59
    :cond_3
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isClosedTransferFailed()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    :cond_4
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const/16 v9, 0xa

    .line 74
    .line 75
    if-ne v6, v9, :cond_5

    .line 76
    .line 77
    iget-object v6, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->n:Landroid/view/View;

    .line 78
    .line 79
    invoke-static {v6}, Luf/c;->k(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iget-object v6, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->o:Landroid/view/View;

    .line 83
    .line 84
    invoke-static {v6}, Luf/c;->k(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    iget-object v6, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->j:Lcom/tn/lib/widget/TnTextView;

    .line 88
    .line 89
    new-instance v10, Lcom/transsnet/downloader/adapter/b0;

    .line 90
    .line 91
    invoke-direct {v10, v0, v2, v4}, Lcom/transsnet/downloader/adapter/b0;-><init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;Lp6/a;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v10}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 95
    .line 96
    .line 97
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->j:Lcom/tn/lib/widget/TnTextView;

    .line 98
    .line 99
    sget v6, Lcom/transsnet/downloader/R$mipmap;->ic_download_series:I

    .line 100
    .line 101
    invoke-virtual {v4, v6, v8, v8, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 102
    .line 103
    .line 104
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->k:Lcom/tn/lib/widget/TnTextView;

    .line 105
    .line 106
    invoke-static {v4}, Luf/c;->g(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->l:Landroid/view/View;

    .line 110
    .line 111
    invoke-static {v4}, Luf/c;->g(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    iget-object v6, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->n:Landroid/view/View;

    .line 116
    .line 117
    invoke-static {v6}, Luf/c;->g(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    iget-object v6, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->o:Landroid/view/View;

    .line 121
    .line 122
    invoke-static {v6}, Luf/c;->g(Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    iget-object v6, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->k:Lcom/tn/lib/widget/TnTextView;

    .line 126
    .line 127
    invoke-static {v6}, Luf/c;->g(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    iget-object v6, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->j:Lcom/tn/lib/widget/TnTextView;

    .line 131
    .line 132
    new-instance v10, Lcom/transsnet/downloader/adapter/c0;

    .line 133
    .line 134
    invoke-direct {v10, v4}, Lcom/transsnet/downloader/adapter/c0;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v10}, Lcom/tn/lib/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    .line 138
    .line 139
    .line 140
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->j:Lcom/tn/lib/widget/TnTextView;

    .line 141
    .line 142
    invoke-virtual {v4, v8, v8, v8, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 143
    .line 144
    .line 145
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->l:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_6

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    const/16 v8, 0x8

    .line 155
    .line 156
    :goto_1
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    :goto_2
    sget v4, Lcom/transsnet/downloader/R$id;->iv_cover:I

    .line 160
    .line 161
    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Landroid/widget/ImageView;

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    if-eqz v6, :cond_7

    .line 172
    .line 173
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-nez v8, :cond_7

    .line 182
    .line 183
    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 187
    .line 188
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    const-string v10, "getContext(...)"

    .line 193
    .line 194
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-static {v8, v4, v6, v10}, Lcom/transsnet/downloader/adapter/DownloadedHolderKt;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    sget v4, Lcom/transsnet/downloader/R$id;->iv_type:I

    .line 205
    .line 206
    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Landroid/widget/ImageView;

    .line 211
    .line 212
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eq v6, v5, :cond_a

    .line 217
    .line 218
    const/4 v5, 0x3

    .line 219
    if-eq v6, v5, :cond_8

    .line 220
    .line 221
    const/4 v5, 0x5

    .line 222
    if-eq v6, v5, :cond_a

    .line 223
    .line 224
    const/4 v5, 0x6

    .line 225
    if-eq v6, v5, :cond_a

    .line 226
    .line 227
    sget v5, Lcom/transsion/baseui/R$mipmap;->home_ic_audio_white:I

    .line 228
    .line 229
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_8
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_9

    .line 238
    .line 239
    sget v5, Lcom/transsion/baseui/R$mipmap;->home_ic_short_tv_white:I

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_9
    sget v5, Lcom/transsion/baseui/R$mipmap;->home_ic_tv_white:I

    .line 243
    .line 244
    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_a
    sget v5, Lcom/transsion/baseui/R$mipmap;->home_ic_movie_white:I

    .line 249
    .line 250
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    .line 252
    .line 253
    :goto_4
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->h:Landroid/widget/TextView;

    .line 254
    .line 255
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleNameAppendResolution()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-lez v4, :cond_b

    .line 271
    .line 272
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->q:Landroid/widget/TextView;

    .line 273
    .line 274
    invoke-static {v4}, Luf/c;->k(Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->q:Landroid/widget/TextView;

    .line 278
    .line 279
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_b
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->q:Landroid/widget/TextView;

    .line 288
    .line 289
    invoke-static {v4}, Luf/c;->g(Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    :goto_5
    sget v4, Lcom/transsnet/downloader/R$id;->iv_more:I

    .line 293
    .line 294
    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    new-instance v5, Lcom/transsnet/downloader/adapter/d0;

    .line 299
    .line 300
    invoke-direct {v5, v0, v1, v2}, Lcom/transsnet/downloader/adapter/d0;-><init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILp6/a;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    .line 305
    .line 306
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 307
    .line 308
    new-instance v5, Lcom/transsnet/downloader/adapter/e0;

    .line 309
    .line 310
    invoke-direct {v5, v0, v1, v2}, Lcom/transsnet/downloader/adapter/e0;-><init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;ILp6/a;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 314
    .line 315
    .line 316
    iget-object v4, v0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->d:Landroid/view/View;

    .line 317
    .line 318
    if-eqz v4, :cond_c

    .line 319
    .line 320
    new-instance v5, Lcom/transsnet/downloader/adapter/f0;

    .line 321
    .line 322
    invoke-direct {v5, v2, v0, v1}, Lcom/transsnet/downloader/adapter/f0;-><init>(Lp6/a;Lcom/transsnet/downloader/adapter/DownloadedHolder;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    .line 327
    .line 328
    :cond_c
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-ne v4, v7, :cond_d

    .line 333
    .line 334
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-eq v4, v9, :cond_d

    .line 339
    .line 340
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-static {v4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    new-instance v8, Lcom/transsnet/downloader/adapter/DownloadedHolder$initData$7;

    .line 349
    .line 350
    const/4 v4, 0x0

    .line 351
    invoke-direct {v8, v2, v0, v1, v4}, Lcom/transsnet/downloader/adapter/DownloadedHolder$initData$7;-><init>(Lp6/a;Lcom/transsnet/downloader/adapter/DownloadedHolder;ILkotlin/coroutines/Continuation;)V

    .line 352
    .line 353
    .line 354
    const/4 v9, 0x3

    .line 355
    const/4 v10, 0x0

    .line 356
    const/4 v6, 0x0

    .line 357
    const/4 v7, 0x0

    .line 358
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 359
    .line 360
    .line 361
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 362
    .line 363
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getAudioStatus()I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    const-string v4, "------------------refrehs, name = "

    .line 377
    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v1, ", audioStatus = "

    .line 385
    .line 386
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v13

    .line 396
    const/4 v15, 0x4

    .line 397
    const/16 v16, 0x0

    .line 398
    .line 399
    const-string v12, "audioPlay"

    .line 400
    .line 401
    const/4 v14, 0x0

    .line 402
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    goto :goto_6

    .line 406
    :cond_d
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 407
    .line 408
    .line 409
    move-result-wide v1

    .line 410
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->P(Ljava/lang/Long;Ljava/lang/Long;II)V

    .line 427
    .line 428
    .line 429
    :cond_e
    :goto_6
    return-void
.end method

.method public b(ILp6/a;)V
    .locals 2

    .line 1
    instance-of p1, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->P(Ljava/lang/Long;Ljava/lang/Long;II)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public c(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder;->r:Lcom/transsnet/downloader/adapter/u0$b;

    .line 7
    .line 8
    return-void
.end method
