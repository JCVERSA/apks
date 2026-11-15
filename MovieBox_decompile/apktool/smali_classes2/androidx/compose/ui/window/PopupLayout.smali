.class public final Landroidx/compose/ui/window/PopupLayout;
.super Landroidx/compose/ui/platform/AbstractComposeView;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/platform/s2;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/window/PopupLayout$b;,
        Landroidx/compose/ui/window/PopupLayout$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0010\u0015\n\u0002\u0008\u0014\u0008\u0001\u0018\u0000 \u00a8\u00012\u00020\u00012\u00020\u0002:\u0002\u00a9\u0001BQ\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\r\u0010\"\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\"\u0010\u0017J#\u0010&\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008*\u0010\u0017J\u000f\u0010+\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008+\u0010\u0017J\u001f\u00101\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020,H\u0010\u00a2\u0006\u0004\u0008/\u00100J7\u0010:\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u00104\u001a\u00020,2\u0006\u00105\u001a\u00020,2\u0006\u00106\u001a\u00020,2\u0006\u00107\u001a\u00020,H\u0010\u00a2\u0006\u0004\u00088\u00109J\u0017\u0010=\u001a\u0002022\u0006\u0010<\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008=\u0010>J5\u0010?\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008?\u0010@J\u0015\u0010C\u001a\u00020\u00042\u0006\u0010B\u001a\u00020A\u00a2\u0006\u0004\u0008C\u0010DJ\r\u0010E\u001a\u00020\u0004\u00a2\u0006\u0004\u0008E\u0010\u0017J\u000f\u0010G\u001a\u00020\u0004H\u0001\u00a2\u0006\u0004\u0008F\u0010\u0017J\r\u0010H\u001a\u00020\u0004\u00a2\u0006\u0004\u0008H\u0010\u0017J\r\u0010I\u001a\u00020\u0004\u00a2\u0006\u0004\u0008I\u0010\u0017J\u0019\u0010K\u001a\u0002022\u0008\u0010<\u001a\u0004\u0018\u00010JH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u0017\u0010M\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008M\u0010NR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010OR\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R \u0010a\u001a\u00020\u001f8\u0000X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008]\u0010^\u0012\u0004\u0008`\u0010\u0017\u001a\u0004\u0008_\u0010!R\"\u0010g\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010\u001eR5\u0010p\u001a\u0004\u0018\u00010h2\u0008\u0010i\u001a\u0004\u0018\u00010h8F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008j\u0010k\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010oR/\u0010B\u001a\u0004\u0018\u00010A2\u0008\u0010i\u001a\u0004\u0018\u00010A8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008q\u0010k\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010DR\u0018\u0010x\u001a\u0004\u0018\u00010u8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR\u001b\u0010}\u001a\u0002028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|R\u001c\u0010\u0081\u0001\u001a\u00020~8\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R\u0018\u0010\u0085\u0001\u001a\u00030\u0082\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0018\u0010\u0089\u0001\u001a\u00030\u0086\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R;\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0016\n\u0005\u0008\u008e\u0001\u0010k\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001\"\u0005\u0008&\u0010\u0091\u0001R(\u0010\u0095\u0001\u001a\u0002022\u0006\u0010i\u001a\u0002028\u0014@RX\u0094\u000e\u00a2\u0006\u000f\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0005\u0008\u0094\u0001\u0010|R\u0018\u0010\u0099\u0001\u001a\u00030\u0096\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u0017\u0010\u009c\u0001\u001a\u00020,8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u0017\u0010\u009e\u0001\u001a\u00020,8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009d\u0001\u0010\u009b\u0001R)\u0010\u009f\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001\"\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u0017\u0010\u00a7\u0001\u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u00aa\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/window/PopupLayout;",
        "Landroidx/compose/ui/platform/AbstractComposeView;",
        "Landroidx/compose/ui/platform/s2;",
        "Lkotlin/Function0;",
        "",
        "onDismissRequest",
        "Landroidx/compose/ui/window/j;",
        "properties",
        "",
        "testTag",
        "Landroid/view/View;",
        "composeView",
        "Lo0/e;",
        "density",
        "Landroidx/compose/ui/window/i;",
        "initialPositionProvider",
        "Ljava/util/UUID;",
        "popupId",
        "Landroidx/compose/ui/window/f;",
        "popupLayoutHelper",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroid/view/View;Lo0/e;Landroidx/compose/ui/window/i;Ljava/util/UUID;Landroidx/compose/ui/window/f;)V",
        "g",
        "()V",
        "h",
        "j",
        "(Landroidx/compose/ui/window/j;)V",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "layoutDirection",
        "i",
        "(Landroidx/compose/ui/unit/LayoutDirection;)V",
        "Landroid/view/WindowManager$LayoutParams;",
        "f",
        "()Landroid/view/WindowManager$LayoutParams;",
        "show",
        "Landroidx/compose/runtime/m;",
        "parent",
        "content",
        "setContent",
        "(Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)V",
        "Content",
        "(Landroidx/compose/runtime/i;I)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "internalOnMeasure$ui_release",
        "(II)V",
        "internalOnMeasure",
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "internalOnLayout$ui_release",
        "(ZIIII)V",
        "internalOnLayout",
        "Landroid/view/KeyEvent;",
        "event",
        "dispatchKeyEvent",
        "(Landroid/view/KeyEvent;)Z",
        "updateParameters",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V",
        "Landroidx/compose/ui/layout/l;",
        "parentLayoutCoordinates",
        "updateParentLayoutCoordinates",
        "(Landroidx/compose/ui/layout/l;)V",
        "pollForLocationOnScreenChange",
        "updateParentBounds$ui_release",
        "updateParentBounds",
        "updatePosition",
        "dismiss",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "setLayoutDirection",
        "(I)V",
        "Lkotlin/jvm/functions/Function0;",
        "Ljava/lang/String;",
        "getTestTag",
        "()Ljava/lang/String;",
        "setTestTag",
        "(Ljava/lang/String;)V",
        "k",
        "Landroid/view/View;",
        "l",
        "Landroidx/compose/ui/window/f;",
        "Landroid/view/WindowManager;",
        "m",
        "Landroid/view/WindowManager;",
        "windowManager",
        "n",
        "Landroid/view/WindowManager$LayoutParams;",
        "getParams$ui_release",
        "getParams$ui_release$annotations",
        "params",
        "o",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getParentLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "setParentLayoutDirection",
        "parentLayoutDirection",
        "Lo0/t;",
        "<set-?>",
        "p",
        "Landroidx/compose/runtime/i1;",
        "getPopupContentSize-bOM6tXw",
        "()Lo0/t;",
        "setPopupContentSize-fhxjrPA",
        "(Lo0/t;)V",
        "popupContentSize",
        "q",
        "getParentLayoutCoordinates",
        "()Landroidx/compose/ui/layout/l;",
        "setParentLayoutCoordinates",
        "Lo0/r;",
        "r",
        "Lo0/r;",
        "parentBounds",
        "s",
        "Landroidx/compose/runtime/a3;",
        "getCanCalculatePosition",
        "()Z",
        "canCalculatePosition",
        "Lo0/i;",
        "t",
        "F",
        "maxSupportedElevation",
        "Landroid/graphics/Rect;",
        "u",
        "Landroid/graphics/Rect;",
        "previousWindowVisibleFrame",
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;",
        "v",
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;",
        "snapshotStateObserver",
        "",
        "w",
        "Ljava/lang/Object;",
        "backCallback",
        "x",
        "getContent",
        "()Lkotlin/jvm/functions/Function2;",
        "(Lkotlin/jvm/functions/Function2;)V",
        "y",
        "Z",
        "getShouldCreateCompositionOnAttachedToWindow",
        "shouldCreateCompositionOnAttachedToWindow",
        "",
        "z",
        "[I",
        "locationOnScreen",
        "getDisplayWidth",
        "()I",
        "displayWidth",
        "getDisplayHeight",
        "displayHeight",
        "positionProvider",
        "Landroidx/compose/ui/window/i;",
        "getPositionProvider",
        "()Landroidx/compose/ui/window/i;",
        "setPositionProvider",
        "(Landroidx/compose/ui/window/i;)V",
        "getSubCompositionView",
        "()Landroidx/compose/ui/platform/AbstractComposeView;",
        "subCompositionView",
        "A",
        "b",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field private static final A:Landroidx/compose/ui/window/PopupLayout$b;

