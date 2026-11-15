.class public final Landroidx/compose/ui/platform/ViewLayer;
.super Landroid/view/View;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/w0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/ViewLayer$b;,
        Landroidx/compose/ui/platform/ViewLayer$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u008b\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0015TB_\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00128\u0010\u0010\u001a4\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u0008\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001a\u0010#\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001fH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"J\u001a\u0010(\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020$H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\'J\u001a\u0010+\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020)H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010\'J!\u0010,\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010/\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020.H\u0014\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u00081\u0010\u0016J7\u00107\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\u001c2\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u0002032\u0006\u00106\u001a\u0002032\u0006\u0010\u0015\u001a\u000203H\u0014\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u00089\u0010\u0016J\u000f\u0010:\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008:\u0010\u0016J\u000f\u0010;\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008;\u0010\u0016J\"\u0010@\u001a\u00020\u001f2\u0006\u0010<\u001a\u00020\u001f2\u0006\u0010=\u001a\u00020\u001cH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010?J\u001f\u0010C\u001a\u00020\u000f2\u0006\u0010B\u001a\u00020A2\u0006\u0010=\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008C\u0010DJW\u0010E\u001a\u00020\u000f28\u0010\u0010\u001a4\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u00082\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011H\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u001a\u0010K\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020GH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u0010JJ\u001a\u0010M\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020GH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008L\u0010JR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010N\u001a\u0004\u0008O\u0010PR\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010Q\u001a\u0004\u0008R\u0010SRJ\u0010\u0010\u001a6\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0014\u0010[\u001a\u00020X8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0016\u0010^\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0018\u0010b\u001a\u0004\u0018\u00010_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR*\u0010e\u001a\u00020\u001c2\u0006\u0010c\u001a\u00020\u001c8\u0006@BX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010]\u001a\u0004\u0008e\u0010\u001e\"\u0004\u0008f\u0010gR\u0016\u0010i\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010]R\u0014\u0010m\u001a\u00020j8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u001a\u0010q\u001a\u0008\u0012\u0004\u0012\u00020\u00010n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u001c\u0010t\u001a\u00020r8\u0002@\u0002X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\n\u0004\u00084\u0010sR\u0016\u0010v\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010]R\u001a\u0010{\u001a\u00020w8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008x\u0010s\u001a\u0004\u0008y\u0010zR\u0016\u0010~\u001a\u0002038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u0019\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u007f8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0016\u0010\u0084\u0001\u001a\u00020w8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0083\u0001\u0010zR+\u0010\u008a\u0001\u001a\u00030\u0085\u00012\u0007\u0010c\u001a\u00030\u0085\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001\"\u0006\u0008\u0088\u0001\u0010\u0089\u0001\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u008c\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/platform/ViewLayer;",
        "Landroid/view/View;",
        "Landroidx/compose/ui/node/w0;",
        "",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "ownerView",
        "Landroidx/compose/ui/platform/DrawChildContainer;",
        "container",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/graphics/m1;",
        "Lkotlin/ParameterName;",
        "name",
        "canvas",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "parentLayer",
        "",
        "drawBlock",
        "Lkotlin/Function0;",
        "invalidateParentLayer",
        "<init>",
        "(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/DrawChildContainer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V",
        "b",
        "()V",
        "a",
        "Landroidx/compose/ui/graphics/x4;",
        "scope",
        "updateLayerProperties",
        "(Landroidx/compose/ui/graphics/x4;)V",
        "",
        "hasOverlappingRendering",
        "()Z",
        "Ly/g;",
        "position",
        "isInLayer-k-4lQ0M",
        "(J)Z",
        "isInLayer",
        "Lo0/t;",
        "size",
        "resize-ozmzZPI",
        "(J)V",
        "resize",
        "Lo0/p;",
        "move--gyyYBs",
        "move",
        "drawLayer",
        "(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V",
        "Landroid/graphics/Canvas;",
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "invalidate",
        "changed",
        "",
        "l",
        "t",
        "r",
        "onLayout",
        "(ZIIII)V",
        "destroy",
        "updateDisplayList",
        "forceLayout",
        "point",
        "inverse",
        "mapOffset-8S9VItk",
        "(JZ)J",
        "mapOffset",
        "Ly/e;",
        "rect",
        "mapBounds",
        "(Ly/e;Z)V",
        "reuseLayer",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V",
        "Landroidx/compose/ui/graphics/i4;",
        "matrix",
        "transform-58bKbWc",
        "([F)V",
        "transform",
        "inverseTransform-58bKbWc",
        "inverseTransform",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "getOwnerView",
        "()Landroidx/compose/ui/platform/AndroidComposeView;",
        "Landroidx/compose/ui/platform/DrawChildContainer;",
        "getContainer",
        "()Landroidx/compose/ui/platform/DrawChildContainer;",
        "c",
        "Lkotlin/jvm/functions/Function2;",
        "d",
        "Lkotlin/jvm/functions/Function0;",
        "Landroidx/compose/ui/platform/i1;",
        "e",
        "Landroidx/compose/ui/platform/i1;",
        "outlineResolver",
        "f",
        "Z",
        "clipToBounds",
        "Landroid/graphics/Rect;",
        "g",
        "Landroid/graphics/Rect;",
        "clipBoundsCache",
        "value",
        "h",
        "isInvalidated",
        "setInvalidated",
        "(Z)V",
        "i",
        "drawnWithZ",
        "Landroidx/compose/ui/graphics/n1;",
        "j",
        "Landroidx/compose/ui/graphics/n1;",
        "canvasHolder",
        "Landroidx/compose/ui/platform/d1;",
        "k",
        "Landroidx/compose/ui/platform/d1;",
        "matrixCache",
        "Landroidx/compose/ui/graphics/e5;",
        "J",
        "mTransformOrigin",
        "m",
        "mHasOverlappingRendering",
        "",
        "n",
        "getLayerId",
        "()J",
        "layerId",
        "o",
        "I",
        "mutatedFields",
        "Landroidx/compose/ui/graphics/Path;",
        "getManualClipPath",
        "()Landroidx/compose/ui/graphics/Path;",
        "manualClipPath",
        "getOwnerViewId",
        "ownerViewId",
        "",
        "getCameraDistancePx",
        "()F",
        "setCameraDistancePx",
        "(F)V",
        "cameraDistancePx",
        "Companion",
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

