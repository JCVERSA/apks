.class public Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lio/github/inflationx/calligraphy3/HasTypeface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;,
        Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;
    }
.end annotation


# static fields
.field public static final C0:Ljava/util/List;

.field public static final D0:Ljava/lang/String;

.field public static final LETTER_TOUCH_ACTION_DOWN:I = 0x1

.field public static final LETTER_TOUCH_ACTION_UP:I = 0x2

.field public static final LETTER_TOUCH_MOVE:I = 0x3

.field public static final mHeart:Ljava/lang/String; = "\u2606"


# instance fields
.field public A:F

.field public A0:Z

.field public B:F

.field public B0:Z

.field public C:F

.field public D:J

.field public E:J

.field public F:Z

.field public G:Z

.field public H:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;

.field public I:Ljava/util/List;

.field public final J:Ljava/util/List;

.field public final K:Ljava/util/List;

.field public L:F

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:Ljava/util/ArrayList;

.field public a0:Z

.field public b:I

.field public b0:Landroid/graphics/Bitmap;

.field public c:Landroid/animation/ValueAnimator;

.field public c0:I

.field public d:Landroid/animation/ValueAnimator;

.field public d0:Z

.field public e:Landroid/animation/ValueAnimator;

.field public final e0:Landroid/graphics/RectF;

.field public f:Ljava/lang/Runnable;

.field public f0:Z

.field public g:Ljava/lang/Runnable;

.field public final g0:Landroid/graphics/RectF;

.field public h:I

.field public final h0:Landroid/graphics/RectF;

.field public i:F

.field public final i0:Landroid/util/ArrayMap;

.field public j:I

.field public final j0:Landroid/graphics/RectF;

.field public k:Z

.field public final k0:Landroid/graphics/RectF;

.field public l:Z

.field public final l0:Ljava/util/List;

.field public m:Z

.field public m0:Ljava/lang/String;

.field public n:Landroid/graphics/Bitmap;

.field public n0:I

.field public o:Landroid/graphics/Bitmap;

.field public final o0:Ljava/util/List;

.field public p:Z

.field public p0:Z

.field public q:I

.field public q0:Z

.field public r:Z

.field public r0:Z

.field public s:F

.field public s0:I

.field public t:Landroid/view/animation/Interpolator;

.field public t0:I

.field public final u:Landroid/graphics/Paint;

.field public u0:I

.field public final v:Landroid/graphics/Paint;

.field public v0:F

.field public final w:Landroid/graphics/Paint;

.field public w0:F

.field public final x:Landroid/graphics/Paint;

.field public x0:Landroid/graphics/Paint;

.field public final y:Landroid/graphics/Paint;

.field public y0:Landroid/graphics/Rect;

.field public final z:Landroid/graphics/Paint;

