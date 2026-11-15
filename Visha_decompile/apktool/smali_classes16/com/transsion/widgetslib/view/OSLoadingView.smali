.class public final Lcom/transsion/widgetslib/view/OSLoadingView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/OSLoadingView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008*\u0018\u0000 |2\u00020\u0001:\u0001}B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\rJ\u000f\u0010\u0012\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\rJ\u000f\u0010\u0014\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\rJ\u001f\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J7\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020!H\u0014\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u0015\u0010*\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020(\u00a2\u0006\u0004\u0008*\u0010+J\r\u0010,\u001a\u00020\u000b\u00a2\u0006\u0004\u0008,\u0010\rJ\r\u0010-\u001a\u00020\u0019\u00a2\u0006\u0004\u0008-\u0010.J\r\u0010/\u001a\u00020\u000b\u00a2\u0006\u0004\u0008/\u0010\rJ\u0015\u00101\u001a\u00020\u000b2\u0006\u00100\u001a\u00020\u0006\u00a2\u0006\u0004\u00081\u0010\'J\u000f\u00102\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u00082\u0010\rJ\u001f\u00105\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u00085\u00106R\u0016\u00109\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u001b\u0010?\u001a\u00020:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u0016\u0010A\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010@R\u0016\u0010B\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u00108R\u001b\u0010G\u001a\u00020C8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010<\u001a\u0004\u0008E\u0010FR\u001b\u0010J\u001a\u00020C8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008H\u0010<\u001a\u0004\u0008I\u0010FR\u001b\u0010M\u001a\u00020C8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008K\u0010<\u001a\u0004\u0008L\u0010FR\u001b\u0010O\u001a\u00020C8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010<\u001a\u0004\u0008N\u0010FR\u0016\u0010P\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u00108R\u0016\u0010Q\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u00108R\u0016\u0010S\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010@R#\u0010Y\u001a\n U*\u0004\u0018\u00010T0T8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010<\u001a\u0004\u0008W\u0010XR#\u0010\\\u001a\n U*\u0004\u0018\u00010T0T8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Z\u0010<\u001a\u0004\u0008[\u0010XR#\u0010_\u001a\n U*\u0004\u0018\u00010T0T8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008]\u0010<\u001a\u0004\u0008^\u0010XR\u0016\u0010a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010@R\u0016\u0010c\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u00108R\u0016\u0010e\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u00108R\u0016\u0010g\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u00108R\u0016\u0010i\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u00108R\u0014\u0010k\u001a\u00020(8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008j\u00108R\u0016\u0010m\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u00108R\u0016\u0010o\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u00108R\u0016\u0010q\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u00108R\"\u0010w\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010.\"\u0004\u0008u\u0010vR\u0016\u0010y\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010sR\u0016\u0010{\u001a\u00020\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010@\u00a8\u0006~"
    }
    d2 = {
        "Lcom/transsion/widgetslib/view/OSLoadingView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "Lzfb;",
        "j",
        "()V",
        "",
        "getDistance",
        "()D",
        "d",
        "e",
        "i",
        "k",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "runningType",
        "setRunningType",
        "(I)V",
        "",
        "percent",
        "setPullPercent",
        "(F)V",
        "release",
        "isRunning",
        "()Z",
        "startLoadingAnimation",
        "dotColorRes",
        "setDotColor",
        "onDetachedFromWindow",
        "changedView",
        "visibility",
        "onVisibilityChanged",
        "(Landroid/view/View;I)V",
        "b",
        "F",
        "mOutCircleRadiusStatic",
        "Landroid/graphics/Paint;",
        "c",
        "Lyi5;",
        "getMPaint",
        "()Landroid/graphics/Paint;",
        "mPaint",
        "I",
        "mMeasuredSize",
        "mCircleRadius",
        "Landroid/graphics/Path;",
        "f",
        "getMPath",
        "()Landroid/graphics/Path;",
        "mPath",
        "g",
        "getMLeftCirclePath",
        "mLeftCirclePath",
        "h",
        "getMRightCirclePath",
        "mRightCirclePath",
        "getMUnionPath",
        "mUnionPath",
        "mCenterX",
        "mCenterY",
        "l",
        "mRunningType",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "m",
        "getMAnimAppeal",
        "()Landroid/animation/ValueAnimator;",
        "mAnimAppeal",
        "n",
        "getMAnimCircle",
        "mAnimCircle",
        "o",
        "getMAnimRepel",
        "mAnimRepel",
        "p",
        "mType",
        "q",
        "mCenterLeftX",
        "r",
        "mCenterLeftY",
        "s",
        "mCenterRightX",
        "t",
        "mCenterRightY",
        "u",
        "mCubicRatio",
        "v",
        "mOuterCircleRadius",
        "w",
        "mCurrentAngle",
        "x",
        "mPullPercent",
        "y",
        "Z",
        "getMVisibilityChangedReStartAnim",
        "setMVisibilityChangedReStartAnim",
        "(Z)V",
        "mVisibilityChangedReStartAnim",
        "z",
        "mIsSecondHome",
        "A",
        "mDotColor",
        "Companion",
        "a",
        "widgetsLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetslib/view/OSLoadingView$a;

.field public static final RUNNING_TYPE_CIRCLE:I = 0x0

.field public static final RUNNING_TYPE_PULL:I = 0x1


# instance fields
.field public A:I

.field public b:F

.field public final c:Lyi5;

.field public d:I

.field public e:F

.field public final f:Lyi5;

.field public final g:Lyi5;

.field public final h:Lyi5;

.field public final i:Lyi5;

.field public j:F

.field public k:F

.field public l:I

.field public final m:Lyi5;

.field public final n:Lyi5;

.field public final o:Lyi5;

.field public p:I

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public final u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/view/OSLoadingView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/OSLoadingView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/view/OSLoadingView;->Companion:Lcom/transsion/widgetslib/view/OSLoadingView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mPaint$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mPaint$2;

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->c:Lyi5;

    .line 7
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mPath$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mPath$2;

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->f:Lyi5;

    .line 8
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mLeftCirclePath$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mLeftCirclePath$2;

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->g:Lyi5;

    .line 9
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mRightCirclePath$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mRightCirclePath$2;

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->h:Lyi5;

    .line 10
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mUnionPath$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mUnionPath$2;

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->i:Lyi5;

    .line 11
    new-instance p3, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->m:Lyi5;

    .line 12
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->n:Lyi5;

    .line 13
    new-instance p3, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimRepel$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimRepel$2;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-static {p3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->o:Lyi5;

    const p3, 0x3f19999a    # 0.6f

    .line 14
    iput p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->u:F

    const p3, 0x40c90fdb

    .line 15
    iput p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->w:F

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lolb;->q0(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->z:Z

    .line 17
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "context.obtainStyledAttr\u2026.styleable.OSLoadingView)"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView_os_lv_type:I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewMedium:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    .line 20
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->p:I

    .line 21
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView_os_lv_dot_color:I

    .line 22
    sget p4, Lcom/transsion/widgetslib/R$color;->os_comp_color_loading_hios:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 23
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->A:I

    .line 24
    sget p1, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView_os_lv_running_type:I

    const/4 p3, 0x0

    .line 25
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->l:I

    .line 26
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x1

    .line 28
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 30
    iget p2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->A:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->j()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->g(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMAnimAppeal(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAnimCircle(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAnimRepel(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMOutCircleRadiusStatic$p(Lcom/transsion/widgetslib/view/OSLoadingView;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    return p0
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->h(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->f(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final f(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->w:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static final g(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->v:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final getDistance()D
    .locals 6

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->j:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->q:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->k:F

    iget p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->r:F

    sub-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v4, p0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private final getMAnimAppeal()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->m:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final getMAnimCircle()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->n:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final getMAnimRepel()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->o:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final getMLeftCirclePath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->g:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    return-object p0
.end method

.method private final getMPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->f:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    return-object p0
.end method

.method private final getMRightCirclePath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->h:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    return-object p0
.end method

.method private final getMUnionPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->i:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    return-object p0
.end method

.method public static final h(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->v:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 23

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getDistance()D

    move-result-wide v1

    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    iget v4, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->u:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    div-double/2addr v1, v3

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :cond_0
    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/high16 v6, 0x40100000    # 2.25f

    mul-float/2addr v6, v3

    float-to-double v6, v6

    mul-double/2addr v6, v1

    sub-double/2addr v4, v6

    const/4 v6, 0x3

    int-to-float v6, v6

    mul-float/2addr v6, v3

    const/4 v7, 0x4

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    float-to-double v4, v3

    :cond_1
    neg-float v6, v3

    float-to-double v6, v6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_2

    neg-float v4, v3

    float-to-double v4, v4

    :cond_2
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v6

    const/4 v6, 0x6

    int-to-double v6, v6

    div-double/2addr v1, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v1, v6, v1

    iget v8, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->w:F

    float-to-double v8, v8

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v10, v8

    const-wide/16 v8, 0x0

    cmpg-double v12, v10, v8

    if-gez v12, :cond_3

    move-wide v10, v8

    :cond_3
    iget v8, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->q:F

    float-to-double v8, v8

    float-to-double v12, v3

    add-double v14, v1, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    add-double/2addr v8, v12

    double-to-float v3, v8

    iget v8, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->r:F

    float-to-double v8, v8

    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    float-to-double v12, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    sub-double/2addr v8, v12

    double-to-float v8, v8

    iget v9, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->s:F

    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->q:F

    sub-float/2addr v9, v12

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float/2addr v9, v13

    add-float/2addr v9, v12

    move v12, v8

    float-to-double v8, v9

    sub-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v4

    sub-double v8, v8, v16

    double-to-float v8, v8

    iget v9, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->t:F

    move/from16 v16, v8

    iget v8, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->r:F

    sub-float/2addr v9, v8

    div-float/2addr v9, v13

    add-float/2addr v9, v8

    float-to-double v8, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v4

    sub-double v8, v8, v17

    double-to-float v8, v8

    iget v9, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->s:F

    move/from16 v17, v8

    float-to-double v8, v9

    move/from16 v18, v3

    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    move-wide/from16 v19, v14

    float-to-double v14, v3

    sub-double/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v14, v1

    sub-double/2addr v8, v14

    double-to-float v1, v8

    iget v2, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->t:F

    float-to-double v2, v2

    iget v8, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    float-to-double v8, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v8, v14

    add-double/2addr v2, v8

    double-to-float v2, v2

    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->q:F

    float-to-double v8, v3

    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    float-to-double v14, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v14, v14, v21

    add-double/2addr v8, v14

    double-to-float v3, v8

    iget v8, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->r:F

    float-to-double v8, v8

    iget v14, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    float-to-double v14, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v14, v10

    sub-double/2addr v8, v14

    double-to-float v8, v8

    iget v9, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->s:F

    iget v10, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->q:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v13

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v4

    add-double/2addr v9, v14

    double-to-float v9, v9

    iget v10, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->t:F

    iget v11, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->r:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v13

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v10, v4

    double-to-float v4, v10

    iget v5, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->s:F

    float-to-double v5, v5

    iget v7, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    float-to-double v10, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v10, v13

    sub-double/2addr v5, v10

    double-to-float v5, v5

    iget v6, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->t:F

    float-to-double v6, v6

    iget v10, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    float-to-double v10, v10

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v10, v13

    add-double/2addr v6, v10

    double-to-float v6, v6

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v7

    move/from16 v10, v18

    invoke-virtual {v7, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v7

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-virtual {v7, v10, v11, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1, v9, v4, v3, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public final e()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x352

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Leb7;

    invoke-direct {v1}, Leb7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    new-instance v1, Lu87;

    invoke-direct {v1, p0}, Lu87;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Leb7;

    invoke-direct {v3}, Leb7;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    new-instance v3, Lv87;

    invoke-direct {v3, p0}, Lv87;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v1, Leb7;

    invoke-direct {v1}, Leb7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    new-instance v1, Lw87;

    invoke-direct {v1, p0}, Lw87;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    new-instance v1, Lcom/transsion/widgetslib/view/OSLoadingView$b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$b;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final getMVisibilityChangedReStartAnim()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->y:Z

    return p0
.end method

.method public final i()V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->l:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->v:F

    return-void
.end method

.method public final isRunning()Z
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final j()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->p:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewSmall:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_size_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    int-to-float v3, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewLarge:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_size_large:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_size_medium:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :goto_1
    iput v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->p:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_dot_size_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_2
    int-to-float v3, v3

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewLarge:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_dot_size_large:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_dot_size_medium:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    :goto_3
    iget v4, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    div-float/2addr v3, v5

    iput v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->i()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object v3

    iget v4, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    const/4 v5, 0x0

    new-array v6, v2, [F

    aput v4, v6, v1

    aput v5, v6, v0

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object v3

    iget p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    new-array v2, v2, [F

    aput v5, v2, v1

    aput p0, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-void
.end method

.method public final k()V
    .locals 1

    const v0, 0x40c90fdb

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->w:F

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->v:F

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->z:Z

    if-eqz v0, :cond_0

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dccccd0    # 0.100000024f

    mul-float/2addr v0, v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMLeftCirclePath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMRightCirclePath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMUnionPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->j:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->x:F

    mul-float v3, v1, v2

    sub-float v3, v0, v3

    iput v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->q:F

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->d:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->r:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->s:F

    int-to-float v0, v3

    div-float/2addr v0, v5

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->t:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getDistance()D

    move-result-wide v0

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->u:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->d()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->j:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->v:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->w:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->q:F

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->k:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->v:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->w:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->r:F

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->j:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->v:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->w:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->s:F

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->k:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->v:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->w:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->t:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getDistance()D

    move-result-wide v0

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->u:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->w:F

    float-to-double v1, v0

    const-wide v3, 0x3fe0c152382d7365L    # 0.5235987755982988

    cmpl-double v1, v1, v3

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v1, :cond_2

    float-to-double v4, v0

    cmpg-double v1, v4, v2

    if-ltz v1, :cond_3

    :cond_2
    float-to-double v0, v0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->d()V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMLeftCirclePath()Landroid/graphics/Path;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->q:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->r:F

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMRightCirclePath()Landroid/graphics/Path;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->s:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->t:F

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMUnionPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMLeftCirclePath()Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMRightCirclePath()Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMUnionPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_5
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMUnionPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->l:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->e()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_loading_medium_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewSmall:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_loading_default_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewMedium:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewLarge:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->p:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->j()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->b:F

    const/4 p2, 0x2

    int-to-float v0, p2

    mul-float/2addr p1, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->e:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lolb;->h(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_1
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->d:I

    int-to-float p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->j:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->k:F

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->l:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->startLoadingAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final release()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->k()V

    return-void
.end method

.method public final setDotColor(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->A:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->A:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setMVisibilityChangedReStartAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->y:Z

    return-void
.end method

.method public final setPullPercent(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->l:I

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->x:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setRunningType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->l:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->i()V

    return-void
.end method

.method public final startLoadingAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->k()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->l:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->i()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->e()V

    return-void
.end method
