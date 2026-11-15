.class public Lcom/transsion/tools/fragments/ToolsFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"


# static fields
.field public static final r0:[I


# instance fields
.field public A:Lcom/transsion/widgets/BadgeView;

.field public B:Lcom/transsion/widgets/BadgeView;

.field public C:Landroid/widget/FrameLayout;

.field public D:Landroid/widget/FrameLayout;

.field public E:Landroid/widget/FrameLayout;

.field public F:Landroid/widget/FrameLayout;

.field public G:Landroid/widget/FrameLayout;

.field public H:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

.field public I:Landroid/widget/ImageView;

.field public J:Landroid/widget/ImageView;

.field public K:Landroid/widget/ImageView;

.field public L:Landroid/widget/ImageView;

.field public M:Z

.field public N:Ls87;

.field public O:Landroid/widget/LinearLayout;

.field public P:Landroid/widget/LinearLayout;

.field public Q:Landroid/widget/LinearLayout;

.field public R:J

.field public S:Z

.field public volatile T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:F

.field public b0:F

.field public c0:I

.field public d0:I

.field public e0:I

.field public f0:I

.field public g0:I

.field public h0:I

.field public i0:I

.field public j0:I

.field public k0:I

.field public l:Landroid/view/View;

.field public l0:Z

.field public m:Landroid/os/Handler;

.field public m0:Z

.field public n:Landroid/widget/ImageView;

.field public final n0:Landroid/util/SparseArray;

.field public o:Landroid/widget/TextView;

.field public final o0:Lrv4;

.field public p:Landroid/widget/LinearLayout;

.field public final p0:Lrv4;

.field public q:Landroid/widget/LinearLayout;

.field public final q0:Landroid/view/View$OnClickListener;

.field public r:Landroid/widget/LinearLayout;

.field public s:Landroid/widget/LinearLayout;

.field public t:Landroid/widget/LinearLayout;

.field public u:Landroid/widget/LinearLayout;

.field public v:Landroid/widget/LinearLayout;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Lcom/transsion/widgets/BadgeView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget v0, Lcom/transsion/tools/R$id;->iv_arrow_setting:I

    sget v1, Lcom/transsion/tools/R$id;->iv_arrow_file_trans:I

    sget v2, Lcom/transsion/tools/R$id;->iv_arrow_widget:I

    sget v3, Lcom/transsion/tools/R$id;->iv_arrow_go_rating:I

    sget v4, Lcom/transsion/tools/R$id;->iv_arrow_hide:I

    sget v5, Lcom/transsion/tools/R$id;->iv_arrow_feedback:I

    sget v6, Lcom/transsion/tools/R$id;->iv_arrow_update:I

    sget v7, Lcom/transsion/tools/R$id;->iv_arrow_about_us:I

    filled-new-array/range {v0 .. v7}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/tools/fragments/ToolsFragment;->r0:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->S:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->U:Z

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->V:Z

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->W:Z

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->X:Z

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Y:Z

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Z:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->n0:Landroid/util/SparseArray;

    new-instance v0, Lcom/transsion/tools/fragments/ToolsFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/ToolsFragment$a;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->o0:Lrv4;

    new-instance v0, Lcom/transsion/tools/fragments/ToolsFragment$c;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/ToolsFragment$c;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->p0:Lrv4;

    new-instance v0, Lcom/transsion/tools/fragments/ToolsFragment$e;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/ToolsFragment$e;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->d1()V

    return-void
.end method

.method public static bridge synthetic B0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->e1()V

    return-void
.end method

.method public static bridge synthetic C0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->f1()V

    return-void
.end method

.method public static bridge synthetic D0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->g1()V

    return-void
.end method

.method public static bridge synthetic E0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->h1()V

    return-void
.end method

.method public static bridge synthetic F0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->i1()V

    return-void
.end method

.method public static bridge synthetic G0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->j1()V

    return-void
.end method

.method public static bridge synthetic H0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->k1()V

    return-void
.end method

.method public static bridge synthetic I0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->l1()V

    return-void
.end method

.method public static bridge synthetic J0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->n1()V

    return-void
.end method

.method public static bridge synthetic K0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->x1()V

    return-void
.end method

.method public static bridge synthetic L0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->y1()V

    return-void
.end method

.method public static bridge synthetic M0(Lcom/transsion/tools/fragments/ToolsFragment;Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment;->F1(Lcom/transsion/playercommon/data/CloudVersionControl;)V

    return-void
.end method

.method public static bridge synthetic N0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->K1()V

    return-void
.end method

.method public static bridge synthetic O0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->L1()V

    return-void
.end method

.method public static synthetic P0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private P1()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->n:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    sget-boolean v2, Lpp3;->c:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    sget-boolean v0, Lpp3;->p:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->n:Landroid/widget/ImageView;

    new-instance v1, Lupa;

    invoke-direct {v1, p0}, Lupa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-boolean v0, Lpp3;->p:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->n:Landroid/widget/ImageView;

    new-instance v1, Lvpa;

    invoke-direct {v1, p0}, Lvpa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->o:Landroid/widget/TextView;

    new-instance v1, Lwpa;

    invoke-direct {v1, p0}, Lwpa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static synthetic Q0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic R0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic f0(Lcom/transsion/tools/fragments/ToolsFragment;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment;->u1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g0(Lcom/transsion/tools/fragments/ToolsFragment;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment;->w1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->O1()V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/tools/fragments/ToolsFragment;Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment;->p1(Lcom/transsion/playercommon/data/CloudVersionControl;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/tools/fragments/ToolsFragment;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment;->v1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->s1()V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/tools/fragments/ToolsFragment;Landroid/widget/FrameLayout;Landroid/os/Bundle;ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/tools/fragments/ToolsFragment;->t1(Landroid/widget/FrameLayout;Landroid/os/Bundle;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/tools/fragments/ToolsFragment;Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment;->q1(Lcom/transsion/playercommon/data/CloudVersionControl;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->r1()V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->o1()V

    return-void
.end method

.method public static bridge synthetic p0(Lcom/transsion/tools/fragments/ToolsFragment;)Ls87;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->N:Ls87;

    return-object p0
.end method

.method public static bridge synthetic q0(Lcom/transsion/tools/fragments/ToolsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Y:Z

    return p0
.end method

.method public static bridge synthetic r0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic s0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->W:Z

    return-void
.end method

.method public static bridge synthetic t0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->U:Z

    return-void
.end method

.method public static bridge synthetic u0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->V:Z

    return-void
.end method

.method public static bridge synthetic v0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Y:Z

    return-void
.end method

.method public static bridge synthetic w0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->X:Z

    return-void
.end method

.method public static bridge synthetic x0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->X0()V

    return-void
.end method

.method public static bridge synthetic y0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->Z0()V

    return-void
.end method

.method public static bridge synthetic z0(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->c1()V

    return-void
.end method


# virtual methods
.method public final A1()V
    .locals 4

    sget-boolean v0, Lpp3;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->F:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->E:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lzdc;->l:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->F:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->I:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget v1, Lcom/transsion/tools/R$drawable;->ic_icon_default_theme_small1:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->F:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v3, 0x433e0000    # 190.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->I:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/tools/R$drawable;->ic_icon_default_theme1:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m0:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->Q1()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->O1()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final B1()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->l0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->a0:F

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->b0:F

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->h0:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/transsion/tools/fragments/ToolsFragment;->i0:I

    iget-object v4, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->j0:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/transsion/tools/fragments/ToolsFragment;->k0:I

    iget-object v4, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->c0:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->d0:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->e0:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->f0:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->g0:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final C1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->l0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->a0:F

    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->b0:F

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->c0:I

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->d0:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->e0:I

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->f0:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->g0:I

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->h0:I

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->i0:I

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->j0:I

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->k0:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->l0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public D1(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/ToolsFragment;
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/ToolsFragment;

    return-object p0
.end method

.method public final E1(Landroid/widget/ImageView;I)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->n0:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->n0:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final F1(Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->x:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/tools/R$drawable;->update_point:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->x:Landroid/widget/TextView;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final G1()V
    .locals 2

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpb7;->h()Lpb7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->p0:Lrv4;

    invoke-virtual {v0, v1}, Lpb7;->e(Lrv4;)V

    invoke-static {}, Lpb7;->h()Lpb7;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->o0:Lrv4;

    invoke-virtual {v0, p0}, Lpb7;->f(Lrv4;)V

    invoke-static {}, Lpb7;->h()Lpb7;

    move-result-object p0

    invoke-virtual {p0}, Lpb7;->g()V

    :cond_0
    return-void
.end method

.method public final H1(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final I1(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFeedBackTip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lydc;->e()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/tools/R$drawable;->update_point:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->y:Landroid/widget/TextView;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final J1()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/transsion/playercommon/utils/UpdateUtils;->x(Z)V

    new-instance v1, Ls87$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ls87$a;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/transsion/tools/R$string;->update_checking:I

    invoke-virtual {v1, v2, v0}, Ls87$a;->a(IZ)Ls87$a;

    move-result-object v1

    invoke-virtual {v1}, Ls87$a;->c()Ls87;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->N:Ls87;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->N:Ls87;

    new-instance v1, Lcom/transsion/tools/fragments/ToolsFragment$d;

    invoke-direct {v1, p0}, Lcom/transsion/tools/fragments/ToolsFragment$d;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final K1()V
    .locals 3

    const-string v0, "showUpgradeSdkDefaultDialog: "

    const-string v1, "ToolsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lghb;->a()Lax4;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {v0, p0, v2}, Lax4;->c(Landroid/app/Activity;Z)V

    const-string p0, "showUpgradeDialog: "

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final L1()V
    .locals 4

    invoke-static {}, Lge;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->X:Z

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->x1()V

    return-void

    :cond_0
    const-string v0, "ToolsFragment"

    const-string v2, "triggerUpgradeSdkCheck: "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lghb;->a()Lax4;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/transsion/tools/fragments/ToolsFragment$b;

    invoke-direct {v3, p0}, Lcom/transsion/tools/fragments/ToolsFragment$b;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-interface {v0, v2, v1, v3}, Lax4;->b(Landroid/app/Activity;ZLhhb;)V

    return-void
.end method

.method public final M1()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->p:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/tools/fragments/SettingFragment;->showNewAudioSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->p:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/tools/R$id;->bv_settings_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/BadgeView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->A:Lcom/transsion/widgets/BadgeView;

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->A:Lcom/transsion/widgets/BadgeView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->A:Lcom/transsion/widgets/BadgeView;

    invoke-static {}, Lydc;->e()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "new_audio_already_check"

    invoke-static {v3, v4, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->B:Lcom/transsion/widgets/BadgeView;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->B:Lcom/transsion/widgets/BadgeView;

    invoke-static {}, Lydc;->e()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v3, "file_trans_already_check"

    invoke-static {p0, v3, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public final N1()V
    .locals 3

    sget-boolean v0, Lpp3;->k:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    sget-boolean v0, Lpp3;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->H1(FF)V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->H1(FF)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->H1(FF)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->H1(FF)V

    :goto_1
    return-void
.end method

.method public final O1()V
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    sget-object v5, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    sget-object v6, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v6, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    sget-boolean v7, Lpp3;->p:Z

    if-eqz v7, :cond_5

    sget-boolean v7, Lzdc;->l:Z

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_4

    :cond_5
    move v7, v3

    :goto_4
    iget-object v8, p0, Lcom/transsion/tools/fragments/ToolsFragment;->F:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_7

    if-eqz v7, :cond_6

    move v9, v3

    goto :goto_5

    :cond_6
    const/16 v9, 0x8

    :goto_5
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-boolean v8, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m0:Z

    if-eqz v8, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p0, v6}, Lcom/transsion/tools/fragments/ToolsFragment;->R1(I)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v2

    goto :goto_6

    :cond_8
    move v6, v3

    :goto_6
    iget-boolean v8, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m0:Z

    if-nez v8, :cond_9

    if-nez v4, :cond_a

    if-eqz v5, :cond_9

    goto :goto_7

    :cond_9
    move v2, v3

    :cond_a
    :goto_7
    iget-object v3, p0, Lcom/transsion/tools/fragments/ToolsFragment;->I:Landroid/widget/ImageView;

    if-eqz v3, :cond_11

    if-eqz v8, :cond_c

    if-eqz v6, :cond_b

    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_theme_tablet:I

    invoke-virtual {p0, v3, v5}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_9

    :cond_b
    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_theme_tablet_port:I

    invoke-virtual {p0, v3, v5}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_9

    :cond_c
    if-eqz v2, :cond_d

    if-eqz v7, :cond_d

    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_theme_tablet:I

    invoke-virtual {p0, v3, v5}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_9

    :cond_d
    if-eqz v7, :cond_e

    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_theme_small1:I

    invoke-virtual {p0, v3, v5}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_9

    :cond_e
    if-eqz v1, :cond_f

    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_theme1:I

    goto :goto_8

    :cond_f
    if-eqz v4, :cond_10

    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_theme_v:I

    goto :goto_8

    :cond_10
    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_theme_h:I

    :goto_8
    invoke-virtual {p0, v3, v5}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    :cond_11
    :goto_9
    iget-object v3, p0, Lcom/transsion/tools/fragments/ToolsFragment;->J:Landroid/widget/ImageView;

    if-eqz v3, :cond_17

    iget-boolean v5, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m0:Z

    if-eqz v5, :cond_13

    if-eqz v6, :cond_12

    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_video2mp3_tablet:I

    invoke-virtual {p0, v3, v5}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_b

    :cond_12
    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_video2mp3_tablet_port:I

    invoke-virtual {p0, v3, v5}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_b

    :cond_13
    if-eqz v2, :cond_14

    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_video2mp3_tablet:I

    invoke-virtual {p0, v3, v5}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_b

    :cond_14
    if-eqz v1, :cond_15

    sget v5, Lcom/transsion/tools/R$drawable;->ic_video_to_mp3:I

    goto :goto_a

    :cond_15
    if-eqz v4, :cond_16

    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_video2mp3_v:I

    goto :goto_a

    :cond_16
    sget v5, Lcom/transsion/tools/R$drawable;->ic_icon_default_video2mp3_h:I

    :goto_a
    invoke-virtual {p0, v3, v5}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    :cond_17
    :goto_b
    iget-object v3, p0, Lcom/transsion/tools/fragments/ToolsFragment;->K:Landroid/widget/ImageView;

    if-eqz v3, :cond_1e

    iget-boolean v5, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m0:Z

    if-eqz v5, :cond_19

    if-eqz v6, :cond_18

    sget v1, Lcom/transsion/tools/R$drawable;->ic_icon_default_download_tablet:I

    invoke-virtual {p0, v3, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_d

    :cond_18
    sget v1, Lcom/transsion/tools/R$drawable;->ic_icon_default_download_tablet_port:I

    invoke-virtual {p0, v3, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_d

    :cond_19
    if-eqz v2, :cond_1a

    sget v1, Lcom/transsion/tools/R$drawable;->ic_icon_default_download_tablet:I

    invoke-virtual {p0, v3, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_d

    :cond_1a
    if-eqz v7, :cond_1b

    sget v1, Lcom/transsion/tools/R$drawable;->ic_download_management:I

    goto :goto_c

    :cond_1b
    if-eqz v1, :cond_1c

    sget v1, Lcom/transsion/tools/R$drawable;->ic_downloads:I

    goto :goto_c

    :cond_1c
    if-eqz v4, :cond_1d

    sget v1, Lcom/transsion/tools/R$drawable;->ic_icon_default_download_v:I

    goto :goto_c

    :cond_1d
    sget v1, Lcom/transsion/tools/R$drawable;->ic_icon_default_download_h:I

    :goto_c
    invoke-virtual {p0, v3, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    :cond_1e
    :goto_d
    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->L:Landroid/widget/ImageView;

    if-eqz v1, :cond_21

    if-nez v6, :cond_20

    if-eqz v2, :cond_1f

    goto :goto_e

    :cond_1f
    sget v3, Lcom/transsion/tools/R$drawable;->ic_tools_private:I

    invoke-virtual {p0, v1, v3}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    goto :goto_f

    :cond_20
    :goto_e
    sget v3, Lcom/transsion/tools/R$drawable;->ic_icon_default_private_tablet:I

    invoke-virtual {p0, v1, v3}, Lcom/transsion/tools/fragments/ToolsFragment;->E1(Landroid/widget/ImageView;I)V

    :cond_21
    :goto_f
    iget-boolean v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m0:Z

    if-eqz v1, :cond_22

    if-nez v0, :cond_23

    :cond_22
    if-eqz v2, :cond_24

    :cond_23
    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->V0()V

    :cond_24
    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->T0()V

    :cond_25
    :goto_10
    return-void
.end method

.method public final Q1()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->a1()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->B1()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->F:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_7

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_1
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method

.method public final R1(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->a1()I

    move-result p0

    rem-int/2addr p0, v1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final S0(Landroid/widget/ImageView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    return-void
.end method

.method public final T0()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Z:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->I:Landroid/widget/ImageView;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->J:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->L:Landroid/widget/ImageView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_3
    return-void
.end method

.method public final U0(Landroid/view/View;)V
    .locals 4

    iget-boolean p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Z:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/tools/fragments/ToolsFragment;->r0:[I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotationY(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final V0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->S0(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->J:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->S0(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->K:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->S0(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->L:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->S0(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final W0()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last query is1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/transsion/playercommon/utils/UpdateUtils;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v2, Lcom/transsion/playercommon/utils/UpdateUtils;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/transsion/playercommon/utils/UpdateUtils;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    sget-object v0, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->V:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last query is2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/transsion/playercommon/utils/UpdateUtils;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->F1(Lcom/transsion/playercommon/data/CloudVersionControl;)V

    sget-object v0, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->n1()V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/utils/UpdateUtils;->y()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->U:Z

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->V:Z

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->W:Z

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->X:Z

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->J1()V

    new-instance v0, Lzpa;

    invoke-direct {v0, p0}, Lzpa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final X0()V
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/tools/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    const/4 p0, 0x2

    invoke-static {p0}, Lp06;->O(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->Y0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->W0()V

    :goto_0
    return-void
.end method

.method public final Y0()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last query is1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/transsion/playercommon/utils/UpdateUtils;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v2, Lcom/transsion/playercommon/utils/UpdateUtils;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/transsion/playercommon/utils/UpdateUtils;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "last query is2:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/transsion/playercommon/utils/UpdateUtils;->a:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->J1()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/playercommon/utils/UpdateUtils;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Y:Z

    invoke-static {}, Lpb7;->h()Lpb7;

    move-result-object p0

    invoke-virtual {p0}, Lpb7;->o()V

    return-void
.end method

.method public final Z0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/fragments/ToolsFragment$7;

    invoke-direct {v1, p0}, Lcom/transsion/tools/fragments/ToolsFragment$7;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a1()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->E:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->F:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method public final b1()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoom(Landroid/content/Context;II)V

    return-void
.end method

.method public final c1()V
    .locals 1

    new-instance v0, Lcom/transsion/tools/fragments/AboutUsFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/AboutUsFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/AboutUsFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    const-string p0, "setup_about_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public final d1()V
    .locals 3

    const-string v0, "setup_download_cl"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v1, v2}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->j0(Ljava/lang/String;IZZ)Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1, p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-static {p0, v2, v2}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    const/4 p0, 0x0

    const-wide/16 v1, 0x246c

    invoke-static {p0, v0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    sget p0, Lcom/transsion/playercommon/core/MainApp;->x:I

    const-string v0, "\u66f4\u591a"

    invoke-static {p0, v0}, Ls16;->c(ILjava/lang/String;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x45f

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->A1()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x493

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->e1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "file_trans_already_check"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->B:Lcom/transsion/widgets/BadgeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->B:Lcom/transsion/widgets/BadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/transsion/tools/fragments/FileTransFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/FileTransFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/FileTransFragment;

    invoke-static {p0, v2, v2}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    const-string v0, "vd_more"

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->m(Ljava/lang/String;)V

    return-void
.end method

.method public final f1()V
    .locals 2

    const-string v0, "\u66f4\u591a\u70b9\u51fb\u8bc4\u5206\u9f13\u52b1"

    invoke-static {v0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->K(Ljava/lang/String;)Lcom/transsion/playercommon/gprating/GPRatingDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "more_gpRatingCustom"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->showListDialog(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "setup_rate_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public final g1()V
    .locals 4

    const-string v0, "video_private_folder"

    const-wide/16 v1, 0x246c

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xui.xhide"

    const-string v3, "com.xui.xhide.SecBoxActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<runXhideMunClick> activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ToolsFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final h1()V
    .locals 3

    const-string v0, "vd_more_hide_cl"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcac;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lt08;->a(Landroid/app/Activity;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->b1()V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x84

    invoke-static {p0, v0, v1}, Lt08;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public final i1()V
    .locals 1

    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lcom/transsion/tools/fragments/SettingFragment;->newInstance(Landroid/os/Bundle;)Lcom/transsion/tools/fragments/SettingFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/tools/fragments/SettingFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/SettingFragment;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-string v0, "tab_more_setting_btn"

    invoke-static {p0, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToSettingActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x45f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x493

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j1()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v2, Lcom/transsion/tools/activities/SkinsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    const-string v2, "skin_setup_entry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const/4 p0, 0x0

    const-wide v0, 0xd91af27364L

    invoke-static {p0, v2, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final k1()V
    .locals 3

    new-instance v0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-direct {v0}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    const-string p0, "mp3_entrance"

    const-wide v0, 0xd91af27360L

    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final l1()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->newInstance(Landroid/content/Context;I)Lcom/transsion/audio/widgets/AppWidgetMusicDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->showDialog(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->z:Lcom/transsion/widgets/BadgeView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "widget_already_check"

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p0, "vd_moretab_widget_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public m1()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->F1(Lcom/transsion/playercommon/data/CloudVersionControl;)V

    sget-boolean v0, Lpp3;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljf;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->v:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->v:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/tools/R$id;->tv_hide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljf;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->v:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/playercommon/utils/UpdateUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lge;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lge;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lge;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lpp3;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "hd"

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$string;->current_version:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->r:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/transsion/tools/R$string;->version_update:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/playercommon/utils/UpdateUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lbqa;

    invoke-direct {v0, p0}, Lbqa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-static {v0}, Lbs8;->c(Lbs8$a;)V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->G1()V

    return-void
.end method

.method public markBottomTabPageShow()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->markBottomTabPageShow()V

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez p0, :cond_0

    const-string p0, "setup_page_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointVisiable(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->S:Z

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->R:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    const-string p1, "setup_page_show"

    const-wide v2, 0xd91af2735fL

    const/4 v4, 0x0

    invoke-static {v4, p1, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    iput-wide v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->R:J

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->S:Z

    return-void
.end method

.method public final n1()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lp06;->O(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v2, Lcom/transsion/tools/activities/UpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic o1()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/transsion/playercommon/utils/UpdateUtils;->g(Landroid/content/Context;ZZ)Lcom/transsion/playercommon/data/CloudVersionControl;

    move-result-object v0

    sput-object v0, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->W:Z

    iput-boolean v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->X:Z

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->x1()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/fragments/ToolsFragment$3;

    invoke-direct {v1, p0}, Lcom/transsion/tools/fragments/ToolsFragment$3;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->Z0()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Ltpa;

    invoke-direct {v1, p0}, Ltpa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->l:Landroid/view/View;

    invoke-static {}, Lav3;->z()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lkdc;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Z:Z

    invoke-static {}, Ld22;->d()Ld22;

    move-result-object p2

    sget v0, Lcom/transsion/tools/R$layout;->tools_fragment:I

    new-instance v1, Lxpa;

    invoke-direct {v1, p0, p1, p3}, Lxpa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;Landroid/widget/FrameLayout;Landroid/os/Bundle;)V

    invoke-virtual {p2, p1, v0, v1}, Ld22;->a(Landroid/view/ViewGroup;ILtd8$c;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroy()V

    invoke-static {}, Lns3;->d()V

    invoke-static {}, Lpb7;->h()Lpb7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->o0:Lrv4;

    invoke-virtual {v0, v1}, Lpb7;->m(Lrv4;)V

    invoke-static {}, Lpb7;->h()Lpb7;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->p0:Lrv4;

    invoke-virtual {v0, p0}, Lpb7;->l(Lrv4;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->l:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    iput-boolean v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->l0:Z

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m:Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lbs8;->d()V

    return-void
.end method

.method public onFinishRequestPermission(IZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onFinishRequestPermission(IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishRequestPermission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x83

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    invoke-static {}, Lcac;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->b1()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x84

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->b1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m0:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->C1()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->Q1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->B1()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->P1()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->N1()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->O1()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->M1()V

    :cond_2
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onHiddenChanged(Z)V

    iget-boolean p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->M1()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->M1()V

    :cond_0
    return-void
.end method

.method public onSelectInViewPage()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->showGuide()V

    return-void
.end method

.method public onUnSelectInViewPage()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic p1(Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment;->F1(Lcom/transsion/playercommon/data/CloudVersionControl;)V

    return-void
.end method

.method public final synthetic q1(Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcqa;

    invoke-direct {v1, p0, p1}, Lcqa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;Lcom/transsion/playercommon/data/CloudVersionControl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic r1()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/tools/R$string;->update_is_newest:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final synthetic s1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    iget-boolean v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m0:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->Q1()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->O1()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->B1()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->O1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment;->D1(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/ToolsFragment;

    move-result-object p0

    return-object p0
.end method

.method public setHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setHiddenChanged(Z)V

    iget-boolean p1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->M1()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setUserVisibleHint(Z)V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->showGuide()V

    return-void
.end method

.method public showGuide()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "file_trans_guide_already_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Q:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lns3;->e(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic t1(Landroid/widget/FrameLayout;Landroid/os/Bundle;ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/transsion/tools/fragments/ToolsFragment;->l:Landroid/view/View;

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p4, p2}, Lcom/transsion/tools/fragments/ToolsFragment;->z1(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic u1(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoomOnLongClick(Landroid/content/Context;II)Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->n:Landroid/widget/ImageView;

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return v1
.end method

.method public final synthetic v1(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoomOnLongClick(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method public final synthetic w1(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoomOnLongClick(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method public final x1()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->W:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->X:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->U:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->V:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Lypa;

    invoke-direct {v0, p0}, Lypa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final y1()V
    .locals 3

    const-string v0, "more_tab"

    invoke-static {v0}, Lez5;->b(Ljava/lang/String;)V

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/tools/R$string;->no_network:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$string;->feedback:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage;->c(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->M:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->M:Z

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->I1(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "finished_operate_feedback"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final z1(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lpp3;->g(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lpp3;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$id;->iv_logo:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->n:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_logo_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->o:Landroid/widget/TextView;

    sget v1, Lcom/transsion/tools/R$id;->ll_setting:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->p:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/tools/R$id;->ll_file_trans:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Q:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/tools/R$id;->bv_file_trans_point:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/BadgeView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->B:Lcom/transsion/widgets/BadgeView;

    sget v1, Lcom/transsion/tools/R$id;->ll_theme:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->P:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/tools/R$id;->ll_others:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->O:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/tools/R$id;->ll_hide:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->v:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/tools/R$id;->fl_private:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->F:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/tools/R$id;->fl_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->G:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->F:Landroid/widget/FrameLayout;

    sget-boolean v2, Lpp3;->p:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    sget-boolean v2, Lzdc;->l:Z

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/tools/R$id;->ll_feedback:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/tools/R$id;->ll_update:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/tools/R$id;->fl_video_to_mp3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/tools/R$id;->fl_download_manage:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    sget-boolean v2, Lpp3;->k:Z

    if-nez v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget v1, Lcom/transsion/tools/R$id;->tv_downloads:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lzz0;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/transsion/tools/R$string;->visha_transfer_management:I

    goto :goto_1

    :cond_3
    sget v2, Lcom/transsion/tools/R$string;->download_manager:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    sget v1, Lcom/transsion/tools/R$id;->fl_theme:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->E:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/tools/R$id;->tv_check_update:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->x:Landroid/widget/TextView;

    sget v1, Lcom/transsion/tools/R$id;->tv_version:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->w:Landroid/widget/TextView;

    sget v1, Lcom/transsion/tools/R$id;->ll_about_us:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->s:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/tools/R$id;->ll_go_rating:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->t:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/tools/R$id;->ll_widget:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->u:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/tools/R$id;->bv_count:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/BadgeView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->z:Lcom/transsion/widgets/BadgeView;

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->p:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->Q:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->v:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->F:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->r:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->C:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->D:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->E:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->s:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->t:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/tools/R$id;->tv_feedback:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->y:Landroid/widget/TextView;

    sget v1, Lcom/transsion/tools/R$id;->imv_theme:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->I:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/tools/R$id;->imv_video_to_mp3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->J:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/tools/R$id;->imv_downloads:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->K:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/tools/R$id;->imv_private:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->L:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/tools/R$id;->sv_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    iput-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->H:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m0:Z

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->H:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "finished_operate_feedback"

    invoke-static {v1, v2, v0}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->M:Z

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->I1(Z)V

    invoke-direct {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->P1()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->m1()V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment;->z:Lcom/transsion/widgets/BadgeView;

    invoke-static {}, Lydc;->e()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "widget_already_check"

    invoke-static {v4, v5, v0}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/transsion/tools/fragments/ToolsFragment;->T:Z

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->M1()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->N1()V

    iget-boolean v0, p0, Lcom/transsion/tools/fragments/ToolsFragment;->m0:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->C1()V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->Q1()V

    :cond_6
    new-instance v0, Laqa;

    invoke-direct {v0, p0}, Laqa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment;->U0(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
