.class public final Lcom/transsion/subtitle/view/SubtitleOptionsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/view/SubtitleOptionsView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 h2\u00020\u0001:\u0001CB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ!\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J+\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010!\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u00122\u0008\u0008\u0002\u0010 \u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J!\u0010$\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u00122\u0008\u0008\u0002\u0010 \u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008$\u0010\"J!\u0010&\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0015J!\u0010(\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008(\u0010\u0019J\u000f\u0010)\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008)\u0010\u000eJ\u000f\u0010*\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010.\u001a\u00020,2\u0006\u0010-\u001a\u00020,H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u00080\u0010\u000eJ\u000f\u00101\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u00081\u0010\u000eJ\u000f\u00102\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u00082\u0010\u000eJS\u0010>\u001a\u00020\u000c2\u0008\u00104\u001a\u0004\u0018\u0001032\u0008\u00105\u001a\u0004\u0018\u00010\u00062\u0008\u00107\u001a\u0004\u0018\u0001062\u0008\u00108\u001a\u0004\u0018\u0001062\u0008\u0010:\u001a\u0004\u0018\u0001092\u0008\u0010;\u001a\u0004\u0018\u00010\u00102\u0008\u0010=\u001a\u0004\u0018\u00010<\u00a2\u0006\u0004\u0008>\u0010?J\r\u0010@\u001a\u00020\u000c\u00a2\u0006\u0004\u0008@\u0010\u000eJ\r\u0010A\u001a\u00020\u000c\u00a2\u0006\u0004\u0008A\u0010\u000eR\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u00104\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u00105\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010\u0018R\u0018\u00107\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u00108\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010JR\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010=\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0016\u0010;\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0014\u0010S\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010\u0018R\u0014\u0010U\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008T\u0010\u0018R\u0016\u0010W\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010QR\u0016\u0010Y\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010\u0018R\u0016\u0010Z\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010\u0018R\u0016\u0010\\\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010[R\u0016\u0010]\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010[R\u0016\u0010_\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010QR\u0016\u0010a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010\u0018R\u0016\u0010c\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010[R\u001e\u0010e\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u000c\n\u0004\u0008e\u0010f\u0012\u0004\u0008g\u0010\u000e\u00a8\u0006i"
    }
    d2 = {
        "Lcom/transsion/subtitle/view/SubtitleOptionsView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "o",
        "()V",
        "n",
        "",
        "fontColorType",
        "",
        "fromRadioGroup",
        "G",
        "(Ljava/lang/String;Z)V",
        "fontSizeProgress",
        "fromSeekBar",
        "I",
        "(IZ)V",
        "percent",
        "fromSeekbar",
        "isSeekbarStopTouch",
        "K",
        "(IZZ)V",
        "openShadow",
        "fromSwitchButton",
        "x",
        "(ZZ)V",
        "openBackground",
        "v",
        "bgColorType",
        "C",
        "opacityProgress",
        "E",
        "reset",
        "u",
        "()Z",
        "",
        "fontSizePercent",
        "m",
        "(F)F",
        "z",
        "A",
        "B",
        "Lcom/transsion/subtitle/helper/LocalVideoUiType;",
        "layerType",
        "playerContainerHeight",
        "Lcom/avery/subtitle/widget/SimpleSubtitleView;",
        "subtitleViewTop",
        "subtitleViewBottom",
        "Landroid/view/ViewGroup;",
        "subtitleViewGroup",
        "pageName",
        "Lcom/transsion/subtitle/helper/d;",
        "optionsHelper",
        "initOptions",
        "(Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/transsion/subtitle/helper/d;)V",
        "addSubtitleOptions",
        "removeSubtitleOptions",
        "Ljt/i;",
        "a",
        "Ljt/i;",
        "optionsViewBinding",
        "b",
        "Lcom/transsion/subtitle/helper/LocalVideoUiType;",
        "c",
        "d",
        "Lcom/avery/subtitle/widget/SimpleSubtitleView;",
        "e",
        "f",
        "Landroid/view/ViewGroup;",
        "g",
        "Lcom/transsion/subtitle/helper/d;",
        "h",
        "Ljava/lang/String;",
        "i",
        "dp4",
        "j",
        "subtitleViewBaseHeight",
        "k",
        "curFontColorType",
        "l",
        "curFontSizeProgress",
        "curPositionPercent",
        "Z",
        "curOpenShadow",
        "curOpenBackground",
        "p",
        "curBackgroundColorType",
        "q",
        "curBackgroundOpacityProgress",
        "r",
        "isSetPreviewText",
        "Landroid/widget/FrameLayout;",
        "subtitleViewContainer",
        "Landroid/widget/FrameLayout;",
        "getSubtitleViewContainer$annotations",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/subtitle/view/SubtitleOptionsView$a;


# instance fields
.field private a:Ljt/i;

.field private b:Lcom/transsion/subtitle/helper/LocalVideoUiType;

.field private c:I

.field private d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

.field private e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/transsion/subtitle/helper/d;

.field private h:Ljava/lang/String;

.field private final i:I

.field private final j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/subtitle/view/SubtitleOptionsView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/subtitle/view/SubtitleOptionsView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->Companion:Lcom/transsion/subtitle/view/SubtitleOptionsView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/transsion/subtitle/view/SubtitleOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/subtitle/view/SubtitleOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Ljt/i;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Ljt/i;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 3
    const-string p1, "local_video_detail"

    iput-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->h:Ljava/lang/String;

    const/high16 p1, 0x40800000    # 4.0f

    .line 4
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->i:I

    const/high16 p1, 0x42840000    # 66.0f

    .line 5
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->j:I

    .line 6
    const-string p1, "color_white"

    iput-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->k:Ljava/lang/String;

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->l:I

    const/16 p1, 0xa

    .line 8
    iput p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->m:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->n:Z

    .line 10
    const-string p1, "color_black"

    iput-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->p:Ljava/lang/String;

    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->q:I

    .line 12
    invoke-direct {p0}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->o()V

    return-void
.end method

.method private final A()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "behavior"

    .line 7
    .line 8
    const-string v2, "leave"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "font_color"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->k:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget v3, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->l:I

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Lcom/transsion/subtitle/helper/d;->g(I)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v1, v2

    .line 37
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v3, "font_size"

    .line 42
    .line 43
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->m:I

    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v3, "position_bottom_percent"

    .line 53
    .line 54
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-boolean v1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->n:Z

    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v3, "shadow"

    .line 64
    .line 65
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->o:Z

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v3, "open_bg"

    .line 75
    .line 76
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-boolean v1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->o:Z

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    const-string v1, "bg_color"

    .line 84
    .line 85
    iget-object v3, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->p:Ljava/lang/String;

    .line 86
    .line 87
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 91
    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    iget v2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->q:I

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/helper/d;->c(I)F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "bg_opacity"

    .line 109
    .line 110
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_2
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->h:Ljava/lang/String;

    .line 116
    .line 117
    const-string v3, "subtitle_options"

    .line 118
    .line 119
    invoke-virtual {v1, v2, v3, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method private final B()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "behavior"

    .line 7
    .line 8
    const-string v2, "reset"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->h:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "subtitle_options"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final C(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lcom/transsion/subtitle/helper/d;->b(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p2, v0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 19
    .line 20
    iget-object v1, v1, Ljt/i;->t:Landroid/widget/RadioGroup;

    .line 21
    .line 22
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {v1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iput-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->p:Ljava/lang/String;

    .line 34
    .line 35
    :goto_1
    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v1, "subtitle_options_bg_color"

    .line 42
    .line 43
    invoke-virtual {p2, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 47
    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "setBackgroundColorStyle = "

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const/4 v6, 0x4

    .line 66
    const/4 v7, 0x0

    .line 67
    const-string v3, "SubtitleOptionsView"

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 74
    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Lcom/transsion/subtitle/helper/d;->d(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-virtual {p1, p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgColor(I)V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-virtual {p1, p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgColor(I)V

    .line 111
    .line 112
    .line 113
    :cond_4
    return-void
.end method

.method static synthetic D(Lcom/transsion/subtitle/view/SubtitleOptionsView;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->C(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final E(IZ)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 4
    .line 5
    iget-object p2, p2, Ljt/i;->x:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 6
    .line 7
    int-to-float v0, p1

    .line 8
    invoke-virtual {p2, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setProgress(F)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->q:I

    .line 13
    .line 14
    :goto_0
    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string v0, "subtitle_options_bg_opacity_progress"

    .line 21
    .line 22
    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 26
    .line 27
    iget-object p2, p2, Ljt/i;->j:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 28
    .line 29
    int-to-long v0, p1

    .line 30
    invoke-virtual {p2, v0, v1}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lcom/transsion/subtitle/helper/d;->c(I)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    :goto_1
    if-eqz p1, :cond_6

    .line 48
    .line 49
    const/16 p2, 0xff

    .line 50
    .line 51
    int-to-float p2, p2

    .line 52
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    mul-float/2addr p2, v0

    .line 57
    float-to-int p2, p2

    .line 58
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgAlpha(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgAlpha(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 73
    .line 74
    const-class v1, Lcom/transsion/subtitle/view/SubtitleOptionsView;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    const/4 v4, 0x1

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    move v2, v4

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move v2, v3

    .line 89
    :goto_2
    iget-object v5, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 90
    .line 91
    if-eqz v5, :cond_5

    .line 92
    .line 93
    move v3, v4

    .line 94
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, " --> setBackgroundOpacityStyle() --> opacityPercent = "

    .line 103
    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, " --> toInt = "

    .line 111
    .line 112
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, " --> subtitleViewTop = "

    .line 119
    .line 120
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, " --> subtitleViewBottom = "

    .line 127
    .line 128
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    return-void
.end method

.method static synthetic F(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->E(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final G(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/helper/d;->f(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-nez p2, :cond_1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 19
    .line 20
    iget-object p2, p2, Ljt/i;->u:Landroid/widget/RadioGroup;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iput-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->k:Ljava/lang/String;

    .line 34
    .line 35
    :goto_1
    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v0, "subtitle_options_font_color"

    .line 42
    .line 43
    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 47
    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/helper/d;->d(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move-object v0, v1

    .line 64
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 75
    .line 76
    if-eqz p2, :cond_5

    .line 77
    .line 78
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/helper/d;->d(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    :cond_5
    const-string p2, "color_white"

    .line 101
    .line 102
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_6

    .line 107
    .line 108
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 109
    .line 110
    iget-object p1, p1, Ljt/i;->F:Lcom/noober/background/view/BLTextView;

    .line 111
    .line 112
    const/4 p2, 0x1

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 114
    .line 115
    .line 116
    :cond_6
    return-void
.end method

.method static synthetic H(Lcom/transsion/subtitle/view/SubtitleOptionsView;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->G(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final I(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 2
    .line 3
    iget-object v0, v0, Ljt/i;->k:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 4
    .line 5
    int-to-long v1, p1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 12
    .line 13
    iget-object p2, p2, Ljt/i;->v:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 14
    .line 15
    int-to-float v0, p1

    .line 16
    invoke-virtual {p2, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setProgress(F)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->l:I

    .line 21
    .line 22
    :goto_0
    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v0, "subtitle_options_font_size_progress"

    .line 29
    .line 30
    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lcom/transsion/subtitle/helper/d;->g(I)F

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p2, 0x0

    .line 47
    :goto_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-direct {p0, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->m(F)F

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 70
    .line 71
    .line 72
    :cond_3
    const/4 p2, 0x2

    .line 73
    if-eq p1, p2, :cond_4

    .line 74
    .line 75
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 76
    .line 77
    iget-object p1, p1, Ljt/i;->F:Lcom/noober/background/view/BLTextView;

    .line 78
    .line 79
    const/4 p2, 0x1

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method static synthetic J(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->I(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final K(IZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->b:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->f:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2, p1}, Lcom/transsion/subtitle/helper/d;->j(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->m:I

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string p3, "subtitle_options_position"

    .line 27
    .line 28
    invoke-virtual {p2, p3, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    :cond_1
    const/16 p2, 0xa

    .line 32
    .line 33
    if-eq p1, p2, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 36
    .line 37
    iget-object p1, p1, Ljt/i;->F:Lcom/noober/background/view/BLTextView;

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method static synthetic L(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x1

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->K(IZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic access$setBackgroundOpacityStyle(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->E(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setFontSize(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->I(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setPosition(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->K(IZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic getSubtitleViewContainer$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic h(Lcom/transsion/subtitle/view/SubtitleOptionsView;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->s(Lcom/transsion/subtitle/view/SubtitleOptionsView;Landroid/widget/RadioGroup;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/subtitle/view/SubtitleOptionsView;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->p(Lcom/transsion/subtitle/view/SubtitleOptionsView;Landroid/widget/RadioGroup;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/transsion/subtitle/view/SubtitleOptionsView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->t(Lcom/transsion/subtitle/view/SubtitleOptionsView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/transsion/subtitle/view/SubtitleOptionsView;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->q(Lcom/transsion/subtitle/view/SubtitleOptionsView;Lcom/tn/lib/view/SwitchButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/transsion/subtitle/view/SubtitleOptionsView;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->r(Lcom/transsion/subtitle/view/SubtitleOptionsView;Lcom/tn/lib/view/SwitchButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m(F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/transsion/baseui/util/b;->a(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->b:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 17
    .line 18
    sget-object v1, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    const/16 v0, 0x12

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v0, 0x1e

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->b:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 29
    .line 30
    sget-object v1, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 31
    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    const/16 v0, 0xc

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 v0, 0x14

    .line 38
    .line 39
    :goto_0
    int-to-float v0, v0

    .line 40
    mul-float/2addr v0, p1

    .line 41
    return v0
.end method

.method private final n()V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "subtitle_options_font_color"

    .line 8
    .line 9
    const-string v3, "color_white"

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v3, v1

    .line 19
    :goto_0
    iput-object v3, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->k:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {p0, v3, v1, v2, v4}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->H(Lcom/transsion/subtitle/view/SubtitleOptionsView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v5, "subtitle_options_font_size_progress"

    .line 32
    .line 33
    invoke-virtual {v3, v5, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iput v3, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->l:I

    .line 38
    .line 39
    invoke-static {p0, v3, v1, v2, v4}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->J(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v5, "subtitle_options_position"

    .line 47
    .line 48
    const/16 v6, 0xa

    .line 49
    .line 50
    invoke-virtual {v3, v5, v6}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iput v3, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->m:I

    .line 55
    .line 56
    iget-object v5, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 57
    .line 58
    iget-object v5, v5, Ljt/i;->w:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 59
    .line 60
    int-to-long v6, v3

    .line 61
    invoke-virtual {v5, v6, v7}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string v5, "subtitle_options_shadow_enabled"

    .line 69
    .line 70
    const/4 v6, 0x1

    .line 71
    invoke-virtual {v3, v5, v6}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    iput-boolean v3, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->n:Z

    .line 76
    .line 77
    invoke-static {p0, v3, v1, v2, v4}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->y(Lcom/transsion/subtitle/view/SubtitleOptionsView;ZZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v5, "subtitle_options_bg_enabled"

    .line 85
    .line 86
    invoke-virtual {v3, v5, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    iput-boolean v3, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->o:Z

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-string v5, "subtitle_options_bg_color"

    .line 97
    .line 98
    const-string v6, "color_black"

    .line 99
    .line 100
    invoke-virtual {v3, v5, v6}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-nez v3, :cond_1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move-object v6, v3

    .line 108
    :goto_1
    iput-object v6, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->p:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v3, "subtitle_options_bg_opacity_progress"

    .line 115
    .line 116
    const/4 v5, 0x3

    .line 117
    invoke-virtual {v0, v3, v5}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iput v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->q:I

    .line 122
    .line 123
    iget-boolean v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->o:Z

    .line 124
    .line 125
    invoke-static {p0, v0, v1, v2, v4}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->w(Lcom/transsion/subtitle/view/SubtitleOptionsView;ZZILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->u()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    sget-object v1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 133
    .line 134
    const-class v2, Lcom/transsion/subtitle/view/SubtitleOptionsView;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, " --> initData() --> isOptionsChanged = "

    .line 149
    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 164
    .line 165
    iget-object v1, v1, Ljt/i;->F:Lcom/noober/background/view/BLTextView;

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method private final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 2
    .line 3
    iget-object v0, v0, Ljt/i;->u:Landroid/widget/RadioGroup;

    .line 4
    .line 5
    new-instance v1, Lnt/a;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lnt/a;-><init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 14
    .line 15
    iget-object v0, v0, Ljt/i;->v:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 16
    .line 17
    new-instance v1, Lcom/transsion/subtitle/view/SubtitleOptionsView$b;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/transsion/subtitle/view/SubtitleOptionsView$b;-><init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->setOnSeekChangeListener(Lcom/warkiz/widget/e;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 26
    .line 27
    iget-object v0, v0, Ljt/i;->w:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 28
    .line 29
    new-instance v1, Lcom/transsion/subtitle/view/SubtitleOptionsView$c;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/transsion/subtitle/view/SubtitleOptionsView$c;-><init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SecondariesSeekBar;->setOnSeekBarChangeListener(Lcom/tn/lib/view/s;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 38
    .line 39
    iget-object v0, v0, Ljt/i;->z:Lcom/tn/lib/view/SwitchButton;

    .line 40
    .line 41
    new-instance v1, Lnt/b;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lnt/b;-><init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setOnCheckedChangeListener(Lcom/tn/lib/view/SwitchButton$d;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 50
    .line 51
    iget-object v0, v0, Ljt/i;->y:Lcom/tn/lib/view/SwitchButton;

    .line 52
    .line 53
    new-instance v1, Lnt/c;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lnt/c;-><init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setOnCheckedChangeListener(Lcom/tn/lib/view/SwitchButton$d;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 62
    .line 63
    iget-object v0, v0, Ljt/i;->t:Landroid/widget/RadioGroup;

    .line 64
    .line 65
    new-instance v1, Lnt/d;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lnt/d;-><init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 74
    .line 75
    iget-object v0, v0, Ljt/i;->x:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 76
    .line 77
    new-instance v1, Lcom/transsion/subtitle/view/SubtitleOptionsView$d;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/transsion/subtitle/view/SubtitleOptionsView$d;-><init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->setOnSeekChangeListener(Lcom/warkiz/widget/e;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 86
    .line 87
    iget-object v0, v0, Ljt/i;->F:Lcom/noober/background/view/BLTextView;

    .line 88
    .line 89
    new-instance v1, Lnt/e;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lnt/e;-><init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private static final p(Lcom/transsion/subtitle/view/SubtitleOptionsView;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/helper/d;->e(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->G(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final q(Lcom/transsion/subtitle/view/SubtitleOptionsView;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->x(ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final r(Lcom/transsion/subtitle/view/SubtitleOptionsView;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->v(ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final reset()V
    .locals 12

    .line 1
    const-string v0, "color_white"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->k:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p0, v0, v1, v2, v3}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->H(Lcom/transsion/subtitle/view/SubtitleOptionsView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput v2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->l:I

    .line 12
    .line 13
    invoke-static {p0, v2, v1, v2, v3}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->J(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0xa

    .line 17
    .line 18
    iput v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->m:I

    .line 19
    .line 20
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v4, "subtitle_options_position"

    .line 27
    .line 28
    iget v5, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->m:I

    .line 29
    .line 30
    invoke-virtual {v0, v4, v5}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    iget v7, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->m:I

    .line 34
    .line 35
    const/4 v10, 0x6

    .line 36
    const/4 v11, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    move-object v6, p0

    .line 40
    invoke-static/range {v6 .. v11}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->L(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 44
    .line 45
    iget-object v0, v0, Ljt/i;->w:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 46
    .line 47
    iget v4, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->m:I

    .line 48
    .line 49
    int-to-long v4, v4

    .line 50
    invoke-virtual {v0, v4, v5}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->n:Z

    .line 55
    .line 56
    invoke-static {p0, v0, v1, v2, v3}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->y(Lcom/transsion/subtitle/view/SubtitleOptionsView;ZZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->o:Z

    .line 60
    .line 61
    invoke-static {p0, v1, v1, v2, v3}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->w(Lcom/transsion/subtitle/view/SubtitleOptionsView;ZZILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "color_black"

    .line 65
    .line 66
    iput-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->p:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p0, v0, v1, v2, v3}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->D(Lcom/transsion/subtitle/view/SubtitleOptionsView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x3

    .line 72
    iput v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->q:I

    .line 73
    .line 74
    invoke-static {p0, v0, v1, v2, v3}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->F(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 78
    .line 79
    iget-object v0, v0, Ljt/i;->F:Lcom/noober/background/view/BLTextView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->B()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private static final s(Lcom/transsion/subtitle/view/SubtitleOptionsView;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/helper/d;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->C(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final t(Lcom/transsion/subtitle/view/SubtitleOptionsView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->reset()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final u()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->k:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "color_white"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->l:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->n:Z

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->o:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->p:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "color_black"

    .line 28
    .line 29
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->q:I

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    if-ne v0, v2, :cond_1

    .line 39
    .line 40
    iget v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->m:I

    .line 41
    .line 42
    const/16 v2, 0xa

    .line 43
    .line 44
    if-eq v0, v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 48
    :cond_1
    :goto_0
    return v1
.end method

.method private final v(ZZ)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 4
    .line 5
    iget-object p2, p2, Ljt/i;->y:Lcom/tn/lib/view/SwitchButton;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/tn/lib/view/SwitchButton;->setChecked(Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->o:Z

    .line 12
    .line 13
    :goto_0
    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v0, "subtitle_options_bg_enabled"

    .line 20
    .line 21
    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 25
    .line 26
    iget-object p2, p2, Ljt/i;->b:Landroidx/constraintlayout/widget/Group;

    .line 27
    .line 28
    const-string v0, "groupBackground"

    .line 29
    .line 30
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    move v1, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v1, 0x8

    .line 39
    .line 40
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_6

    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->openBg()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->openBg()V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 60
    .line 61
    iget-object p1, p1, Ljt/i;->F:Lcom/noober/background/view/BLTextView;

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    iget p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->i:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgdRadius(I)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    iget p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->i:I

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgdRadius(I)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->p:Ljava/lang/String;

    .line 86
    .line 87
    const/4 p2, 0x2

    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-static {p0, p1, v0, p2, v1}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->D(Lcom/transsion/subtitle/view/SubtitleOptionsView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->q:I

    .line 93
    .line 94
    invoke-static {p0, p1, v0, p2, v1}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->F(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 99
    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->closeBg()V

    .line 103
    .line 104
    .line 105
    :cond_7
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 106
    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->closeBg()V

    .line 110
    .line 111
    .line 112
    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic w(Lcom/transsion/subtitle/view/SubtitleOptionsView;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->v(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final x(ZZ)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 4
    .line 5
    iget-object p2, p2, Ljt/i;->z:Lcom/tn/lib/view/SwitchButton;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/tn/lib/view/SwitchButton;->setChecked(Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->n:Z

    .line 12
    .line 13
    :goto_0
    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v0, "subtitle_options_shadow_enabled"

    .line 20
    .line 21
    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 27
    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    .line 29
    .line 30
    const/high16 v1, 0x40400000    # 3.0f

    .line 31
    .line 32
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    sget v4, Lcom/tn/lib/widget/R$color;->black_90:I

    .line 41
    .line 42
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {p2, v2, v1, v0, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget v4, Lcom/tn/lib/widget/R$color;->black_90:I

    .line 58
    .line 59
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {p2, v2, v1, v0, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    const/4 v1, 0x0

    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    invoke-virtual {p2, v1, v1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object p2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 77
    .line 78
    if-eqz p2, :cond_4

    .line 79
    .line 80
    invoke-virtual {p2, v1, v1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    if-nez p1, :cond_5

    .line 84
    .line 85
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->a:Ljt/i;

    .line 86
    .line 87
    iget-object p1, p1, Ljt/i;->F:Lcom/noober/background/view/BLTextView;

    .line 88
    .line 89
    const/4 p2, 0x1

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 91
    .line 92
    .line 93
    :cond_5
    return-void
.end method

.method static synthetic y(Lcom/transsion/subtitle/view/SubtitleOptionsView;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->x(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final z()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "behavior"

    .line 7
    .line 8
    const-string v2, "enter"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->h:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "subtitle_options"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final addSubtitleOptions()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final initOptions(Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/transsion/subtitle/helper/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->b:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->c:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->f:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz p6, :cond_1

    .line 20
    .line 21
    iput-object p6, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->h:Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    iput-object p7, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->g:Lcom/transsion/subtitle/helper/d;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->n()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final removeSubtitleOptions()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->A()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->r:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Luf/c;->h(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Luf/c;->h(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->d:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView;->e:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
.end method