.field private static final B:Lkotlin/jvm/functions/Function1;


# instance fields
.field private i:Lkotlin/jvm/functions/Function0;

.field private j:Ljava/lang/String;

.field private final k:Landroid/view/View;

.field private final l:Landroidx/compose/ui/window/f;

.field private final m:Landroid/view/WindowManager;

.field private final n:Landroid/view/WindowManager$LayoutParams;

.field private o:Landroidx/compose/ui/unit/LayoutDirection;

.field private final p:Landroidx/compose/runtime/i1;

.field private final q:Landroidx/compose/runtime/i1;

.field private r:Lo0/r;

.field private final s:Landroidx/compose/runtime/a3;

.field private final t:F

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

.field private w:Ljava/lang/Object;

.field private final x:Landroidx/compose/runtime/i1;

.field private y:Z

.field private final z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/window/PopupLayout$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/window/PopupLayout$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/window/PopupLayout;->A:Landroidx/compose/ui/window/PopupLayout$b;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/ui/window/PopupLayout;->$stable:I

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/window/PopupLayout$Companion$onCommitAffectingPopupPosition$1;->INSTANCE:Landroidx/compose/ui/window/PopupLayout$Companion$onCommitAffectingPopupPosition$1;

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/window/PopupLayout;->B:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroid/view/View;Lo0/e;Landroidx/compose/ui/window/i;Ljava/util/UUID;Landroidx/compose/ui/window/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/j;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lo0/e;",
            "Landroidx/compose/ui/window/i;",
            "Ljava/util/UUID;",
            "Landroidx/compose/ui/window/f;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->i:Lkotlin/jvm/functions/Function0;

    .line 7
    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->j:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    .line 9
    iput-object p8, p0, Landroidx/compose/ui/window/PopupLayout;->l:Landroidx/compose/ui/window/f;

    .line 10
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->m:Landroid/view/WindowManager;

    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->f()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->n:Landroid/view/WindowManager$LayoutParams;

    .line 12
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->o:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 p1, 0x0

    const/4 p2, 0x2

    .line 13
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->p:Landroidx/compose/runtime/i1;

    .line 14
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->q:Landroidx/compose/runtime/i1;

    .line 15
    new-instance p3, Landroidx/compose/ui/window/PopupLayout$canCalculatePosition$2;

    invoke-direct {p3, p0}, Landroidx/compose/ui/window/PopupLayout$canCalculatePosition$2;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    invoke-static {p3}, Landroidx/compose/runtime/r2;->c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/a3;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->s:Landroidx/compose/runtime/a3;

    const/16 p3, 0x8

    int-to-float p3, p3

    .line 16
    invoke-static {p3}, Lo0/i;->g(F)F

    move-result p3

    .line 17
    iput p3, p0, Landroidx/compose/ui/window/PopupLayout;->t:F

    .line 18
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    iput-object p6, p0, Landroidx/compose/ui/window/PopupLayout;->u:Landroid/graphics/Rect;

    .line 19
    new-instance p6, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    new-instance p8, Landroidx/compose/ui/window/PopupLayout$snapshotStateObserver$1;

    invoke-direct {p8, p0}, Landroidx/compose/ui/window/PopupLayout$snapshotStateObserver$1;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    invoke-direct {p6, p8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p6, p0, Landroidx/compose/ui/window/PopupLayout;->v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    const p6, 0x1020002

    .line 20
    invoke-virtual {p0, p6}, Landroid/view/View;->setId(I)V

    .line 21
    invoke-static {p4}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/u;

    move-result-object p6

    invoke-static {p0, p6}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->b(Landroid/view/View;Landroidx/lifecycle/u;)V

    .line 22
    invoke-static {p4}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->a(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object p6

    invoke-static {p0, p6}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->b(Landroid/view/View;Landroidx/lifecycle/y0;)V

    .line 23
    invoke-static {p4}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->a(Landroid/view/View;)Landroidx/savedstate/e;

    move-result-object p4

    invoke-static {p0, p4}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->b(Landroid/view/View;Landroidx/savedstate/e;)V

    .line 24
    sget p4, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "Popup:"

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p4, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p4, 0x0

    .line 25
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 26
    invoke-interface {p5, p3}, Lo0/e;->D0(F)F

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setElevation(F)V

    .line 27
    new-instance p3, Landroidx/compose/ui/window/PopupLayout$a;

    invoke-direct {p3}, Landroidx/compose/ui/window/PopupLayout$a;-><init>()V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 28
    sget-object p3, Landroidx/compose/ui/window/ComposableSingletons$AndroidPopup_androidKt;->a:Landroidx/compose/ui/window/ComposableSingletons$AndroidPopup_androidKt;

    invoke-virtual {p3}, Landroidx/compose/ui/window/ComposableSingletons$AndroidPopup_androidKt;->a()Lkotlin/jvm/functions/Function2;

    move-result-object p3

    invoke-static {p3, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->x:Landroidx/compose/runtime/i1;

    .line 29
    new-array p1, p2, [I

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->z:[I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroid/view/View;Lo0/e;Landroidx/compose/ui/window/i;Ljava/util/UUID;Landroidx/compose/ui/window/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/compose/ui/window/g;

    invoke-direct {v0}, Landroidx/compose/ui/window/g;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroidx/compose/ui/window/h;

    invoke-direct {v0}, Landroidx/compose/ui/window/h;-><init>()V

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object/from16 v9, p8

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 4
    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/window/PopupLayout;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroid/view/View;Lo0/e;Landroidx/compose/ui/window/i;Ljava/util/UUID;Landroidx/compose/ui/window/f;)V

    return-void
.end method

.method public static final synthetic access$getParentLayoutCoordinates(Landroidx/compose/ui/window/PopupLayout;)Landroidx/compose/ui/layout/l;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/l;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x800033

    .line 7
    .line 8
    .line 9
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->d(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2, v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a(Landroidx/compose/ui/window/j;Z)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 23
    .line 24
    const/16 v1, 0x3ea

    .line 25
    .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 35
    .line 36
    const/4 v1, -0x2

    .line 37
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 38
    .line 39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 40
    .line 41
    const/4 v1, -0x3

    .line 42
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget v2, Landroidx/compose/ui/R$string;->default_popup_window_title:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method private final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method private final getContent()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/i;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->x:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getDisplayHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    mul-float/2addr v1, v0

    .line 31
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method private final getDisplayWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    mul-float/2addr v1, v0

    .line 31
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method public static synthetic getParams$ui_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getParentLayoutCoordinates()Landroidx/compose/ui/layout/l;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->q:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/layout/l;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->w:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/compose/ui/window/b;->e(Landroid/view/View;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->w:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method private final i(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/window/PopupLayout$c;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne p1, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 17
    .line 18
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final j(Landroidx/compose/ui/window/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    throw v0
.end method

.method private final setContent(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/i;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->x:Landroidx/compose/runtime/i1;

    .line 2
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setParentLayoutCoordinates(Landroidx/compose/ui/layout/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->q:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/i;I)V
    .locals 4

    .line 1
    const v0, -0x331e2520

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    and-int/lit8 v1, p2, 0x6

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-interface {p1, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    or-int/2addr v1, p2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, p2

    .line 25
    :goto_1
    and-int/lit8 v3, v1, 0x3

    .line 26
    .line 27
    if-ne v3, v2, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/compose/runtime/i;->h()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/i;->G()V

    .line 37
    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    const/4 v2, -0x1

    .line 47
    const-string v3, "androidx.compose.ui.window.PopupLayout.Content (AndroidPopup.android.kt:572)"

    .line 48
    .line 49
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->getContent()Lkotlin/jvm/functions/Function2;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    new-instance v0, Landroidx/compose/ui/window/PopupLayout$Content$4;

    .line 80
    .line 81
    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/window/PopupLayout$Content$4;-><init>(Landroidx/compose/ui/window/PopupLayout;I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->b(Landroid/view/View;Landroidx/lifecycle/u;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->m:Landroid/view/WindowManager;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method public final getCanCalculatePosition()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->s:Landroidx/compose/runtime/a3;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final getParams$ui_release()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->n:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->o:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPopupContentSize-bOM6tXw()Lo0/t;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->p:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lo0/t;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getPositionProvider()Landroidx/compose/ui/window/i;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/window/PopupLayout;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSubCompositionView()Landroidx/compose/ui/platform/AbstractComposeView;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getTestTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/r2;->b(Landroidx/compose/ui/platform/s2;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public internalOnLayout$ui_release(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/compose/ui/platform/AbstractComposeView;->internalOnLayout$ui_release(ZIIII)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public internalOnMeasure$ui_release(II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->s()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->g()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->t()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->j()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->h()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final pollForLocationOnScreenChange()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->z:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    aget v4, v0, v3

    .line 8
    .line 9
    iget-object v5, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->z:[I

    .line 15
    .line 16
    aget v1, v0, v1

    .line 17
    .line 18
    if-ne v2, v1, :cond_0

    .line 19
    .line 20
    aget v0, v0, v3

    .line 21
    .line 22
    if-eq v4, v0, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->updateParentBounds$ui_release()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final setContent(Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/m;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/i;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/m;)V

    .line 4
    invoke-direct {p0, p2}, Landroidx/compose/ui/window/PopupLayout;->setContent(Lkotlin/jvm/functions/Function2;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/compose/ui/window/PopupLayout;->y:Z

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setParentLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->o:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    return-void
.end method

.method public final setPopupContentSize-fhxjrPA(Lo0/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->p:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setPositionProvider(Landroidx/compose/ui/window/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setTestTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->m:Landroid/view/WindowManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->n:Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/j;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/j;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout;->i:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/compose/ui/window/PopupLayout;->j:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/compose/ui/window/PopupLayout;->j(Landroidx/compose/ui/window/j;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p4}, Landroidx/compose/ui/window/PopupLayout;->i(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updateParentBounds$ui_release()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayout;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->F()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->k()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v0}, Landroidx/compose/ui/layout/m;->f(Landroidx/compose/ui/layout/l;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-static {v3, v4}, Ly/g;->m(J)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v3, v4}, Ly/g;->n(J)F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v0, v3}, Lo0/q;->a(II)J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    invoke-static {v3, v4, v1, v2}, Lo0/s;->a(JJ)Lo0/r;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->r:Lo0/r;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    iput-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->r:Lo0/r;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->updatePosition()V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    return-void
.end method

.method public final updateParentLayoutCoordinates(Landroidx/compose/ui/layout/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/window/PopupLayout;->setParentLayoutCoordinates(Landroidx/compose/ui/layout/l;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->updateParentBounds$ui_release()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final updatePosition()V
    .locals 12

    .line 1
    iget-object v3, p0, Landroidx/compose/ui/window/PopupLayout;->r:Lo0/r;

    .line 2
    .line 3
    if-nez v3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->getPopupContentSize-bOM6tXw()Lo0/t;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lo0/t;->j()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->u:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/ui/window/PopupLayout;->l:Landroidx/compose/ui/window/f;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/ui/window/PopupLayout;->k:Landroid/view/View;

    .line 22
    .line 23
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/window/f;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->b(Landroid/graphics/Rect;)Lo0/r;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lo0/r;->j()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0}, Lo0/r;->e()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v1, v0}, Lo0/u;->a(II)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    new-instance v8, Lkotlin/jvm/internal/Ref$LongRef;

    .line 43
    .line 44
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lo0/p;->b:Lo0/p$a;

    .line 48
    .line 49
    invoke-virtual {v0}, Lo0/p$a;->a()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iput-wide v0, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 54
    .line 55
    iget-object v9, p0, Landroidx/compose/ui/window/PopupLayout;->v:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 56
    .line 57
    sget-object v10, Landroidx/compose/ui/window/PopupLayout;->B:Lkotlin/jvm/functions/Function1;

    .line 58
    .line 59
    new-instance v11, Landroidx/compose/ui/window/PopupLayout$updatePosition$1;

    .line 60
    .line 61
    move-object v0, v11

    .line 62
    move-object v1, v8

    .line 63
    move-object v2, p0

    .line 64
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/window/PopupLayout$updatePosition$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/window/PopupLayout;Lo0/r;JJ)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, p0, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->o(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->n:Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    iget-wide v1, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 73
    .line 74
    invoke-static {v1, v2}, Lo0/p;->h(J)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/compose/ui/window/PopupLayout;->n:Landroid/view/WindowManager$LayoutParams;

    .line 81
    .line 82
    iget-wide v1, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 83
    .line 84
    invoke-static {v1, v2}, Lo0/p;->i(J)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    throw v0
.end method
