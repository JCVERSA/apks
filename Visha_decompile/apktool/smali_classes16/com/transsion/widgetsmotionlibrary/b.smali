.class public final Lcom/transsion/widgetsmotionlibrary/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsmotionlibrary/b$a;,
        Lcom/transsion/widgetsmotionlibrary/b$b;,
        Lcom/transsion/widgetsmotionlibrary/b$c;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/widgetsmotionlibrary/b$a;

.field public static final g:Lm97;


# instance fields
.field public a:Ljv9;

.field public b:Ljv9;

.field public c:Landroid/animation/ObjectAnimator;

.field public d:Landroid/animation/ObjectAnimator;

.field public final e:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsmotionlibrary/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsmotionlibrary/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsmotionlibrary/b;->f:Lcom/transsion/widgetsmotionlibrary/b$a;

    new-instance v0, Lm97;

    invoke-direct {v0}, Lm97;-><init>()V

    sput-object v0, Lcom/transsion/widgetsmotionlibrary/b;->g:Lm97;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->e:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static synthetic B(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsmotionlibrary/b;->A(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;FZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetsmotionlibrary/b;->C(Landroid/view/View;FZ)V

    return-void
.end method

.method public static synthetic F(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsmotionlibrary/b;->E(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetsmotionlibrary/b;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetsmotionlibrary/b;->g(Lcom/transsion/widgetsmotionlibrary/b;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/ViewGroup;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View$OnTouchListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/widgetsmotionlibrary/b;->h(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/ViewGroup;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View$OnTouchListener;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;FIJJLandroid/view/animation/PathInterpolator;ILandroid/view/ViewGroup;FZFFFFLcom/transsion/widgetsmotionlibrary/a;Landroid/view/View$OnTouchListener;ILjava/lang/Object;)V
    .locals 17

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    const/high16 v2, -0x56000000

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    const-wide/16 v4, 0xc8

    if-eqz v3, :cond_2

    move-wide v6, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p4

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 v4, p6

    :goto_3
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_4

    sget-object v3, Lcom/transsion/widgetsmotionlibrary/b;->g:Lm97;

    goto :goto_4

    :cond_4
    move-object/from16 v3, p8

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p9

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p10

    :goto_6
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move/from16 v11, p11

    :goto_7
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    goto :goto_8

    :cond_8
    move/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move/from16 v15, p14

    :goto_a
    and-int/lit16 v10, v0, 0x1000

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    goto :goto_b

    :cond_b
    move/from16 v10, p15

    :goto_b
    and-int/lit16 v12, v0, 0x2000

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    goto :goto_c

    :cond_c
    move/from16 v12, p16

    :goto_c
    move/from16 p20, v12

    and-int/lit16 v12, v0, 0x4000

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v12, p17

    :goto_d
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v0, p18

    :goto_e
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v2

    move-wide/from16 p6, v6

    move-wide/from16 p8, v4

    move-object/from16 p10, v3

    move/from16 p11, v8

    move-object/from16 p12, v9

    move/from16 p13, v11

    move/from16 p14, v13

    move/from16 p15, v14

    move/from16 p16, v15

    move/from16 p17, v10

    move/from16 p18, p20

    move-object/from16 p19, v12

    move-object/from16 p20, v0

    invoke-virtual/range {p2 .. p20}, Lcom/transsion/widgetsmotionlibrary/b;->e(Landroid/view/View;FIJJLandroid/view/animation/PathInterpolator;ILandroid/view/ViewGroup;FZFFFFLcom/transsion/widgetsmotionlibrary/a;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final g(Lcom/transsion/widgetsmotionlibrary/b;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pressTouchContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/widgetsmotionlibrary/b;->n(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View$OnTouchListener;)Z

    move-result p0

    return p0
.end method

.method public static final h(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/ViewGroup;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View$OnTouchListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pressTouchContext"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, p4

    :goto_0
    const-string p1, "viewGroup ?: v"

    invoke-static {v2, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "v"

    invoke-static {p4, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p5, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/widgetsmotionlibrary/b;->n(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View$OnTouchListener;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;JLandroid/view/animation/PathInterpolator;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const-wide/16 p2, 0xc8

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    sget-object p4, Lcom/transsion/widgetsmotionlibrary/b;->g:Lm97;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsmotionlibrary/b;->q(Landroid/view/View;JLandroid/view/animation/PathInterpolator;)V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;IJLandroid/view/animation/PathInterpolator;Lcom/transsion/widgetsmotionlibrary/a;FFFFILjava/lang/Object;)V
    .locals 16

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const-wide/16 v1, 0xc8

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    sget-object v1, Lcom/transsion/widgetsmotionlibrary/b;->g:Lm97;

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    new-instance v1, Lcom/transsion/widgetsmotionlibrary/a;

    const/16 v14, 0xf

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/transsion/widgetsmotionlibrary/a;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move v12, v2

    goto :goto_5

    :cond_5
    move/from16 v12, p9

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move v13, v2

    goto :goto_6

    :cond_6
    move/from16 v13, p10

    :goto_6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v13}, Lcom/transsion/widgetsmotionlibrary/b;->w(Landroid/view/View;IJLandroid/view/animation/PathInterpolator;Lcom/transsion/widgetsmotionlibrary/a;FFFF)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsmotionlibrary/b;->y(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsmotionlibrary/b;->s(Landroid/view/View;)Lcom/transsion/widgetsmotionlibrary/b$b;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsmotionlibrary/b;->i()V

    :cond_0
    iget-object p2, p0, Lcom/transsion/widgetsmotionlibrary/b;->d:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    aput p2, v0, v1

    const-string p2, "alpha"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/transsion/widgetsmotionlibrary/b;->g:Lm97;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/transsion/widgetsmotionlibrary/b;->d:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public final C(Landroid/view/View;FZ)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsmotionlibrary/b;->s(Landroid/view/View;)Lcom/transsion/widgetsmotionlibrary/b$b;

    invoke-virtual {p0}, Lcom/transsion/widgetsmotionlibrary/b;->i()V

    new-instance v0, Lkv9;

    invoke-direct {v0, p2}, Lkv9;-><init>(F)V

    if-eqz p3, :cond_0

    const/high16 v1, 0x437a0000    # 250.0f

    goto :goto_0

    :cond_0
    sget-object v1, Lr97;->a:Lr97;

    invoke-static {p1}, Ldmb;->a(Landroid/view/View;)F

    move-result v2

    invoke-virtual {v1, v2}, Lr97;->a(F)F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lkv9;->i(F)Lkv9;

    if-eqz p3, :cond_1

    const p3, 0x3f7d70a4    # 0.99f

    goto :goto_1

    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, p3}, Lkv9;->g(F)Lkv9;

    new-instance p3, Ljv9;

    sget-object v1, Lf43;->q:Lf43$s;

    invoke-direct {p3, p1, v1, p2}, Ljv9;-><init>(Ljava/lang/Object;Laz3;F)V

    invoke-virtual {p3, v0}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {p3}, Ljv9;->p()V

    iput-object p3, p0, Lcom/transsion/widgetsmotionlibrary/b;->a:Ljv9;

    new-instance p3, Ljv9;

    sget-object v1, Lf43;->r:Lf43$s;

    invoke-direct {p3, p1, v1, p2}, Ljv9;-><init>(Ljava/lang/Object;Laz3;F)V

    invoke-virtual {p3, v0}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {p3}, Ljv9;->p()V

    iput-object p3, p0, Lcom/transsion/widgetsmotionlibrary/b;->b:Ljv9;

    return-void
.end method

.method public final E(Landroid/view/View;Z)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsmotionlibrary/b;->s(Landroid/view/View;)Lcom/transsion/widgetsmotionlibrary/b$b;

    invoke-virtual {p0}, Lcom/transsion/widgetsmotionlibrary/b;->i()V

    new-instance v0, Lkv9;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lkv9;-><init>(F)V

    if-eqz p2, :cond_0

    const/high16 v2, 0x437a0000    # 250.0f

    goto :goto_0

    :cond_0
    sget-object v2, Lr97;->a:Lr97;

    invoke-static {p1}, Ldmb;->a(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v2, v3}, Lr97;->a(F)F

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Lkv9;->i(F)Lkv9;

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    invoke-virtual {v0, p2}, Lkv9;->g(F)Lkv9;

    new-instance p2, Ljv9;

    sget-object v2, Lf43;->q:Lf43$s;

    invoke-direct {p2, p1, v2, v1}, Ljv9;-><init>(Ljava/lang/Object;Laz3;F)V

    invoke-virtual {p2, v0}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {p2}, Ljv9;->p()V

    iput-object p2, p0, Lcom/transsion/widgetsmotionlibrary/b;->a:Ljv9;

    new-instance p2, Ljv9;

    sget-object v2, Lf43;->r:Lf43$s;

    invoke-direct {p2, p1, v2, v1}, Ljv9;-><init>(Ljava/lang/Object;Laz3;F)V

    invoke-virtual {p2, v0}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {p2}, Ljv9;->p()V

    iput-object p2, p0, Lcom/transsion/widgetsmotionlibrary/b;->b:Ljv9;

    return-void
.end method

.method public final c(Landroid/view/View;IJLandroid/view/animation/PathInterpolator;Lcom/transsion/widgetsmotionlibrary/a;FFFF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/widgetsmotionlibrary/b;->s(Landroid/view/View;)Lcom/transsion/widgetsmotionlibrary/b$b;

    move-result-object v6

    sget v7, Lcom/transsion/widgetsmotionlibrary/R$id;->os_motion_l2_press_bg_filter_listener:I

    invoke-virtual {v1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Landroid/graphics/drawable/GradientDrawable;

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    move-object v8, v10

    :goto_0
    const/4 v9, 0x0

    if-nez v8, :cond_1

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v1, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    move-object v12, v8

    const/high16 v8, -0x1000000

    or-int v8, p2, v8

    invoke-virtual {v12, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/widgetsmotionlibrary/a;->a()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/widgetsmotionlibrary/a;->b()[F

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_1

    :cond_2
    invoke-virtual {v12, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :goto_1
    invoke-virtual {v1, v7, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v7, 0x0

    cmpl-float v8, v2, v7

    if-gtz v8, :cond_3

    cmpl-float v8, v3, v7

    if-gtz v8, :cond_3

    cmpl-float v8, v4, v7

    if-gtz v8, :cond_3

    cmpl-float v7, v5, v7

    if-lez v7, :cond_4

    :cond_3
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    float-to-int v13, v2

    float-to-int v14, v3

    float-to-int v15, v4

    float-to-int v2, v5

    move-object v11, v7

    move/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v12, v7

    :cond_4
    invoke-virtual {v6, v12}, Lcom/transsion/widgetsmotionlibrary/b$b;->f(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget-object v2, v0, Lcom/transsion/widgetsmotionlibrary/b;->c:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_5
    const-string v2, "alpha"

    filled-new-array {v9, v1}, [I

    move-result-object v1

    invoke-static {v12, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-wide/from16 v2, p3

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object v1, v0, Lcom/transsion/widgetsmotionlibrary/b;->c:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public final d(Landroid/view/View;FIJJLandroid/view/animation/PathInterpolator;ILandroid/view/ViewGroup;FZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    const-string v13, "view"

    move-object/from16 v14, p1

    invoke-static {v14, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "pressColorInterpolator"

    move-object/from16 v14, p8

    invoke-static {v14, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v19, 0xfc00

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v0 .. v20}, Lcom/transsion/widgetsmotionlibrary/b;->f(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;FIJJLandroid/view/animation/PathInterpolator;ILandroid/view/ViewGroup;FZFFFFLcom/transsion/widgetsmotionlibrary/a;Landroid/view/View$OnTouchListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Landroid/view/View;FIJJLandroid/view/animation/PathInterpolator;ILandroid/view/ViewGroup;FZFFFFLcom/transsion/widgetsmotionlibrary/a;Landroid/view/View$OnTouchListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p9

    move-object/from16 v15, p10

    move-object/from16 v14, p18

    const-string v2, "view"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pressColorInterpolator"

    move-object/from16 v9, p8

    invoke-static {v9, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p17, :cond_0

    sget-object v2, Lcom/transsion/widgetsmotionlibrary/a;->e:Lcom/transsion/widgetsmotionlibrary/a$a;

    move/from16 v3, p11

    invoke-virtual {v2, v3}, Lcom/transsion/widgetsmotionlibrary/a$a;->a(F)Lcom/transsion/widgetsmotionlibrary/a;

    move-result-object v2

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p17

    :goto_0
    const/4 v2, 0x1

    if-eq v10, v2, :cond_1

    const/4 v2, 0x2

    if-eq v10, v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p12, :cond_2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkb7;->c(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z

    :cond_2
    :goto_1
    sget-object v2, Lcom/transsion/widgetsmotionlibrary/b;->f:Lcom/transsion/widgetsmotionlibrary/b$a;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "view.context"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/transsion/widgetsmotionlibrary/b$a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v14, :cond_3

    invoke-virtual {v1, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const-string v0, "OSMotionL2PressEffectHelper"

    const-string v1, "apply: isAccessibilityEnabled = true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v13, Lcom/transsion/widgetsmotionlibrary/b$c;

    move-object v2, v13

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v12, p13

    move-object v1, v13

    move/from16 v13, p14

    move/from16 v14, p15

    move-object v0, v15

    move/from16 v15, p16

    invoke-direct/range {v2 .. v15}, Lcom/transsion/widgetsmotionlibrary/b$c;-><init>(FIJJLandroid/view/animation/PathInterpolator;ILcom/transsion/widgetsmotionlibrary/a;FFFF)V

    if-eqz v0, :cond_5

    new-instance v2, Lv97;

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lv97;-><init>(Lcom/transsion/widgetsmotionlibrary/b;Lcom/transsion/widgetsmotionlibrary/b$c;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    :cond_5
    move-object v3, v0

    move-object/from16 v0, p0

    :goto_2
    new-instance v2, Lw97;

    move-object/from16 v4, p18

    invoke-direct {v2, v0, v3, v1, v4}, Lw97;-><init>(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/ViewGroup;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->a:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->b:Ljv9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetsmotionlibrary/b;->j()V

    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/b;->d:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/b;->c:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetsmotionlibrary/b;->i()V

    iget-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "pressStates.entries"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "(view, state)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsmotionlibrary/b$b;

    const-string v3, "view"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "state"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/transsion/widgetsmotionlibrary/b;->u(Landroid/view/View;Lcom/transsion/widgetsmotionlibrary/b$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    invoke-virtual {p0}, Lcom/transsion/widgetsmotionlibrary/b;->m()V

    return-void
.end method

.method public final l(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsmotionlibrary/b;->i()V

    iget-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetsmotionlibrary/b$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsmotionlibrary/b;->u(Landroid/view/View;Lcom/transsion/widgetsmotionlibrary/b$b;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsmotionlibrary/b;->m()V

    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->a:Ljv9;

    iput-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->b:Ljv9;

    iput-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->c:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->d:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public final n(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View$OnTouchListener;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/transsion/widgetsmotionlibrary/b;->o(Landroid/view/View;ILcom/transsion/widgetsmotionlibrary/b$c;)V

    if-eqz p5, :cond_0

    invoke-interface {p5, p2, p3}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o(Landroid/view/View;ILcom/transsion/widgetsmotionlibrary/b$c;)V
    .locals 13

    move-object v6, p0

    move-object v7, p1

    move v0, p2

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_0

    if-eq v0, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->h()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v9, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-static {p0, p1, v8, v9, v4}, Lcom/transsion/widgetsmotionlibrary/b;->F(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;ZILjava/lang/Object;)V

    invoke-virtual {p0, p1, v8}, Lcom/transsion/widgetsmotionlibrary/b;->A(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_2
    invoke-static {p0, p1, v8, v9, v4}, Lcom/transsion/widgetsmotionlibrary/b;->B(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;ZILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p0, p1, v5}, Lcom/transsion/widgetsmotionlibrary/b;->E(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_4
    invoke-static {p0, p1, v8, v9, v4}, Lcom/transsion/widgetsmotionlibrary/b;->F(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;ZILjava/lang/Object;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->i()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->f()Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/widgetsmotionlibrary/b;->t(Landroid/view/View;JLandroid/view/animation/PathInterpolator;)V

    goto/16 :goto_7

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->i()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->f()Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/widgetsmotionlibrary/b;->t(Landroid/view/View;JLandroid/view/animation/PathInterpolator;)V

    goto/16 :goto_7

    :cond_6
    invoke-static {p0, p1, v8, v9, v4}, Lcom/transsion/widgetsmotionlibrary/b;->F(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;ZILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->h()I

    move-result v0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v0, :cond_10

    if-eq v0, v5, :cond_f

    if-eq v0, v9, :cond_d

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->k()F

    move-result v0

    cmpg-float v0, v0, v10

    if-nez v0, :cond_9

    invoke-static {p1}, Ldmb;->a(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ldmb;->c(F)F

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->k()F

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetsmotionlibrary/b;->D(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;FZILjava/lang/Object;)V

    invoke-virtual {p0, p1, v8}, Lcom/transsion/widgetsmotionlibrary/b;->y(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_a
    invoke-static {p0, p1, v8, v9, v4}, Lcom/transsion/widgetsmotionlibrary/b;->z(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;ZILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->k()F

    move-result v0

    cmpg-float v0, v0, v10

    if-nez v0, :cond_c

    invoke-static {p1}, Ldmb;->a(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ldmb;->b(F)F

    move-result v0

    goto :goto_2

    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->k()F

    move-result v0

    :goto_2
    invoke-virtual {p0, p1, v0, v5}, Lcom/transsion/widgetsmotionlibrary/b;->C(Landroid/view/View;FZ)V

    goto/16 :goto_7

    :cond_d
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->k()F

    move-result v0

    cmpg-float v0, v0, v10

    if-nez v0, :cond_e

    invoke-static {p1}, Ldmb;->a(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ldmb;->c(F)F

    move-result v0

    :goto_3
    move v2, v0

    goto :goto_4

    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->k()F

    move-result v0

    goto :goto_3

    :goto_4
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetsmotionlibrary/b;->D(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;FZILjava/lang/Object;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->a()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->g()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->f()Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->j()Lcom/transsion/widgetsmotionlibrary/a;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->c()F

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->e()F

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->d()F

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->b()F

    move-result v12

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    invoke-virtual/range {v0 .. v10}, Lcom/transsion/widgetsmotionlibrary/b;->c(Landroid/view/View;IJLandroid/view/animation/PathInterpolator;Lcom/transsion/widgetsmotionlibrary/a;FFFF)V

    goto :goto_7

    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->a()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->g()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->f()Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->j()Lcom/transsion/widgetsmotionlibrary/a;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->c()F

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->e()F

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->d()F

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->b()F

    move-result v12

    move-object v0, p0

    move-object v1, p1

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    invoke-virtual/range {v0 .. v10}, Lcom/transsion/widgetsmotionlibrary/b;->c(Landroid/view/View;IJLandroid/view/animation/PathInterpolator;Lcom/transsion/widgetsmotionlibrary/a;FFFF)V

    goto :goto_7

    :cond_10
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->k()F

    move-result v0

    cmpg-float v0, v0, v10

    if-nez v0, :cond_11

    invoke-static {p1}, Ldmb;->a(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ldmb;->c(F)F

    move-result v0

    :goto_5
    move v2, v0

    goto :goto_6

    :cond_11
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsmotionlibrary/b$c;->k()F

    move-result v0

    goto :goto_5

    :goto_6
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetsmotionlibrary/b;->D(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;FZILjava/lang/Object;)V

    :goto_7
    return-void
.end method

.method public final p(Landroid/view/View;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/widgetsmotionlibrary/b;->r(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;JLandroid/view/animation/PathInterpolator;ILjava/lang/Object;)V

    return-void
.end method

.method public final q(Landroid/view/View;JLandroid/view/animation/PathInterpolator;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsmotionlibrary/b;->t(Landroid/view/View;JLandroid/view/animation/PathInterpolator;)V

    return-void
.end method

.method public final s(Landroid/view/View;)Lcom/transsion/widgetsmotionlibrary/b$b;
    .locals 9

    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/b;->e:Ljava/util/WeakHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetsmotionlibrary/b$b;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/widgetsmotionlibrary/b$b;-><init>(FFFLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v0, Lcom/transsion/widgetsmotionlibrary/b$b;

    return-object v0
.end method

.method public final t(Landroid/view/View;JLandroid/view/animation/PathInterpolator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsmotionlibrary/b;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/transsion/widgetsmotionlibrary/b;->c:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public final u(Landroid/view/View;Lcom/transsion/widgetsmotionlibrary/b$b;)V
    .locals 1

    invoke-virtual {p2}, Lcom/transsion/widgetsmotionlibrary/b$b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/widgetsmotionlibrary/b$b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/widgetsmotionlibrary/b$b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/widgetsmotionlibrary/b$b;->d()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2}, Lcom/transsion/widgetsmotionlibrary/b$b;->e()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p2}, Lcom/transsion/widgetsmotionlibrary/b$b;->a()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final v(Landroid/view/View;IJLandroid/view/animation/PathInterpolator;Lcom/transsion/widgetsmotionlibrary/a;)V
    .locals 14

    const-string v0, "view"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cornerRadii"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x1e0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-static/range {v1 .. v13}, Lcom/transsion/widgetsmotionlibrary/b;->x(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/View;IJLandroid/view/animation/PathInterpolator;Lcom/transsion/widgetsmotionlibrary/a;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final w(Landroid/view/View;IJLandroid/view/animation/PathInterpolator;Lcom/transsion/widgetsmotionlibrary/a;FFFF)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cornerRadii"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p10}, Lcom/transsion/widgetsmotionlibrary/b;->c(Landroid/view/View;IJLandroid/view/animation/PathInterpolator;Lcom/transsion/widgetsmotionlibrary/a;FFFF)V

    return-void
.end method

.method public final y(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsmotionlibrary/b;->s(Landroid/view/View;)Lcom/transsion/widgetsmotionlibrary/b$b;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsmotionlibrary/b;->i()V

    :cond_0
    iget-object p2, p0, Lcom/transsion/widgetsmotionlibrary/b;->d:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const p2, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x1

    aput p2, v0, v1

    const-string p2, "alpha"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/transsion/widgetsmotionlibrary/b;->g:Lm97;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/transsion/widgetsmotionlibrary/b;->d:Landroid/animation/ObjectAnimator;

    return-void
.end method