.field public z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "\u2606"

    const-string v5, "\u039b"

    const-string v0, "\u2606"

    const-string v1, "#"

    const-string v2, "\u2026"

    const-string v3, "\u2664"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->C0:Ljava/util/List;

    const-class v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->D0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 31

    move-object/from16 v0, p0

    .line 75
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xff

    .line 76
    iput v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j:I

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->r:Z

    const/4 v2, 0x0

    .line 78
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s:F

    .line 79
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->t:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    .line 81
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v:Landroid/graphics/Paint;

    .line 82
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w:Landroid/graphics/Paint;

    .line 83
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x:Landroid/graphics/Paint;

    .line 84
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    .line 85
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z:Landroid/graphics/Paint;

    const-wide/16 v3, 0xc8

    .line 86
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->D:J

    const-wide/16 v3, 0x3e8

    .line 87
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->E:J

    const/4 v3, 0x0

    .line 88
    iput-boolean v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->F:Z

    .line 89
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->G:Z

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    .line 91
    const-string v29, "Y"

    const-string v30, "Z"

    const-string v5, "A"

    const-string v6, "B"

    const-string v7, "C"

    const-string v8, "D"

    const-string v9, "E"

    const-string v10, "F"

    const-string v11, "G"

    const-string v12, "H"

    const-string v13, "I"

    const-string v14, "J"

    const-string v15, "K"

    const-string v16, "L"

    const-string v17, "M"

    const-string v18, "N"

    const-string v19, "O"

    const-string v20, "P"

    const-string v21, "Q"

    const-string v22, "R"

    const-string v23, "S"

    const-string v24, "T"

    const-string v25, "U"

    const-string v26, "V"

    const-string v27, "W"

    const-string v28, "X"

    filled-new-array/range {v5 .. v30}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->K:Ljava/util/List;

    .line 92
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->L:F

    const v2, -0xff4d13

    .line 93
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->T:I

    const/4 v2, -0x1

    .line 94
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->U:I

    const v4, -0x858586

    .line 95
    iput v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->V:I

    .line 96
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->a0:Z

    .line 97
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    .line 98
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->f0:Z

    .line 99
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g0:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h0:Landroid/graphics/RectF;

    .line 100
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    .line 101
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j0:Landroid/graphics/RectF;

    .line 102
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k0:Landroid/graphics/RectF;

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    .line 104
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n0:I

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    .line 106
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q0:Z

    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->r0:Z

    const/16 v1, 0x3e8

    .line 107
    iput v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s0:I

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x0:Landroid/graphics/Paint;

    .line 109
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y0:Landroid/graphics/Rect;

    .line 110
    iput-boolean v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B0:Z

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 31

    move-object/from16 v0, p0

    .line 38
    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0xff

    .line 39
    iput v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j:I

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->r:Z

    const/4 v2, 0x0

    .line 41
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s:F

    .line 42
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->t:Landroid/view/animation/Interpolator;

    .line 43
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    .line 44
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v:Landroid/graphics/Paint;

    .line 45
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w:Landroid/graphics/Paint;

    .line 46
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x:Landroid/graphics/Paint;

    .line 47
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    .line 48
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z:Landroid/graphics/Paint;

    const-wide/16 v3, 0xc8

    .line 49
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->D:J

    const-wide/16 v3, 0x3e8

    .line 50
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->E:J

    const/4 v3, 0x0

    .line 51
    iput-boolean v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->F:Z

    .line 52
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->G:Z

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    .line 54
    const-string v29, "Y"

    const-string v30, "Z"

    const-string v5, "A"

    const-string v6, "B"

    const-string v7, "C"

    const-string v8, "D"

    const-string v9, "E"

    const-string v10, "F"

    const-string v11, "G"

    const-string v12, "H"

    const-string v13, "I"

    const-string v14, "J"

    const-string v15, "K"

    const-string v16, "L"

    const-string v17, "M"

    const-string v18, "N"

    const-string v19, "O"

    const-string v20, "P"

    const-string v21, "Q"

    const-string v22, "R"

    const-string v23, "S"

    const-string v24, "T"

    const-string v25, "U"

    const-string v26, "V"

    const-string v27, "W"

    const-string v28, "X"

    filled-new-array/range {v5 .. v30}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->K:Ljava/util/List;

    .line 55
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->L:F

    const v2, -0xff4d13

    .line 56
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->T:I

    const/4 v2, -0x1

    .line 57
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->U:I

    const v4, -0x858586

    .line 58
    iput v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->V:I

    .line 59
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->a0:Z

    .line 60
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    .line 61
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->f0:Z

    .line 62
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g0:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h0:Landroid/graphics/RectF;

    .line 63
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    .line 64
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j0:Landroid/graphics/RectF;

    .line 65
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k0:Landroid/graphics/RectF;

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    .line 67
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n0:I

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    .line 69
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q0:Z

    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->r0:Z

    const/16 v1, 0x3e8

    .line 70
    iput v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s0:I

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x0:Landroid/graphics/Paint;

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y0:Landroid/graphics/Rect;

    .line 73
    iput-boolean v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B0:Z

    .line 74
    invoke-virtual/range {p0 .. p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0xff

    .line 2
    iput v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->r:Z

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s:F

    .line 5
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->t:Landroid/view/animation/Interpolator;

    .line 6
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    .line 7
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v:Landroid/graphics/Paint;

    .line 8
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w:Landroid/graphics/Paint;

    .line 9
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x:Landroid/graphics/Paint;

    .line 10
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    .line 11
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z:Landroid/graphics/Paint;

    const-wide/16 v3, 0xc8

    .line 12
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->D:J

    const-wide/16 v3, 0x3e8

    .line 13
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->E:J

    const/4 v3, 0x0

    .line 14
    iput-boolean v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->F:Z

    .line 15
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->G:Z

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    .line 17
    const-string v29, "Y"

    const-string v30, "Z"

    const-string v5, "A"

    const-string v6, "B"

    const-string v7, "C"

    const-string v8, "D"

    const-string v9, "E"

    const-string v10, "F"

    const-string v11, "G"

    const-string v12, "H"

    const-string v13, "I"

    const-string v14, "J"

    const-string v15, "K"

    const-string v16, "L"

    const-string v17, "M"

    const-string v18, "N"

    const-string v19, "O"

    const-string v20, "P"

    const-string v21, "Q"

    const-string v22, "R"

    const-string v23, "S"

    const-string v24, "T"

    const-string v25, "U"

    const-string v26, "V"

    const-string v27, "W"

    const-string v28, "X"

    filled-new-array/range {v5 .. v30}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->K:Ljava/util/List;

    .line 18
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->L:F

    const v2, -0xff4d13

    .line 19
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->T:I

    const/4 v2, -0x1

    .line 20
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->U:I

    const v4, -0x858586

    .line 21
    iput v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->V:I

    .line 22
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->a0:Z

    .line 23
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    .line 24
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->f0:Z

    .line 25
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g0:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h0:Landroid/graphics/RectF;

    .line 26
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    .line 27
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j0:Landroid/graphics/RectF;

    .line 28
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k0:Landroid/graphics/RectF;

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    .line 30
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n0:I

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    .line 32
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q0:Z

    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->r0:Z

    const/16 v1, 0x3e8

    .line 33
    iput v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s0:I

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x0:Landroid/graphics/Paint;

    .line 35
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y0:Landroid/graphics/Rect;

    .line 36
    iput-boolean v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B0:Z

    .line 37
    invoke-virtual/range {p0 .. p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h:I

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m:Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i:F

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l:Z

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->D()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 15

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_20

    if-nez v1, :cond_1

    goto/16 :goto_d

    :cond_1
    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->R:I

    if-eq v2, v0, :cond_2

    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->R:I

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->S:I

    if-eq v0, v1, :cond_3

    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->S:I

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    if-ge v3, v0, :cond_5

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;-><init>(Lkk5;)V

    iput v3, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->a:I

    iput-object v6, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->I:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->c:Z

    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    div-float v5, v6, v5

    iput v5, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->d:F

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->O:I

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    int-to-float v7, v3

    iput v7, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lolb;->U(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q:I

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    float-to-int v4, v4

    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->Q:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    add-int/2addr v7, v4

    :goto_2
    iput v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u0:I

    goto :goto_4

    :cond_7
    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q:I

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    float-to-int v4, v4

    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->Q:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    :goto_3
    iput v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u0:I

    :goto_4
    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v0:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->getAllLetterMaxHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w0:F

    add-float/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v0:F

    iget v7, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v4

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->F:Z

    const/4 v7, 0x4

    if-eqz v4, :cond_a

    iput v1, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lolb;->U(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lolb;->h(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v6, Landroid/graphics/RectF;->left:F

    :cond_9
    iget v4, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u0:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    iput v4, v6, Landroid/graphics/RectF;->right:F

    goto :goto_5

    :cond_a
    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->R:I

    int-to-float v4, v4

    iput v4, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lolb;->U(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->R:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    iput v4, v6, Landroid/graphics/RectF;->right:F

    :cond_b
    iget v4, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u0:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    iput v4, v6, Landroid/graphics/RectF;->left:F

    :goto_5
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v7, v4, v1

    if-nez v7, :cond_c

    return-void

    :cond_c
    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->r0:Z

    if-eqz v7, :cond_e

    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->A0:Z

    if-nez v3, :cond_d

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->P:I

    :cond_d
    move v3, v2

    :cond_e
    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->S:I

    sub-int v3, v8, v3

    iget v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->P:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    if-eqz v7, :cond_f

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x2

    goto :goto_6

    :cond_f
    div-float/2addr v3, v4

    float-to-int v3, v3

    :goto_6
    const/4 v10, 0x1

    if-ge v3, v10, :cond_10

    return-void

    :cond_10
    if-le v0, v3, :cond_11

    move v11, v10

    goto :goto_7

    :cond_11
    move v11, v2

    :goto_7
    iput-boolean v11, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p0:Z

    if-eqz v11, :cond_12

    goto :goto_8

    :cond_12
    move v3, v0

    :goto_8
    if-eqz v7, :cond_16

    int-to-float v7, v3

    mul-float/2addr v7, v4

    int-to-float v8, v8

    sub-float/2addr v8, v7

    div-float/2addr v8, v5

    float-to-int v7, v8

    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->A0:Z

    if-eqz v8, :cond_13

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v7, v9

    :cond_13
    if-gez v7, :cond_14

    move v7, v2

    :cond_14
    if-nez v8, :cond_15

    iput v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->P:I

    :cond_15
    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v4

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    :cond_16
    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j0:Landroid/graphics/RectF;

    invoke-virtual {v7, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    sget-object v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->D0:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsOverUnits: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p0:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mSelectedRectIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z0:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", paintLen: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z0:I

    if-lt v8, v3, :cond_17

    goto :goto_9

    :cond_17
    move v10, v2

    :goto_9
    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p0:Z

    const/4 v11, -0x1

    if-eqz v8, :cond_1a

    if-eqz v10, :cond_18

    add-int/lit8 v8, v3, -0x1

    iput v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z0:I

    :cond_18
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    iget-object v12, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n0:I

    if-le v8, v11, :cond_19

    iget v12, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z0:I

    sub-int v12, v8, v12

    goto :goto_a

    :cond_19
    move v12, v2

    move v8, v11

    :goto_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "noSpaceShowSelectedRect: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", topLetterIndex: "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z0:I

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mSelectedLetter: "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", indexSelectedLetter: "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    move v12, v2

    :goto_b
    if-ge v2, v3, :cond_1c

    new-instance v7, Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    iget v10, v6, Landroid/graphics/RectF;->right:F

    iget v13, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v7, v8, v9, v10, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    iput v8, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v4

    iput v8, v6, Landroid/graphics/RectF;->bottom:F

    add-int v8, v2, v12

    if-le v8, v11, :cond_1b

    if-ge v8, v0, :cond_1b

    iget-object v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h0:Landroid/graphics/RectF;

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget v7, v6, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v5

    add-float v5, v3, v4

    invoke-virtual {v0, v2, v3, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h0:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g0:Landroid/graphics/RectF;

    iget v3, v6, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v4

    iget v5, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g0:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k0:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q:I

    if-eqz v0, :cond_1d

    goto :goto_c

    :cond_1d
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    :goto_c
    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u0:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_letter_bubble_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u0:I

    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->N:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->F:Z

    if-nez v3, :cond_1f

    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->R:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    int-to-float v2, v0

    sub-float v2, v3, v2

    :cond_1f
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float v3, v2, v0

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_20
    :goto_d
    return-void
.end method

.method public final B()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->r:Z

    if-nez v0, :cond_0

    const-string p0, "vibrate Able is false"

    invoke-static {p0}, Lbq5;->o(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-boolean v1, Lolb;->Y:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget-boolean v1, Lolb;->J:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final C()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final D()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n()V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->f:Ljava/lang/Runnable;

    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s0:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final E()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k:Z

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j:I

    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l:Z

    :cond_5
    return-void
.end method

.method public final F(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->a0:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j0:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->A:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->C:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k0:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v4, v3, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const-string v7, "\u2606"

    if-eqz v4, :cond_3

    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->W:Ljava/util/ArrayList;

    if-eqz v8, :cond_7

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_4
    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget v3, v3, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->d:F

    sub-float/2addr v7, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v5

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s:F

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    div-float v5, v2, v6

    add-float/2addr v4, v5

    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v5

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_6
    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    div-float v5, v2, v6

    sub-float/2addr v3, v5

    iput v3, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_7
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget v3, v3, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->d:F

    sub-float/2addr v6, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v5

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAllLetterMaxHeight()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->H:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;->a(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->r(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getLetterSelectorConfig(ZZ)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->H:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Lkk5;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->H:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->G:Z

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->H:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;->b(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;Z)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->H:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$g;

    return-object p0
.end method

.method public getPanelWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u0:I

    return p0
.end method

.method public isShowSelector()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q0:Z

    return p0
.end method

.method public isSlideOutside()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p:Z

    return p0
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    return-void
.end method

.method public final o()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->G:Z

    if-nez v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->G:Z

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->F:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->C()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->F(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->R:I

    iput p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->S:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->A()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q0:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->F(FF)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_d

    if-eq p1, v2, :cond_b

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j0:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p:Z

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    :cond_4
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B0:Z

    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s:F

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g0:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h0:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez p1, :cond_8

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v3, v4}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s(Landroid/graphics/RectF;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;)V

    goto :goto_0

    :cond_8
    :goto_1
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    :goto_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    if-nez v0, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s(Landroid/graphics/RectF;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u()V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_c

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m:Z

    goto :goto_4

    :cond_c
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m:Z

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->D()V

    goto :goto_4

    :cond_d
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B0:Z

    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->s:F

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    if-nez v3, :cond_f

    goto :goto_3

    :cond_f
    iget-boolean p1, v3, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->c:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0, v3, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->E()V

    :cond_10
    :goto_4
    return v2

    :cond_11
    :goto_5
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B0:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u()V

    :cond_12
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->f:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m:Z

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k:Z

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i:F

    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h:I

    return-void
.end method

.method public final p(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final q(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->k:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i:F

    const v1, 0x3f333333    # 0.7f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d0:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i:F

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->b0:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->M:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->b0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->t0:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    div-float/2addr v1, v0

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    const-string v1, "\u2606"

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$attr;->os_text_secondary:I

    sget v5, Lcom/transsion/widgetslib/R$color;->os_text_secondary_hios:I

    invoke-static {v3, v4, v5}, Lolb;->m(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-float/2addr v0, v2

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public r(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->A:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x0:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y0:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y0:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public final s(Landroid/graphics/RectF;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p0:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    move v6, v3

    move v5, v4

    :goto_0
    add-int v7, v4, v1

    if-ge v5, v7, :cond_2

    if-ge v6, v1, :cond_1

    if-ge v5, v2, :cond_1

    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-ne p1, v4, :cond_4

    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_1
    add-int v5, v1, v0

    if-ge v4, v5, :cond_4

    if-ge v3, v1, :cond_3

    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z0:I

    iget-boolean p1, p2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->c:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->E()V

    :cond_5
    return-void
.end method

.method public setSelectedLetter(I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p0:Z

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->t(Ljava/lang/String;I)V

    goto :goto_0

    .line 9
    :cond_2
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z0:I

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    .line 11
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n0:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setSelectedLetter(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->m0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->setSelectedLetter(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShowSelector(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q0:Z

    return-void
.end method

.method public setSlideOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p:Z

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z:Landroid/graphics/Paint;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_5
    return-void
.end method

.method public setVibrateAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->r:Z

    return-void
.end method

.method public final t(Ljava/lang/String;I)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    if-gez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, v1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->a:I

    if-ne p2, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z0:I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n0:I

    if-ge v1, p2, :cond_5

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz p2, :cond_4

    if-ge p2, p1, :cond_4

    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z0:I

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_6

    if-ge p2, p1, :cond_6

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->i0:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->l0:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z0:I

    :cond_7
    :goto_3
    return-void
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B0:Z

    return-void
.end method

.method public final v(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->b:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->n0:I

    iget p1, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$f;->a:I

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->setSelectedLetter(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final w(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_panel_height_gap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->w0:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_top_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->O:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_bottom_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->P:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->Q:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->A:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_max_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_indicator_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->C:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->letter_indicator_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->M:I

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->N:I

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->A:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->b:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->u:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->B:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->b:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->V:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->z:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->A:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->U:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->y:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->C:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->T:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c0:I

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->b0:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d0:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->G()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x()V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->t0:I

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->v0:F

    if-eqz p2, :cond_4

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSLetterSelectorLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSLetterSelectorLayout_os_letter_slide_outside:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->p:Z

    goto :goto_2

    :cond_1
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSLetterSelectorLayout_os_letter_fixed_width:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q:I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    return-void
.end method

.method public final x()V
    .locals 5

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$a;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$a;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$b;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->c:Landroid/animation/ValueAnimator;

    new-instance v2, Lm97;

    invoke-direct {v2}, Lm97;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    if-nez v1, :cond_1

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$c;

    invoke-direct {v4, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$c;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$d;

    invoke-direct {v4, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$d;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->d:Landroid/animation/ValueAnimator;

    new-instance v4, Ll97;

    invoke-direct {v4}, Ll97;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->f:Ljava/lang/Runnable;

    new-instance v1, Ljk5;

    invoke-direct {v1, p0}, Ljk5;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g:Ljava/lang/Runnable;

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$e;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$e;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->e:Landroid/animation/ValueAnimator;

    new-instance v0, Ll97;

    invoke-direct {v0}, Ll97;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->q0:Z

    if-nez p0, :cond_0

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

.method public final synthetic z()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lvob;->b(Landroid/content/Context;)V

    return-void
.end method
