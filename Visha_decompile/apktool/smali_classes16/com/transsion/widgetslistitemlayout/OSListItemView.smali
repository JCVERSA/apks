.class public Lcom/transsion/widgetslistitemlayout/OSListItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslistitemlayout/OSListItemView$j;
    }
.end annotation


# static fields
.field public static final ANIM_DURATION:I = 0x12c

.field public static final CORNERS_TYPE_BOTTOM_ROUND:I = 0x3

.field public static final CORNERS_TYPE_RIGHT:I = 0x0

.field public static final CORNERS_TYPE_ROUND:I = 0x1

.field public static final CORNERS_TYPE_TOP_ROUND:I = 0x2

.field public static final DESCRIBE_TITLE_MAX_WIDTH_DP:F = 105.0f

.field public static final INTERACTIVE_MODE_CLICK:I = 0x1

.field public static final INTERACTIVE_MODE_NONE:I = 0x0

.field public static final INTERACTIVE_MODE_SELECTED:I = 0x2

.field public static final J0:Ljava/lang/String; = "OSListItemView"

.field public static K0:I = 0x1

.field public static final LEFT_DRAWABLE_DIMEN_BIG:I = 0x1

.field public static final LEFT_DRAWABLE_DIMEN_SMALL:I = 0x0

.field public static final NORMAL_MAX_WIDTH_DP:F = 360.0f

.field public static final SEEKBAR_TYPE_DISCRETE:I = 0x1

.field public static final SEEKBAR_TYPE_NORMAL:I


# instance fields
.field public A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public A0:Z

.field public B:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

.field public B0:Z

.field public C:Landroid/widget/TextView;

.field public C0:I

.field public D:Landroid/widget/TextView;

.field public D0:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public E0:Landroid/widget/LinearLayout;

.field public F:Landroid/widget/TextView;

.field public F0:Landroid/text/TextWatcher;

.field public G:Landroid/widget/TextView;

.field public G0:Landroid/text/TextWatcher;

.field public H:Landroid/widget/TextView;

.field public H0:Landroid/text/TextWatcher;

.field public I:Z

.field public I0:Z

.field public J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public K:Landroid/view/ViewTreeObserver;

.field public L:I

.field public M:Lcom/transsion/widgetslistitemlayout/c;

.field public N:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public O:Lcom/transsion/widgetslib/view/BadgeView;

.field public P:Landroid/widget/Button;

.field public Q:I

.field public R:Z

.field public S:Ljava/lang/String;

.field public T:Z

.field public U:Lcom/transsion/widgetslib/view/BadgeView;

.field public V:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

.field public a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public b:I

.field public b0:Z

.field public c:Ljava/lang/String;

.field public c0:Landroid/animation/ObjectAnimator;

.field public d:Ljava/lang/String;

.field public d0:Z

.field public e:Ljava/lang/String;

.field public e0:Z

.field public f:Ljava/lang/String;

.field public f0:Z

.field public g:Landroid/graphics/drawable/Drawable;

.field public g0:Landroid/view/View$OnClickListener;

.field public h:Ljava/lang/String;

.field public h0:Z

.field public i:Ljava/lang/String;

.field public i0:Landroid/view/View;

.field public j:Z

.field public j0:Landroid/view/View;

.field public k:Z

.field public k0:Landroid/view/View;

.field public l:I

.field public l0:Landroid/view/View;

.field public m:I

.field public m0:I

.field public n:I

.field public n0:I

.field public o:Z

.field public o0:Lcom/transsion/widgetslistitemlayout/b;

.field public p:Z

.field public p0:Z

.field public q:Z

.field public q0:Z

.field public r:Z

.field public r0:F

.field public s:Z

.field public s0:Landroid/graphics/Path;

.field public t:Z

.field public t0:Z

.field public u:I

.field public u0:Z

.field public v:Landroid/widget/Switch;

.field public v0:Z

.field public w:Landroid/widget/RadioButton;

.field public w0:Landroid/widget/FrameLayout;

.field public x:Lcom/transsion/widgetslib/view/OSCheckBox;

.field public x0:Landroid/view/View;

.field public y:Landroid/widget/ListView;

.field public y0:Ljava/lang/Integer;

.field public z:Landroid/widget/ProgressBar;