.field public static final Companion:Landroidx/compose/ui/platform/ViewLayer$b;

.field private static final p:Lkotlin/jvm/functions/Function2;

.field private static final q:Landroid/view/ViewOutlineProvider;

.field private static r:Ljava/lang/reflect/Method;

.field private static s:Ljava/lang/reflect/Field;

.field private static t:Z

.field private static u:Z


# instance fields
.field private final a:Landroidx/compose/ui/platform/AndroidComposeView;

.field private final b:Landroidx/compose/ui/platform/DrawChildContainer;

.field private c:Lkotlin/jvm/functions/Function2;

.field private d:Lkotlin/jvm/functions/Function0;

.field private final e:Landroidx/compose/ui/platform/i1;

.field private f:Z

.field private g:Landroid/graphics/Rect;

.field private h:Z

.field private i:Z

.field private final j:Landroidx/compose/ui/graphics/n1;

.field private final k:Landroidx/compose/ui/platform/d1;

.field private l:J

.field private m:Z

.field private final n:J

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/ViewLayer$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->Companion:Landroidx/compose/ui/platform/ViewLayer$b;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/ui/platform/ViewLayer;->$stable:I

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->p:Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$a;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewLayer$a;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->q:Landroid/view/ViewOutlineProvider;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/DrawChildContainer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AndroidComposeView;",
            "Landroidx/compose/ui/platform/DrawChildContainer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/graphics/m1;",
            "-",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 11
    .line 12
    iput-object p3, p0, Landroidx/compose/ui/platform/ViewLayer;->c:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p4, p0, Landroidx/compose/ui/platform/ViewLayer;->d:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    new-instance p1, Landroidx/compose/ui/platform/i1;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/compose/ui/platform/i1;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Landroidx/compose/ui/platform/i1;

    .line 22
    .line 23
    new-instance p1, Landroidx/compose/ui/graphics/n1;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/compose/ui/graphics/n1;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->j:Landroidx/compose/ui/graphics/n1;

    .line 29
    .line 30
    new-instance p1, Landroidx/compose/ui/platform/d1;

    .line 31
    .line 32
    sget-object p3, Landroidx/compose/ui/platform/ViewLayer;->p:Lkotlin/jvm/functions/Function2;

    .line 33
    .line 34
    invoke-direct {p1, p3}, Landroidx/compose/ui/platform/d1;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 38
    .line 39
    sget-object p1, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/e5$a;->a()J

    .line 42
    .line 43
    .line 44
    move-result-wide p3

    .line 45
    iput-wide p3, p0, Landroidx/compose/ui/platform/ViewLayer;->l:J

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Z

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    int-to-long p1, p1

    .line 62
    iput-wide p1, p0, Landroidx/compose/ui/platform/ViewLayer;->n:J

    .line 63
    .line 64
    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->g:Landroid/graphics/Rect;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->g:Landroid/graphics/Rect;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->g:Landroid/graphics/Rect;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static final synthetic access$getHasRetrievedMethod$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/compose/ui/platform/ViewLayer;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getOutlineProvider$cp()Landroid/view/ViewOutlineProvider;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->q:Landroid/view/ViewOutlineProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getOutlineResolver$p(Landroidx/compose/ui/platform/ViewLayer;)Landroidx/compose/ui/platform/i1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Landroidx/compose/ui/platform/i1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRecreateDisplayList$cp()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->s:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getShouldUseDispatchDraw$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/compose/ui/platform/ViewLayer;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getUpdateDisplayListIfDirtyMethod$cp()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->r:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setHasRetrievedMethod$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/compose/ui/platform/ViewLayer;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setRecreateDisplayList$cp(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/platform/ViewLayer;->s:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setShouldUseDispatchDraw$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/compose/ui/platform/ViewLayer;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setUpdateDisplayListIfDirtyMethod$cp(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/platform/ViewLayer;->r:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-void
.end method

.method private final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Landroidx/compose/ui/platform/i1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/platform/i1;->b()Landroid/graphics/Outline;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->q:Landroid/view/ViewOutlineProvider;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final getManualClipPath()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Landroidx/compose/ui/platform/i1;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/platform/i1;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Landroidx/compose/ui/platform/i1;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/platform/i1;->d()Landroidx/compose/ui/graphics/Path;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    :goto_1
    return-object v0
.end method

.method private final setInvalidated(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->h:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/compose/ui/platform/ViewLayer;->h:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/w0;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->requestClearInvalidObservations()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->c:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->d:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/w0;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->j:Landroidx/compose/ui/graphics/n1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/g0;->v()Landroid/graphics/Canvas;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p1}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move p1, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroidx/compose/ui/graphics/m1;->n()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Landroidx/compose/ui/platform/i1;

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroidx/compose/ui/platform/i1;->a(Landroidx/compose/ui/graphics/m1;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    :goto_1
    iget-object v3, p0, Landroidx/compose/ui/platform/ViewLayer;->c:Lkotlin/jvm/functions/Function2;

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-interface {v3, v2, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_2
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-interface {v2}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v4}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public drawLayer(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    cmpl-float p2, p2, v0

    .line 7
    .line 8
    if-lez p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    iput-boolean p2, p0, Landroidx/compose/ui/platform/ViewLayer;->i:Z

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->k()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-virtual {p2, p1, p0, v0, v1}, Landroidx/compose/ui/platform/DrawChildContainer;->drawChild$ui_release(Landroidx/compose/ui/graphics/m1;Landroid/view/View;J)V

    .line 27
    .line 28
    .line 29
    iget-boolean p2, p0, Landroidx/compose/ui/platform/ViewLayer;->i:Z

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->o()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public forceLayout()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getCameraDistancePx()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getCameraDistance()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    div-float/2addr v0, v1

    .line 17
    return v0
.end method

.method public final getContainer()Landroidx/compose/ui/platform/DrawChildContainer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayerId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/ViewLayer;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getOwnerView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOwnerViewId()J
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/platform/ViewLayer$c;->a(Landroid/view/View;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    :goto_0
    return-wide v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public inverseTransform-58bKbWc([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/d1;->a(Ljava/lang/Object;)[F

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/i4;->n([F[F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public isInLayer-k-4lQ0M(J)Z
    .locals 4

    .line 1
    invoke-static {p1, p2}, Ly/g;->m(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Ly/g;->n(J)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-boolean v2, p0, Landroidx/compose/ui/platform/ViewLayer;->f:Z

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    cmpg-float p2, p1, v0

    .line 16
    .line 17
    if-gtz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    int-to-float p2, p2

    .line 24
    cmpg-float p2, v0, p2

    .line 25
    .line 26
    if-gez p2, :cond_0

    .line 27
    .line 28
    cmpg-float p1, p1, v1

    .line 29
    .line 30
    if-gtz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-float p1, p1

    .line 37
    cmpg-float p1, v1, p1

    .line 38
    .line 39
    if-gez p1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v3, 0x0

    .line 43
    :goto_0
    return v3

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Landroidx/compose/ui/platform/i1;

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/i1;->f(J)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_2
    return v3
.end method

.method public final isInvalidated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public mapBounds(Ly/e;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 4
    .line 5
    invoke-virtual {p2, p0}, Landroidx/compose/ui/platform/d1;->a(Ljava/lang/Object;)[F

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/i4;->g([FLy/e;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2, p2, p2, p2}, Ly/e;->g(FFFF)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 21
    .line 22
    invoke-virtual {p2, p0}, Landroidx/compose/ui/platform/d1;->b(Ljava/lang/Object;)[F

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/i4;->g([FLy/e;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public mapOffset-8S9VItk(JZ)J
    .locals 0

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    iget-object p3, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 4
    .line 5
    invoke-virtual {p3, p0}, Landroidx/compose/ui/platform/d1;->a(Ljava/lang/Object;)[F

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/i4;->f([FJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Ly/g;->b:Ly/g$a;

    .line 17
    .line 18
    invoke-virtual {p1}, Ly/g$a;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p3, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 24
    .line 25
    invoke-virtual {p3, p0}, Landroidx/compose/ui/platform/d1;->b(Ljava/lang/Object;)[F

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/i4;->f([FJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    :goto_0
    return-wide p1
.end method

.method public move--gyyYBs(J)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lo0/p;->h(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/platform/d1;->c()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p1, p2}, Lo0/p;->i(J)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eq p1, p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    sub-int/2addr p1, p2

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/ui/platform/d1;->c()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public resize-ozmzZPI(J)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lo0/t;->g(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-ne v0, p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eq p1, p2, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->l:J

    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/e5;->d(J)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    int-to-float v1, v0

    .line 28
    mul-float/2addr p2, v1

    .line 29
    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotX(F)V

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->l:J

    .line 33
    .line 34
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/e5;->e(J)F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    int-to-float v1, p1

    .line 39
    mul-float/2addr p2, v1

    .line 40
    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->b()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    add-int/2addr v2, v0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v0, p1

    .line 64
    invoke-virtual {p0, p2, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->a()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/compose/ui/platform/d1;->c()V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public reuseLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/graphics/m1;",
            "-",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->b:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->f:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->i:Z

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/e5$a;->a()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Landroidx/compose/ui/platform/ViewLayer;->l:J

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->c:Lkotlin/jvm/functions/Function2;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->d:Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    return-void
.end method

.method public final setCameraDistancePx(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    mul-float/2addr p1, v0

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public transform-58bKbWc([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/d1;->b(Ljava/lang/Object;)[F

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/i4;->n([F[F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public updateDisplayList()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Landroidx/compose/ui/platform/ViewLayer;->u:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->Companion:Landroidx/compose/ui/platform/ViewLayer$b;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/ViewLayer$b;->d(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public updateLayerProperties(Landroidx/compose/ui/graphics/x4;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/compose/ui/platform/ViewLayer;->o:I

    .line 6
    .line 7
    or-int/2addr v0, v1

    .line 8
    and-int/lit16 v1, v0, 0x1000

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->b0()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->l:J

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/e5;->d(J)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    mul-float/2addr v1, v2

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->l:J

    .line 32
    .line 33
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/e5;->e(J)F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    mul-float/2addr v1, v2

    .line 43
    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 44
    .line 45
    .line 46
    :cond_0
    and-int/lit8 v1, v0, 0x1

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->t()F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 55
    .line 56
    .line 57
    :cond_1
    and-int/lit8 v1, v0, 0x2

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->A()F

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 66
    .line 67
    .line 68
    :cond_2
    and-int/lit8 v1, v0, 0x4

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->n()F

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 77
    .line 78
    .line 79
    :cond_3
    and-int/lit8 v1, v0, 0x8

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->x()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 88
    .line 89
    .line 90
    :cond_4
    and-int/lit8 v1, v0, 0x10

    .line 91
    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->w()F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 99
    .line 100
    .line 101
    :cond_5
    and-int/lit8 v1, v0, 0x20

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->L()F

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {p0, v1}, Landroid/view/View;->setElevation(F)V

    .line 110
    .line 111
    .line 112
    :cond_6
    and-int/lit16 v1, v0, 0x400

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->o()F

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    .line 121
    .line 122
    .line 123
    :cond_7
    and-int/lit16 v1, v0, 0x100

    .line 124
    .line 125
    if-eqz v1, :cond_8

    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->y()F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 132
    .line 133
    .line 134
    :cond_8
    and-int/lit16 v1, v0, 0x200

    .line 135
    .line 136
    if-eqz v1, :cond_9

    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->m()F

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 143
    .line 144
    .line 145
    :cond_9
    and-int/lit16 v1, v0, 0x800

    .line 146
    .line 147
    if-eqz v1, :cond_a

    .line 148
    .line 149
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->q()F

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/ViewLayer;->setCameraDistancePx(F)V

    .line 154
    .line 155
    .line 156
    :cond_a
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const/4 v2, 0x0

    .line 161
    const/4 v3, 0x1

    .line 162
    if-eqz v1, :cond_b

    .line 163
    .line 164
    move v1, v3

    .line 165
    goto :goto_0

    .line 166
    :cond_b
    move v1, v2

    .line 167
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->z()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_c

    .line 172
    .line 173
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->M()Landroidx/compose/ui/graphics/a5;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-static {}, Landroidx/compose/ui/graphics/v4;->a()Landroidx/compose/ui/graphics/a5;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    if-eq v4, v5, :cond_c

    .line 182
    .line 183
    move v9, v3

    .line 184
    goto :goto_1

    .line 185
    :cond_c
    move v9, v2

    .line 186
    :goto_1
    and-int/lit16 v4, v0, 0x6000

    .line 187
    .line 188
    if-eqz v4, :cond_e

    .line 189
    .line 190
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->z()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_d

    .line 195
    .line 196
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->M()Landroidx/compose/ui/graphics/a5;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-static {}, Landroidx/compose/ui/graphics/v4;->a()Landroidx/compose/ui/graphics/a5;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    if-ne v4, v5, :cond_d

    .line 205
    .line 206
    move v4, v3

    .line 207
    goto :goto_2

    .line 208
    :cond_d
    move v4, v2

    .line 209
    :goto_2
    iput-boolean v4, p0, Landroidx/compose/ui/platform/ViewLayer;->f:Z

    .line 210
    .line 211
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->a()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v9}, Landroid/view/View;->setClipToOutline(Z)V

    .line 215
    .line 216
    .line 217
    :cond_e
    iget-object v6, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Landroidx/compose/ui/platform/i1;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->G()Landroidx/compose/ui/graphics/k4;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->n()F

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->L()F

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->i()J

    .line 232
    .line 233
    .line 234
    move-result-wide v11

    .line 235
    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/platform/i1;->h(Landroidx/compose/ui/graphics/k4;FZFJ)Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    iget-object v5, p0, Landroidx/compose/ui/platform/ViewLayer;->e:Landroidx/compose/ui/platform/i1;

    .line 240
    .line 241
    invoke-virtual {v5}, Landroidx/compose/ui/platform/i1;->c()Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_f

    .line 246
    .line 247
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->b()V

    .line 248
    .line 249
    .line 250
    :cond_f
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    if-eqz v5, :cond_10

    .line 255
    .line 256
    move v5, v3

    .line 257
    goto :goto_3

    .line 258
    :cond_10
    move v5, v2

    .line 259
    :goto_3
    if-ne v1, v5, :cond_11

    .line 260
    .line 261
    if-eqz v5, :cond_12

    .line 262
    .line 263
    if-eqz v4, :cond_12

    .line 264
    .line 265
    :cond_11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/ViewLayer;->invalidate()V

    .line 266
    .line 267
    .line 268
    :cond_12
    iget-boolean v1, p0, Landroidx/compose/ui/platform/ViewLayer;->i:Z

    .line 269
    .line 270
    if-nez v1, :cond_13

    .line 271
    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    const/4 v4, 0x0

    .line 277
    cmpl-float v1, v1, v4

    .line 278
    .line 279
    if-lez v1, :cond_13

    .line 280
    .line 281
    iget-object v1, p0, Landroidx/compose/ui/platform/ViewLayer;->d:Lkotlin/jvm/functions/Function0;

    .line 282
    .line 283
    if-eqz v1, :cond_13

    .line 284
    .line 285
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    :cond_13
    and-int/lit16 v1, v0, 0x1f1b

    .line 289
    .line 290
    if-eqz v1, :cond_14

    .line 291
    .line 292
    iget-object v1, p0, Landroidx/compose/ui/platform/ViewLayer;->k:Landroidx/compose/ui/platform/d1;

    .line 293
    .line 294
    invoke-virtual {v1}, Landroidx/compose/ui/platform/d1;->c()V

    .line 295
    .line 296
    .line 297
    :cond_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 298
    .line 299
    const/16 v4, 0x1c

    .line 300
    .line 301
    if-lt v1, v4, :cond_16

    .line 302
    .line 303
    and-int/lit8 v4, v0, 0x40

    .line 304
    .line 305
    if-eqz v4, :cond_15

    .line 306
    .line 307
    sget-object v4, Landroidx/compose/ui/platform/p2;->a:Landroidx/compose/ui/platform/p2;

    .line 308
    .line 309
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->v()J

    .line 310
    .line 311
    .line 312
    move-result-wide v5

    .line 313
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/w1;->j(J)I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    invoke-virtual {v4, p0, v5}, Landroidx/compose/ui/platform/p2;->a(Landroid/view/View;I)V

    .line 318
    .line 319
    .line 320
    :cond_15
    and-int/lit16 v4, v0, 0x80

    .line 321
    .line 322
    if-eqz v4, :cond_16

    .line 323
    .line 324
    sget-object v4, Landroidx/compose/ui/platform/p2;->a:Landroidx/compose/ui/platform/p2;

    .line 325
    .line 326
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->O()J

    .line 327
    .line 328
    .line 329
    move-result-wide v5

    .line 330
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/w1;->j(J)I

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    invoke-virtual {v4, p0, v5}, Landroidx/compose/ui/platform/p2;->b(Landroid/view/View;I)V

    .line 335
    .line 336
    .line 337
    :cond_16
    const/16 v4, 0x1f

    .line 338
    .line 339
    const/4 v5, 0x0

    .line 340
    if-lt v1, v4, :cond_17

    .line 341
    .line 342
    const/high16 v1, 0x20000

    .line 343
    .line 344
    and-int/2addr v1, v0

    .line 345
    if-eqz v1, :cond_17

    .line 346
    .line 347
    sget-object v1, Landroidx/compose/ui/platform/q2;->a:Landroidx/compose/ui/platform/q2;

    .line 348
    .line 349
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->I()Landroidx/compose/ui/graphics/w4;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, p0, v5}, Landroidx/compose/ui/platform/q2;->a(Landroid/view/View;Landroidx/compose/ui/graphics/w4;)V

    .line 353
    .line 354
    .line 355
    :cond_17
    const v1, 0x8000

    .line 356
    .line 357
    .line 358
    and-int/2addr v0, v1

    .line 359
    if-eqz v0, :cond_1a

    .line 360
    .line 361
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->B()I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    sget-object v1, Landroidx/compose/ui/graphics/w3;->a:Landroidx/compose/ui/graphics/w3$a;

    .line 366
    .line 367
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/w3$a;->c()I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-eqz v4, :cond_18

    .line 376
    .line 377
    const/4 v0, 0x2

    .line 378
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 379
    .line 380
    .line 381
    :goto_4
    move v2, v3

    .line 382
    goto :goto_5

    .line 383
    :cond_18
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/w3$a;->b()I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/w3;->e(II)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_19

    .line 392
    .line 393
    invoke-virtual {p0, v2, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 394
    .line 395
    .line 396
    goto :goto_5

    .line 397
    :cond_19
    invoke-virtual {p0, v2, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 398
    .line 399
    .line 400
    goto :goto_4

    .line 401
    :goto_5
    iput-boolean v2, p0, Landroidx/compose/ui/platform/ViewLayer;->m:Z

    .line 402
    .line 403
    :cond_1a
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->F()I

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    iput p1, p0, Landroidx/compose/ui/platform/ViewLayer;->o:I

    .line 408
    .line 409
    return-void
.end method