.field public z0:Lcom/transsion/hubsdk/api/graphics/TranCanvas;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    .line 5
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u:I

    .line 6
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    .line 9
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e0:Z

    .line 10
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    .line 11
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h0:Z

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslistitemlayout/R$attr;->os_layer_medium:I

    sget v5, Lcom/transsion/widgetslistitemlayout/R$color;->os_layer_medium_hios:I

    invoke-static {v3, v4, v5}, Lolb;->m(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m0:I

    .line 13
    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n0:I

    .line 14
    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    .line 15
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    const/4 v3, 0x0

    .line 16
    iput v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r0:F

    .line 17
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t0:Z

    .line 18
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    .line 19
    iput-boolean v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v0:Z

    .line 20
    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x0:Landroid/view/View;

    .line 21
    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y0:Ljava/lang/Integer;

    .line 22
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A0:Z

    .line 23
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B0:Z

    .line 24
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C0:I

    .line 25
    new-instance v2, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iput-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F0:Landroid/text/TextWatcher;

    .line 26
    new-instance v2, Lcom/transsion/widgetslistitemlayout/OSListItemView$d;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$d;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iput-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G0:Landroid/text/TextWatcher;

    .line 27
    new-instance v2, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iput-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H0:Landroid/text/TextWatcher;

    .line 28
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I0:Z

    .line 29
    iput p2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    .line 34
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u:I

    .line 35
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I:Z

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    .line 38
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e0:Z

    .line 39
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    .line 40
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h0:Z

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslistitemlayout/R$attr;->os_layer_medium:I

    sget v5, Lcom/transsion/widgetslistitemlayout/R$color;->os_layer_medium_hios:I

    invoke-static {v3, v4, v5}, Lolb;->m(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m0:I

    .line 42
    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n0:I

    .line 43
    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    .line 44
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    const/4 v3, 0x0

    .line 45
    iput v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r0:F

    .line 46
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t0:Z

    .line 47
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    .line 48
    iput-boolean v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v0:Z

    .line 49
    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x0:Landroid/view/View;

    .line 50
    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y0:Ljava/lang/Integer;

    .line 51
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A0:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B0:Z

    .line 53
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C0:I

    .line 54
    new-instance v1, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F0:Landroid/text/TextWatcher;

    .line 55
    new-instance v1, Lcom/transsion/widgetslistitemlayout/OSListItemView$d;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$d;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G0:Landroid/text/TextWatcher;

    .line 56
    new-instance v1, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iput-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H0:Landroid/text/TextWatcher;

    .line 57
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I0:Z

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const-string p3, ""

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i:Ljava/lang/String;

    const/4 p3, 0x0

    .line 61
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    .line 62
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u:I

    .line 63
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I:Z

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    .line 66
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e0:Z

    .line 67
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    .line 68
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h0:Z

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$attr;->os_layer_medium:I

    sget v4, Lcom/transsion/widgetslistitemlayout/R$color;->os_layer_medium_hios:I

    invoke-static {v2, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m0:I

    .line 70
    iput v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n0:I

    .line 71
    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    .line 72
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    const/4 v2, 0x0

    .line 73
    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r0:F

    .line 74
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t0:Z

    .line 75
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    .line 76
    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v0:Z

    .line 77
    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x0:Landroid/view/View;

    .line 78
    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y0:Ljava/lang/Integer;

    .line 79
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A0:Z

    .line 80
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B0:Z

    .line 81
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C0:I

    .line 82
    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$c;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F0:Landroid/text/TextWatcher;

    .line 83
    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$d;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$d;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G0:Landroid/text/TextWatcher;

    .line 84
    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$e;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H0:Landroid/text/TextWatcher;

    .line 85
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I0:Z

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static T(Lcom/transsion/widgetslistitemlayout/OSListItemView$j;Lcom/transsion/widgetslistitemlayout/OSListItemView$j;)Z
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$j;->a:I

    iget v1, p1, Lcom/transsion/widgetslistitemlayout/OSListItemView$j;->a:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$j;->b:I

    iget v1, p1, Lcom/transsion/widgetslistitemlayout/OSListItemView$j;->b:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$j;->c:Z

    iget-boolean v1, p1, Lcom/transsion/widgetslistitemlayout/OSListItemView$j;->c:Z

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$j;->d:I

    iget p1, p1, Lcom/transsion/widgetslistitemlayout/OSListItemView$j;->d:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/view/OSCheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b0:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A0:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v0:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    return-object p0
.end method

.method private getActiveDescribeTitleView()Landroid/widget/TextView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslistitemlayout/c;->n(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private getBasePaddingBottom()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private getBasePaddingTop()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private getCornersAwarePaddingBottom()I
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getBasePaddingBottom()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getCornersExtraPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getCornersAwarePaddingTop()I
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getBasePaddingTop()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getCornersExtraPaddingTop()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getCornersExtraPaddingBottom()I
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_corner_extra:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getCornersExtraPaddingTop()I
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_corner_extra:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getDefaultSeekbarValueWidth()I
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_fontsize_subhead:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p0, "100%"

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static getInteractiveMode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->K0:I

    return v0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslistitemlayout/OSListItemView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslistitemlayout/OSListItemView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslistitemlayout/OSListItemView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b0:Z

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/widgetslistitemlayout/OSListItemView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/widgetslistitemlayout/OSListItemView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v0:Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/widgetslistitemlayout/OSListItemView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/widgetslistitemlayout/OSListItemView;Landroid/widget/TextView;I)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A(Landroid/widget/TextView;I)I

    move-result p0

    return p0
.end method

.method public static setInteractiveMode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->K0:I

    return-void
.end method

.method private setItemBg(Ljava/lang/Boolean;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m0:I

    invoke-direct {v5, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    iget-boolean v4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    iget-boolean v6, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t0:Z

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/widgetslistitemlayout/b;->j(IIZLandroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    iget v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n0:I

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    iget-boolean v4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    iget-boolean v6, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t0:Z

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/widgetslistitemlayout/b;->j(IIZLandroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C()V

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P()V

    return-void
.end method


# virtual methods
.method public final A(Landroid/widget/TextView;I)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return p0
.end method

.method public B()Lcom/transsion/widgetslistitemlayout/OSListItemView$j;
    .locals 4

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getActiveDescribeTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    :cond_3
    new-instance p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$j;

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/transsion/widgetslistitemlayout/OSListItemView$j;-><init>(IIZI)V

    return-object p0
.end method

.method public final C()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$id;->lil_seekbar_value_below_title:I

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/transsion/widgetslistitemlayout/R$id;->lil_seekbar_value_no_title:I

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    sget v2, Lcom/transsion/widgetslistitemlayout/R$id;->lil_title_row:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gtz v2, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    sget v6, Lcom/transsion/widgetslistitemlayout/R$id;->lil_seekbar_value:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    :goto_0
    add-int/2addr v6, v7

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    iget-object v7, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_space100:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-float/2addr v3, v4

    int-to-float v4, v6

    add-float/2addr v3, v4

    int-to-float v4, v5

    add-float/2addr v3, v4

    int-to-float v4, v8

    add-float/2addr v3, v4

    int-to-float v4, v7

    add-float/2addr v3, v4

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_a

    if-eqz v0, :cond_5

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    if-eq v0, v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    if-eq v1, v0, :cond_9

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H0:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y()V

    :cond_a
    :goto_3
    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslistitemlayout/c;->O(Landroid/widget/TextView;)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/c;->i()V

    return-void
.end method

.method public final E()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h0:Z

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g0:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h0:Z

    :cond_2
    return-void
.end method

.method public final F(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/16 v1, 0xf

    aget v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p0, v0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget v1, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslistitemlayout/R$id;->lil_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final H()V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_type_item_group_title_checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_right_checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_right_checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {p0, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_right_checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    :goto_0
    return-void
.end method

.method public final I(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslistitemlayout/b;

    invoke-direct {v0, p1, p0}, Lcom/transsion/widgetslistitemlayout/b;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/widgetslistitemlayout/c;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslistitemlayout/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    new-instance v1, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$f;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslistitemlayout/c;->J(Lcom/transsion/widgetslistitemlayout/c$h;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_radius_l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r0:F

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z0:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z0:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->s0:Landroid/graphics/Path;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->s0:Landroid/graphics/Path;

    :cond_3
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eqz p2, :cond_26

    sget-object v2, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_25

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_title:I

    if-ne v5, v6, :cond_4

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_subtitle:I

    if-ne v5, v6, :cond_5

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    goto/16 :goto_1

    :cond_5
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_describe_title:I

    if-ne v5, v6, :cond_6

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    iput-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_describe_subtitle:I

    if-ne v5, v6, :cond_7

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_left_image:I

    if-ne v5, v6, :cond_8

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j:Z

    goto/16 :goto_1

    :cond_8
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_left_text_icon:I

    if-ne v5, v6, :cond_9

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j:Z

    goto/16 :goto_1

    :cond_9
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_left_image_dimen:I

    if-ne v5, v6, :cond_a

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l:I

    goto/16 :goto_1

    :cond_a
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_right_layout_type:I

    if-ne v5, v6, :cond_d

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k:Z

    :cond_b
    const/4 v6, 0x3

    if-eq v5, v6, :cond_c

    const/4 v6, 0x4

    if-eq v5, v6, :cond_c

    const/4 v6, 0x5

    if-eq v5, v6, :cond_c

    if-ne v5, v0, :cond_24

    :cond_c
    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    goto/16 :goto_1

    :cond_d
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_right_image:I

    if-ne v5, v6, :cond_e

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_sub_progressbar:I

    if-ne v5, v6, :cond_f

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    goto/16 :goto_1

    :cond_f
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_sub_seekbar:I

    if-ne v5, v6, :cond_10

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->p:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    goto/16 :goto_1

    :cond_10
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_seekbar_type:I

    if-ne v5, v6, :cond_11

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u:I

    goto/16 :goto_1

    :cond_11
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_show_seekbar_value:I

    if-ne v5, v6, :cond_12

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A0:Z

    goto/16 :goto_1

    :cond_12
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_right_show_divide_line:I

    if-ne v5, v6, :cond_13

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q:Z

    goto/16 :goto_1

    :cond_13
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_corners_angle_type:I

    if-ne v5, v6, :cond_14

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    goto/16 :goto_1

    :cond_14
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_item_type:I

    if-ne v5, v6, :cond_15

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    goto/16 :goto_1

    :cond_15
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_describe_show_red_dot:I

    if-ne v5, v6, :cond_16

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    goto/16 :goto_1

    :cond_16
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_group_title_show_arrow:I

    if-ne v5, v6, :cond_17

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->s:Z

    goto/16 :goto_1

    :cond_17
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_group_title_expand_up_and_down:I

    if-ne v5, v6, :cond_18

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    goto/16 :goto_1

    :cond_18
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_open_new_page:I

    if-ne v5, v6, :cond_19

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setOpenNewPage(Z)V

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->p0:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    goto/16 :goto_1

    :cond_19
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_interactive_type:I

    if-ne v5, v6, :cond_1a

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n0:I

    goto/16 :goto_1

    :cond_1a
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_button_style_mod:I

    if-ne v5, v6, :cond_1b

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->Q:I

    goto/16 :goto_1

    :cond_1b
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_button_short:I

    if-ne v5, v6, :cond_1c

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->R:Z

    goto :goto_1

    :cond_1c
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_button_text:I

    if-ne v5, v6, :cond_1d

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->S:Ljava/lang/String;

    goto :goto_1

    :cond_1d
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_left_image_show_badge:I

    if-ne v5, v6, :cond_1e

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->T:Z

    goto :goto_1

    :cond_1e
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_show_click_bg:I

    if-ne v5, v6, :cond_1f

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    goto :goto_1

    :cond_1f
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_is_hios:I

    if-ne v5, v6, :cond_20

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    goto :goto_1

    :cond_20
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_intercept_right_view_touch_event:I

    if-ne v5, v6, :cond_21

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e0:Z

    goto :goto_1

    :cond_21
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_bg_color:I

    if-ne v5, v6, :cond_22

    sget v6, Lcom/transsion/widgetslistitemlayout/R$color;->os_layer_medium_hios:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m0:I

    goto :goto_1

    :cond_22
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_show_bottom_divider:I

    if-ne v5, v6, :cond_23

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t0:Z

    goto :goto_1

    :cond_23
    sget v6, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSListItemView_lil_close_hyphenation:I

    if-ne v5, v6, :cond_24

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B0:Z

    :cond_24
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_25
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_26
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslistitemlayout/R$layout;->os_view_list_item_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-ne p1, v1, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_title_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :cond_27
    move p2, p1

    goto :goto_2

    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_xos:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget p2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    if-eq p2, v0, :cond_29

    iget-boolean p2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->s:Z

    if-eqz p2, :cond_27

    :cond_29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_end_xos_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_content_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2b

    iget-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setItemBg(Ljava/lang/Boolean;)V

    :cond_2b
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    return-void
.end method

.method public final J()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_type_item_group_title_arrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->updateGroupTitle()V

    return-void
.end method

.method public final K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z0:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->smoothcornerCubicEdgeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final L(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/widgetslistitemlayout/c;->z(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final M(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final N(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 4

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p2, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    const/4 v1, 0x0

    aget v2, p0, v1

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float v2, p0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p0, p2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final O()V
    .locals 22

    move-object/from16 v6, p0

    iget v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/16 v7, 0x10

    const/16 v8, 0x15

    const/4 v9, -0x1

    const/4 v10, 0x6

    const/4 v11, 0x1

    if-ne v0, v11, :cond_9

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E:Landroid/widget/TextView;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_type_item_group_title:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_type_item_group_title_title:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E:Landroid/widget/TextView;

    :cond_0
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    invoke-static {v1}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    if-nez v0, :cond_2

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_type_item_group_title_subtitle:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    if-ne v0, v10, :cond_7

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    if-nez v0, :cond_5

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_type_item_group_title_checkbox:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    goto :goto_0

    :cond_4
    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_right_checkbox:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    :cond_5
    :goto_0
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    if-eqz v0, :cond_7

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v9, :cond_6

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    sget v1, Lcom/transsion/widgetslistitemlayout/R$id;->lil_right_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    :cond_6
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->s:Z

    if-nez v0, :cond_8

    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t:Z

    if-eqz v0, :cond_5f

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J()V

    goto/16 :goto_1f

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getBasePaddingTop()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getBasePaddingBottom()I

    move-result v0

    iget-boolean v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    move v14, v0

    move v15, v1

    goto :goto_1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_xos:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_end_xos:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    move v15, v0

    move v14, v13

    :goto_1
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    const/16 v5, 0x14

    const/16 v4, 0xf

    const/4 v3, 0x0

    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j:Z

    if-nez v0, :cond_b

    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r:Z

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    if-nez v0, :cond_c

    :cond_b
    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_title_layout:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v2, v3, v13, v3, v14}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v0, :cond_e

    sget v2, Lcom/transsion/widgetslistitemlayout/R$id;->lil_left_icon_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-boolean v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j:Z

    if-eqz v2, :cond_d

    move v2, v3

    goto :goto_2

    :cond_d
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_space250:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :cond_f
    move/from16 v16, v1

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-nez v0, :cond_11

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_left_layout:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    goto :goto_3

    :cond_10
    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_left_image:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    :goto_3
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_11
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v0, :cond_13

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_left_text_icon_layout:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    goto :goto_4

    :cond_12
    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_left_text_icon:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    :goto_4
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    :goto_5
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->T:Z

    if-eqz v0, :cond_15

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_left_image_badge:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/BadgeView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->U:Lcom/transsion/widgetslib/view/BadgeView;

    goto :goto_6

    :cond_14
    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_left_image_badge:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/BadgeView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->U:Lcom/transsion/widgetslib/view/BadgeView;

    :goto_6
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->U:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz v0, :cond_15

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_left_image_badge_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_left_image_badge_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->U:Lcom/transsion/widgetslib/view/BadgeView;

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    const/16 v7, 0x8

    const/4 v10, 0x2

    move-object/from16 v2, v21

    move v9, v3

    move/from16 v3, v18

    move v7, v4

    move-object/from16 v4, v17

    move v8, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslistitemlayout/OSListItemView$6;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;Landroid/view/View;ILcom/transsion/widgetslib/view/BadgeView;I)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_7

    :cond_15
    move v9, v3

    move v7, v4

    move v8, v5

    const/4 v10, 0x2

    :goto_7
    iget v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l:I

    if-ne v0, v11, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_left_image_big_dimen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_content_min_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int v3, v0, v13

    add-int/2addr v3, v14

    if-le v3, v1, :cond_17

    sub-int/2addr v1, v0

    div-int/2addr v1, v10

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v13, v2

    add-int/2addr v13, v1

    sub-int/2addr v14, v2

    add-int/2addr v14, v1

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v9, v13, v9, v14}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_8

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_left_image_small_dimen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_17
    :goto_8
    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v1, :cond_18

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_18
    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v1, :cond_19

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v1, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    :goto_9
    move/from16 v1, v16

    goto :goto_a

    :cond_1a
    move v9, v3

    move v7, v4

    move v8, v5

    const/4 v10, 0x2

    :goto_a
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-nez v0, :cond_1b

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v0, :cond_3c

    :cond_1b
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-nez v0, :cond_1c

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_title_layout:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v4, v9, v13, v9, v14}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    if-nez v0, :cond_1d

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    sget v4, Lcom/transsion/widgetslistitemlayout/R$id;->lil_title:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    :cond_1d
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    invoke-static {v4}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r:Z

    if-eqz v0, :cond_20

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    if-nez v0, :cond_1f

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_right_layout:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    :cond_1f
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O:Lcom/transsion/widgetslib/view/BadgeView;

    if-nez v0, :cond_20

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    sget v4, Lcom/transsion/widgetslistitemlayout/R$id;->os_stub_list_view_red_point:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/BadgeView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O:Lcom/transsion/widgetslib/view/BadgeView;

    iget-boolean v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-eqz v4, :cond_20

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G()V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_21
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V()V

    :cond_23
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o:Z

    if-eqz v0, :cond_25

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z:Landroid/widget/ProgressBar;

    if-nez v0, :cond_25

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    sget v4, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_sub_progressbar:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    if-nez v0, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_end_xos_progress:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    :cond_24
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v6, v12, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->R(Landroid/util/DisplayMetrics;Landroid/view/View;)V

    :cond_25
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->p:Z

    if-eqz v0, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->adaptSeekbarShadow()V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_27

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_seekbar_root_layout:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    goto :goto_c

    :cond_26
    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_seekbar_root_layout:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    :cond_27
    :goto_c
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3b

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    sget v4, Lcom/transsion/widgetslistitemlayout/R$id;->lil_sub_seekbar:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    sget v4, Lcom/transsion/widgetslistitemlayout/R$id;->lil_sub_section_seekbar:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    if-eqz v0, :cond_28

    iget-boolean v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setForceHios(Z)V

    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_thumb_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/2addr v0, v2

    iget v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u:I

    if-ne v4, v11, :cond_2a

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v4, :cond_29

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    if-eqz v4, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_space025:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    neg-int v0, v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_2a
    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    if-eqz v4, :cond_2b

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v4, :cond_2c

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    neg-int v0, v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2c
    :goto_d
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    sget v4, Lcom/transsion/widgetslistitemlayout/R$id;->lil_seekbar_value_no_title:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v4, :cond_2f

    sget v5, Lcom/transsion/widgetslistitemlayout/R$id;->lil_seekbar_value:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    if-eqz v4, :cond_2d

    iget-object v5, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H0:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    iget-object v5, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H0:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2d
    if-eqz v0, :cond_2f

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_2e
    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    :cond_2f
    :goto_e
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_title_layout:I

    iget-object v5, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v5, :cond_31

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_30

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    :cond_30
    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_31
    const/16 v12, 0x8

    :goto_f
    iget-object v5, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v12, :cond_32

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_12

    :cond_32
    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    :goto_10
    const/4 v4, -0x1

    goto :goto_11

    :cond_33
    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    goto :goto_10

    :cond_34
    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_11
    if-eq v5, v4, :cond_35

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_12

    :cond_35
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_12
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_space075:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getBasePaddingTop()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getBasePaddingBottom()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->K()Z

    move-result v12

    if-eqz v12, :cond_36

    iget v12, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    if-eq v12, v11, :cond_37

    if-eq v12, v3, :cond_37

    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_space025:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v8, v12

    :cond_37
    iget-object v12, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v12, :cond_38

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_38

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9, v9, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_13

    :cond_38
    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9, v5, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    :goto_13
    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget-object v8, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    iget-object v12, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    invoke-virtual {v4, v5, v8, v12, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_39
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3a
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3b
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A0:Z

    if-eqz v0, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->Y()V

    :cond_3c
    iget v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    if-nez v0, :cond_3d

    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    if-nez v0, :cond_5e

    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->p:Z

    if-nez v0, :cond_5e

    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o:Z

    if-nez v0, :cond_5e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_end_xos:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    goto/16 :goto_1e

    :cond_3d
    iget-boolean v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    if-nez v4, :cond_40

    iget-boolean v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->p:Z

    if-nez v4, :cond_40

    iget-boolean v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o:Z

    if-nez v4, :cond_40

    if-eq v0, v10, :cond_3f

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3f

    iget v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-ne v0, v11, :cond_3e

    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->s:Z

    if-eqz v0, :cond_3e

    goto :goto_14

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_end_xos:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    goto :goto_15

    :cond_3f
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding_end_xos_icon:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    :cond_40
    :goto_15
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    if-nez v0, :cond_41

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_right_layout:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    :cond_41
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q:Z

    if-eqz v0, :cond_42

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l0:Landroid/view/View;

    if-nez v0, :cond_42

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_right_divide_line:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l0:Landroid/view/View;

    iget-boolean v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-eqz v4, :cond_42

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_42
    iget v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    if-ne v0, v10, :cond_51

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v0, :cond_46

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    if-nez v0, :cond_43

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_right_layout:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    :cond_43
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    sget v2, Lcom/transsion/widgetslistitemlayout/R$id;->lil_right_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-boolean v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-eqz v2, :cond_44

    const/16 v3, 0x8

    goto :goto_16

    :cond_44
    move v3, v9

    :goto_16
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$color;->os_icon_secondary:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-ne v0, v10, :cond_46

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_fontsize_h3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v2, Lcom/transsion/widgetslistitemlayout/R$attr;->os_icon_disable:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslistitemlayout/R$color;->os_icon_disable_hios:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lolb;->l(IILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lolb;->l0()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_left_image_badge_margin_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v9, v9, v2, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_17

    :cond_45
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_left_image_badge_margin_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_46
    :goto_17
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k:Z

    if-eqz v0, :cond_49

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v2, Lcom/transsion/widgetslistitemlayout/R$string;->os_arrow_right_bold:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v2, Lcom/transsion/widgetslistitemlayout/R$attr;->os_icon_disable:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslistitemlayout/R$color;->os_icon_disable_hios:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lolb;->l(IILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_fontsize_h3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lolb;->l0()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotationY(F)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_left_image_badge_margin_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v9, v9, v2, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_18

    :cond_47
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_left_image_badge_margin_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_18
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->p0:Z

    if-nez v0, :cond_49

    invoke-virtual {v6, v11}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setOpenNewPage(Z)V

    goto :goto_19

    :cond_48
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_49
    :goto_19
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    if-nez v0, :cond_4a

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_describe_layout:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    iget-boolean v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-eqz v2, :cond_4a

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4a
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    if-nez v0, :cond_4c

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_describe_title:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f:Ljava/lang/String;

    if-eqz v2, :cond_4b

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v9}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_4b
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslistitemlayout/c;->f(Landroid/widget/TextView;)V

    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-eqz v0, :cond_4c

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V()V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->resetDescribeTitleWidth()V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    invoke-static {v2}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4d
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0}, Lcom/transsion/widgetslistitemlayout/c;->r()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-eqz v2, :cond_4e

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4e
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-nez v0, :cond_4f

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/widgetslistitemlayout/c;->Q(Landroid/widget/TextView;Landroid/view/View;Z)V

    :cond_4f
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H:Landroid/widget/TextView;

    if-nez v0, :cond_50

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_describe_subtitle:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H:Landroid/widget/TextView;

    :cond_50
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    :cond_51
    if-ne v0, v3, :cond_52

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w:Landroid/widget/RadioButton;

    if-nez v0, :cond_5d

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_right_radio:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w:Landroid/widget/RadioButton;

    invoke-virtual {v0, v9}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w:Landroid/widget/RadioButton;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w:Landroid/widget/RadioButton;

    invoke-virtual {v0, v11}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    goto/16 :goto_1d

    :cond_52
    if-ne v0, v2, :cond_53

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v:Landroid/widget/Switch;

    if-nez v0, :cond_5d

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_right_switch:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v:Landroid/widget/Switch;

    goto/16 :goto_1d

    :cond_53
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    if-nez v2, :cond_54

    sget v2, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_right_button:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    :cond_54
    iget v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->Q:I

    if-eq v2, v11, :cond_57

    if-eq v2, v10, :cond_56

    if-eq v2, v3, :cond_55

    goto :goto_1a

    :cond_55
    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_button_on_color_outline_selector:I

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_outline_white:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1a

    :cond_56
    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_red_color_selector:I

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1a

    :cond_57
    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_selector:I

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_btn_big_gray:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1a
    invoke-static {v0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-static {v0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-static {v0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_right_button_width_large_patch:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_1b

    :cond_59
    move v3, v9

    :goto_1b
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->R:Z

    if-eqz v0, :cond_5a

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_right_button_short_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_1c

    :cond_5a
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_right_button_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    :goto_1c
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->S:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_5b
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5d

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    if-nez v0, :cond_5c

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_right_checkbox:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v0, v9}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v0, v11}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    :cond_5c
    iget v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-nez v0, :cond_5d

    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$g;

    invoke-direct {v0, v6}, Lcom/transsion/widgetslistitemlayout/OSListItemView$g;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    invoke-virtual {v6, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5d
    :goto_1d
    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v6, v2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z(Landroid/view/View;)V

    iget-object v2, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5e
    :goto_1e
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getCornersExtraPaddingTop()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getCornersExtraPaddingBottom()I

    move-result v2

    invoke-virtual {v6, v1, v0, v15, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v()V

    :cond_5f
    :goto_1f
    iget-boolean v0, v6, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t0:Z

    invoke-virtual {v6, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setBottomDividerVisible(Z)V

    return-void
.end method

.method public final P()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->K:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->K:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->K:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method

.method public final Q(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final R(Landroid/util/DisplayMetrics;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z(Landroid/view/View;)V

    return-void
.end method

.method public final S()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$i;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$i;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h0:Z

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h0:Z

    :cond_2
    return-void
.end method

.method public final U(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0}, Lcom/transsion/widgetslistitemlayout/c;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0}, Lcom/transsion/widgetslistitemlayout/c;->w()Z

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->L:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->L:I

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->L:I

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    sget v2, Lcom/transsion/widgetslistitemlayout/R$id;->lil_title_container:I

    new-instance v3, Lcom/transsion/widgetslistitemlayout/OSListItemView$13;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$13;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/widgetslistitemlayout/c;->m(Landroid/view/View;ILjava/lang/Runnable;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/widgetslistitemlayout/c;->L(ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-eqz p0, :cond_6

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final V()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getActiveDescribeTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W(Landroid/widget/TextView;)V

    return-void
.end method

.method public final W(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B0:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBreakStrategy(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v0

    if-eq v0, p0, :cond_3

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    :cond_3
    return-void
.end method

.method public final X()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l0:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0}, Lcom/transsion/widgetslistitemlayout/c;->r()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0}, Lcom/transsion/widgetslistitemlayout/c;->x()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->clearEditFocus()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0}, Lcom/transsion/widgetslistitemlayout/c;->r()Landroid/widget/EditText;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v3}, Lcom/transsion/widgetslistitemlayout/c;->x()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->adjustViewDescribeTitleWidth()V

    :cond_b
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final Y()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    sget v2, Lcom/transsion/widgetslistitemlayout/R$id;->lil_seekbar_value:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    sget v2, Lcom/transsion/widgetslistitemlayout/R$id;->lil_seekbar_value_no_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_seekbar_value_below_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public adaptSeekbarShadow()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method public adjustViewDescribeTitleWidth()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J0:Ljava/lang/String;

    const-string v1, "adjustViewDescribeTitleWidth()"

    invoke-static {v0, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I:Z

    return-void
.end method

.method public bottomCornersRound()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public clearEditFocus()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    new-instance v1, Lcom/transsion/widgetslistitemlayout/OSListItemView$14;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$14;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslistitemlayout/c;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cornersRound()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I0:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->Q(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->Q(Z)V

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I0:Z

    :cond_3
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->d0:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z0:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r0:F

    sget-object v9, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->ALL:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->clipRRect(Landroid/graphics/Canvas;FFFFFLcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z0:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r0:F

    sget-object v9, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->TOP:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->clipRRect(Landroid/graphics/Canvas;FFFFFLcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z0:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget v8, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r0:F

    sget-object v9, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->BOTTOM:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->clipRRect(Landroid/graphics/Canvas;FFFFFLcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getItemBgHelper(Landroid/content/Context;)Lcom/transsion/widgetslistitemlayout/b;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    invoke-virtual {v0, p1, p0, v1}, Lcom/transsion/widgetslistitemlayout/b;->h(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBadgeView()Lcom/transsion/widgetslib/view/BadgeView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->r:Z

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O:Lcom/transsion/widgetslib/view/BadgeView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O:Lcom/transsion/widgetslib/view/BadgeView;

    return-object p0
.end method

.method public getButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    return-object p0
.end method

.method public getCheckBox()Lcom/transsion/widgetslib/view/OSCheckBox;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    return-object p0
.end method

.method public getEditHelper()Lcom/transsion/widgetslistitemlayout/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    return-object p0
.end method

.method public getEditableContent()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/c;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEditableDefaultText()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/c;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemBgHelper(Landroid/content/Context;)Lcom/transsion/widgetslistitemlayout/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslistitemlayout/b;

    invoke-direct {v0, p1, p0}, Lcom/transsion/widgetslistitemlayout/b;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    return-object p0
.end method

.method public getLeftImageBadgeView()Lcom/transsion/widgetslib/view/BadgeView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->U:Lcom/transsion/widgetslib/view/BadgeView;

    return-object p0
.end method

.method public getLeftTextIconView(I)Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j:Z

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l:I

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public getPopupListContentView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y:Landroid/widget/ListView;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/widgetslistitemlayout/R$layout;->os_popup_window_layout:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y:Landroid/widget/ListView;

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y:Landroid/widget/ListView;

    return-object p0
.end method

.method public getPopupWindow(Landroid/content/Context;Landroid/view/View;I[Ljava/lang/String;)Lcom/transsion/widgetslib/widget/OSPopupWindow;
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getPopupListContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, p4}, Lqb9;->b(Landroid/content/Context;[Ljava/lang/String;)Lqb9;

    move-result-object v2

    invoke-virtual {v2, p3}, Lqb9;->setSelected(I)V

    iget-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y:Landroid/widget/ListView;

    invoke-virtual {p3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p3, Lcom/transsion/widgetslib/widget/OSPopupWindow;

    sget v3, Lcom/transsion/widgetslistitemlayout/R$style;->OsLiquidPopupWindowStyle:I

    const/4 v4, 0x0

    invoke-direct {p3, p1, v0, v4, v3}, Lcom/transsion/widgetslib/widget/OSPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y:Landroid/widget/ListView;

    invoke-virtual {p3, p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setContentView(Landroid/view/View;)V

    invoke-static {p1, v2}, Lolb;->A0(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setWidth(I)V

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p3, p0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    array-length p1, p4

    invoke-static {p2, v1, p1}, Lolb;->u(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3, p0, p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->J(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v4, p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->J(ZZ)V

    :goto_0
    return-object p3
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o:Z

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public getRadioButton()Landroid/widget/RadioButton;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public getRightImageView()Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public getSectionSeekBar()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->p:Z

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u:I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->B:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    return-object p0
.end method

.method public getSeekBar()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->p:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u:I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    return-object p0
.end method

.method public getSeekbarValueView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    return-object p0
.end method

.method public getSwitch()Landroid/widget/Switch;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v:Landroid/widget/Switch;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v:Landroid/widget/Switch;

    return-object p0
.end method

.method public getViewDescribeSubtitle()Landroid/widget/TextView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H:Landroid/widget/TextView;

    return-object p0
.end method

.method public getViewDescribeTitle()Landroid/widget/TextView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k:Z

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getActiveDescribeTitleView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getViewDescribeTitleEditText()Landroid/widget/EditText;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setDescribeTitleEditable(Z)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/c;->o()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public getViewGroupSubTitle()Landroid/widget/TextView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    return-object p0
.end method

.method public getViewGroupTitle()Landroid/widget/TextView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E:Landroid/widget/TextView;

    return-object p0
.end method

.method public getViewGroupTitleArrow()Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public getViewLeftImage(I)Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j:Z

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l:I

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    return-object p0
.end method

.method public getViewRightDivideLine()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l0:Landroid/view/View;

    if-nez v0, :cond_2

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_right_divide_line:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l0:Landroid/view/View;

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->l0:Landroid/view/View;

    return-object p0
.end method

.method public getViewSubtitle()Landroid/widget/TextView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    return-object p0
.end method

.method public getViewTitle()Landroid/widget/TextView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method public isGroupArrowExpend()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b0:Z

    return p0
.end method

.method public isMultiSelectMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    return p0
.end method

.method public isOpenNewPage()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    invoke-virtual {p0}, Lmb7;->c()Z

    move-result p0

    return p0
.end method

.method public isShowGroupTitleArrow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->s:Z

    return p0
.end method

.method public isTypeTitleArrowAnimRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c0:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslistitemlayout/c;->f(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G0:Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F0:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H0:Landroid/text/TextWatcher;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H0:Landroid/text/TextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F0:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G0:Landroid/text/TextWatcher;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H0:Landroid/text/TextWatcher;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v1}, Lcom/transsion/widgetslistitemlayout/c;->x()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->L(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->clearEditFocus()V

    :cond_0
    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I0:Z

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslistitemlayout/R$string;->os_arrow_right_bold:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslistitemlayout/R$string;->os_Expand_up_and_down:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e0:Z

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    if-eqz v2, :cond_9

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_6
    return v1

    :cond_7
    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F(Landroid/view/View;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getLeftIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    if-eq v1, v5, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_thumb_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    neg-int v0, v5

    :goto_3
    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    neg-int v2, v5

    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    if-ne v3, v0, :cond_7

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-eq v3, v2, :cond_8

    :cond_7
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getActiveDescribeTitleView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->adjustViewDescribeTitleWidth()V

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A0:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/transsion/widgetslistitemlayout/OSListItemView$4;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$4;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->I0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    invoke-virtual {v0, p1}, Lmb7;->d(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->restoreTouchAnim()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->restoreTouchAnim()V

    :cond_0
    return-void
.end method

.method public resetCornersRadius()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public resetDescribeTitleWidth()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslistitemlayout/c;->B(Landroid/widget/TextView;)V

    return-void
.end method

.method public resetTouchAnimWhenUnable()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    invoke-virtual {p0}, Lmb7;->f()V

    return-void
.end method

.method public restoreTouchAnim()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    invoke-virtual {p0}, Lmb7;->g()V

    return-void
.end method

.method public setBottomDividerColor(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y0:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w0:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x0:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y0:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public setBottomDividerVisible(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w0:Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    sget p1, Lcom/transsion/widgetslistitemlayout/R$id;->lil_stub_divide_layout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w0:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_bottom_divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x0:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w0:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w0:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w0:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v1, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y0:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x0:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w0:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_5

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setCheckBoxVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->updateGroupTitle()V

    :cond_1
    return-void
.end method

.method public setDescribeTitleEditable(Z)V
    .locals 4

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    if-nez v0, :cond_2

    iput v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslistitemlayout/c;->G(Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslistitemlayout/c;->K(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    new-instance v3, Lcom/transsion/widgetslistitemlayout/OSListItemView$12;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$12;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/widgetslistitemlayout/c;->l(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslistitemlayout/c;->Q(Landroid/widget/TextView;Landroid/view/View;Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->adjustViewDescribeTitleWidth()V

    return-void
.end method

.method public setEditableContent(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/transsion/widgetslistitemlayout/c;->H(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void
.end method

.method public setEditableDefaultText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslistitemlayout/c;->I(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setEditableContent(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/c;->D(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->resetTouchAnimWhenUnable()V

    :cond_0
    return-void
.end method

.method public setGroupArrowExpend(Z)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b0:Z

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setShowGroupTitleArrow(Z)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, -0x3ccc0000    # -180.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    :cond_2
    return-void
.end method

.method public setInteractiveType(I)V
    .locals 4

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n0:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v3, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->q0:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setItemBg(Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setIsShowLeftImageBadgeView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->T:Z

    return-void
.end method

.method public setItemEnable(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$attr;->os_text_primary:I

    sget v2, Lcom/transsion/widgetslistitemlayout/R$color;->os_text_primary_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$attr;->os_text_disable:I

    sget v2, Lcom/transsion/widgetslistitemlayout/R$color;->os_text_disable_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$attr;->os_text_info:I

    sget v3, Lcom/transsion/widgetslistitemlayout/R$color;->os_text_info_hios:I

    invoke-static {v1, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$attr;->os_text_disable:I

    sget v3, Lcom/transsion/widgetslistitemlayout/R$color;->os_text_disable_hios:I

    invoke-static {v1, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslistitemlayout/c;->E(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    const/16 v1, 0xff

    goto :goto_2

    :cond_6
    const/16 v1, 0x66

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P:Landroid/widget/Button;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->w:Landroid/widget/RadioButton;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v:Landroid/widget/Switch;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$attr;->os_brand_primary:I

    sget v2, Lcom/transsion/widgetslistitemlayout/R$color;->os_brand_primary_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    if-nez p1, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslistitemlayout/R$attr;->os_grayfill_base:I

    sget v1, Lcom/transsion/widgetslistitemlayout/R$color;->os_grayfill_base_hios:I

    invoke-static {p1, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    :cond_c
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z:Landroid/widget/ProgressBar;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_d
    return-void
.end method

.method public setLeftImageStrokeColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->setStrokeColor(I)V

    :cond_0
    return-void
.end method

.method public setLeftImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getViewLeftImage(I)Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftTextIcon(ILjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getLeftTextIconView(I)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMultiSelectMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->X()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->H()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->S()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setCheckBoxVisible(Z)V

    :cond_2
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->h0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->g0:Landroid/view/View$OnClickListener;

    iget-boolean v2, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setItemBg(Ljava/lang/Boolean;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    if-eq v0, v1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setItemBg(Ljava/lang/Boolean;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1    # Landroid/view/View$OnLongClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setItemBg(Ljava/lang/Boolean;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMenuClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y:Landroid/widget/ListView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public setOpenNewPage(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->o0:Lcom/transsion/widgetslistitemlayout/b;

    invoke-virtual {p0, p1}, Lmb7;->setOpenNewPage(Z)V

    return-void
.end method

.method public setRedDotVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O:Lcom/transsion/widgetslib/view/BadgeView;

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->os_stub_list_view_red_point:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/BadgeView;

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O:Lcom/transsion/widgetslib/view/BadgeView;

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O:Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setRightImageArrowIcon()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->m:I

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->O()V

    return-void
.end method

.method public setSeekbarValueText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSeekbarValueWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C0:I

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->y()V

    :cond_0
    return-void
.end method

.method public setShowGroupTitleArrow(Z)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->s:Z

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setShowSeekbarValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A0:Z

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->A:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->Y()V

    :cond_0
    return-void
.end method

.method public startTypeTitleArrowAnim()V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->isTypeTitleArrowAnimRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b0:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c0:Landroid/animation/ObjectAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c0:Landroid/animation/ObjectAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c0:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method public topCornersRound()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->n:I

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->z(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateGroupTitle()V
    .locals 8

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    const/16 v1, 0xf

    const/16 v2, 0x15

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_1

    sget v0, Lcom/transsion/widgetslistitemlayout/R$id;->lil_right_checkbox:I

    iget-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v5, v0}, Landroid/view/View;->setId(I)V

    :cond_1
    sget-object v5, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J0:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateGroupTitle: checkBoxId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->x:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_list_item_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    iget-boolean v5, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->t:Z

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$string;->os_Expand_up_and_down:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;

    invoke-direct {v1, p0, v4}, Lcom/transsion/widgetslistitemlayout/OSListItemView$a;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    :cond_4
    iget-boolean v4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->s:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const-string v5, "arrow_down"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x10

    if-eq v0, v3, :cond_5

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->V:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const-string v1, "rotationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c0:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslistitemlayout/R$anim;->os_interpolator_liv_item_collapse:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c0:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->c0:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/widgetslistitemlayout/OSListItemView$b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$b;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final v()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->P()V

    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSListItemView$h;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView$h;-><init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->K:Landroid/view/ViewTreeObserver;

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final w()V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->f0:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getActiveDescribeTitleView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    if-nez v2, :cond_1

    goto/16 :goto_c

    :cond_1
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W(Landroid/widget/TextView;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->resetDescribeTitleWidth()V

    iget-object v3, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v3}, Lcom/transsion/widgetslistitemlayout/c;->x()Z

    move-result v3

    iget-object v4, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v4}, Lcom/transsion/widgetslistitemlayout/c;->w()Z

    move-result v4

    iget-object v5, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v5}, Lcom/transsion/widgetslistitemlayout/c;->r()Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v6}, Lcom/transsion/widgetslistitemlayout/c;->u()Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v7}, Lcom/transsion/widgetslistitemlayout/c;->q()Landroid/widget/LinearLayout;

    move-result-object v7

    iget-object v8, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->M:Lcom/transsion/widgetslistitemlayout/c;

    invoke-virtual {v8}, Lcom/transsion/widgetslistitemlayout/c;->p()I

    move-result v8

    iget-object v9, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v9, :cond_3

    sget v10, Lcom/transsion/widgetslistitemlayout/R$id;->lil_left_icon_container:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v12

    if-nez v12, :cond_5

    iget-object v13, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_4

    iget-object v9, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v12

    if-nez v12, :cond_5

    iget-object v9, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v9, :cond_5

    iget-object v9, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v12, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_4
    iget-object v13, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_5

    iget-object v12, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->a0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    :cond_5
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v9

    add-int/2addr v12, v9

    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v9

    add-int/2addr v12, v9

    goto :goto_2

    :cond_6
    iget-object v9, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v11, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->W:Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v9

    add-int v12, v11, v9

    goto :goto_2

    :cond_7
    move v12, v10

    :goto_2
    invoke-static {}, Lolb;->a0()Z

    move-result v9

    if-eqz v9, :cond_8

    const v9, 0x3f147ae1    # 0.58f

    const v11, 0x3ed70a3d    # 0.42f

    goto :goto_3

    :cond_8
    const v9, 0x3f266666    # 0.65f

    const v11, 0x3eb33333    # 0.35f

    :goto_3
    int-to-float v13, v2

    mul-float/2addr v9, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v9, v14

    int-to-float v14, v12

    sub-float/2addr v9, v14

    float-to-int v9, v9

    mul-float/2addr v13, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v13, v11

    float-to-int v11, v13

    sget-object v13, Lcom/transsion/widgetslistitemlayout/OSListItemView;->J0:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "itemWidth, paddingStart: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", paddingEnd: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", titleLayoutSpace: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", rightLayoutSpace: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", itemWidth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    iget-object v15, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    iget-object v15, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-nez v15, :cond_9

    const/4 v15, 0x0

    goto :goto_4

    :cond_9
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    iget-object v10, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v16

    add-int v10, v10, v16

    move-object/from16 v16, v7

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v18, v6

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    int-to-float v7, v10

    add-float/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "titleWidth: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", subtitleWidth: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", describeTitleWidth: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v7, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    if-eqz v7, :cond_a

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    goto :goto_5

    :cond_a
    float-to-int v7, v14

    :goto_5
    iget-object v10, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->k0:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v13, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->L:I

    if-lez v13, :cond_b

    goto :goto_6

    :cond_b
    iget-object v13, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingStart()I

    move-result v13

    :goto_6
    iget-object v15, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->j0:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingEnd()I

    move-result v15

    add-int/2addr v13, v15

    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v15

    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v10

    add-int/2addr v15, v10

    add-int/2addr v13, v15

    iget-object v10, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->N:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v13, v10

    :cond_c
    sub-int/2addr v11, v13

    if-eqz v3, :cond_d

    if-eqz v5, :cond_d

    iget-object v10, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingStart()I

    move-result v10

    add-int/2addr v10, v7

    iget-object v15, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingEnd()I

    move-result v15

    add-int/2addr v10, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v15

    sub-int v15, v2, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v17

    sub-int v15, v15, v17

    sub-int/2addr v15, v12

    sub-int/2addr v15, v10

    sub-int/2addr v15, v13

    sub-int/2addr v15, v8

    sub-int v10, v11, v8

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v17, v15

    goto :goto_7

    :cond_d
    move/from16 v17, v11

    const/4 v10, 0x0

    :goto_7
    int-to-float v15, v11

    cmpl-float v15, v6, v15

    if-ltz v15, :cond_e

    if-gt v7, v9, :cond_e

    sub-int v15, v2, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v19

    sub-int v15, v15, v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v19

    sub-int v15, v15, v19

    sub-int/2addr v15, v13

    sub-int/2addr v15, v12

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setMaxWidth(I)V

    if-nez v3, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v15, v17

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v17

    sub-int v2, v2, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v17

    sub-int v2, v2, v17

    sub-int/2addr v2, v12

    sub-int/2addr v2, v13

    if-eqz v3, :cond_f

    sub-int/2addr v2, v8

    :cond_f
    iget-boolean v12, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->u0:Z

    if-nez v12, :cond_1d

    add-float/2addr v14, v6

    int-to-float v2, v2

    cmpl-float v2, v14, v2

    const/16 v7, 0x8

    if-gtz v2, :cond_17

    int-to-float v2, v15

    cmpl-float v2, v6, v2

    if-lez v2, :cond_10

    goto :goto_a

    :cond_10
    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    const/4 v6, 0x0

    if-eqz v2, :cond_11

    iput-boolean v6, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v0:Z

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz v3, :cond_12

    if-eqz v4, :cond_12

    invoke-virtual {v0, v6}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->U(Z)V

    :cond_12
    if-eqz v3, :cond_14

    if-eqz v5, :cond_13

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-object v0, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_14
    iget-object v0, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    :goto_9
    if-eqz v18, :cond_16

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    if-eqz v3, :cond_1f

    if-eqz v16, :cond_1f

    if-lez v10, :cond_1f

    add-int/2addr v10, v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_17
    :goto_a
    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G:Landroid/widget/TextView;

    if-eqz v2, :cond_18

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    if-eqz v5, :cond_19

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-nez v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->G()V

    :cond_1a
    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    if-eqz v2, :cond_1c

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->v0:Z

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_1b

    if-eqz v4, :cond_1b

    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_1b
    iget-object v1, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    :goto_b
    if-eqz v3, :cond_1f

    if-nez v4, :cond_1f

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->U(Z)V

    goto :goto_c

    :cond_1d
    move-object/from16 v2, v16

    const/4 v5, 0x0

    iget-object v0, v0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    if-lt v7, v9, :cond_1e

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1e
    if-eqz v3, :cond_1f

    if-eqz v2, :cond_1f

    if-lez v10, :cond_1f

    add-int/2addr v10, v8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    :goto_c
    return-void
.end method

.method public final x()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getCornersExtraPaddingTop()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getCornersExtraPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/widgetslistitemlayout/R$id;->lil_seekbar_value_below_title:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->C0:I

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getDefaultSeekbarValueWidth()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->D0:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final z(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->E0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;->i0:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getBasePaddingBottom()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getBasePaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1, v1, p0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
