.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field public static final c1:[I


# instance fields
.field public A0:Lmfb;

.field public B0:Landroid/graphics/Bitmap;

.field public C0:Landroid/graphics/Bitmap;

.field public D0:Landroid/graphics/Bitmap;

.field public E0:Landroid/graphics/Bitmap;

.field public F0:Lcom/transsion/tools/beans/CustomThemeCache;

.field public G0:Landroid/widget/LinearLayout;

.field public H0:Landroid/animation/AnimatorSet;

.field public I0:Landroid/animation/ValueAnimator;

.field public J0:Lxn9;

.field public K0:Lcom/transsion/widgets/BubbleTextView;

.field public L0:Landroid/widget/RelativeLayout;

.field public M0:Landroid/widget/TextView;

.field public N:Landroid/view/View;

.field public N0:Landroid/widget/TextView;

.field public O:Landroid/view/View;

.field public O0:Lcom/transsion/WindowInfoViewModel;

.field public P:Landroid/widget/ImageView;

.field public P0:I

.field public Q:Landroid/widget/ImageView;

.field public Q0:Z

.field public R:Landroid/widget/ImageView;

.field public R0:Z

.field public S:Landroid/widget/ImageView;

.field public S0:Z

.field public T:Landroid/widget/TextView;

.field public T0:Z

.field public U:Lcom/transsion/widgets/CustomTabLayout;

.field public final U0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public V:Landroid/widget/LinearLayout;

.field public final V0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public W:Landroid/widget/LinearLayout;

.field public W0:J

.field public X:Landroid/widget/FrameLayout;

.field public X0:Landroid/graphics/Bitmap;

.field public Y:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final Y0:Landroidx/lifecycle/Observer;

.field public Z:Landroidx/recyclerview/widget/RecyclerView;

.field public final Z0:Los0;

.field public a0:Landroidx/recyclerview/widget/RecyclerView;

.field public final a1:Lmfb$d;

.field public b0:Landroidx/recyclerview/widget/RecyclerView;

.field public final b1:Lmfb$d;

.field public c0:Landroidx/recyclerview/widget/RecyclerView;

.field public d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

.field public e0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

.field public f0:Lcom/transsion/tools/adapter/ThumbFrameAdapter;

.field public g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

.field public final h0:Ljava/util/List;

.field public final i0:Ljava/util/List;

.field public final j0:Ljava/util/List;

.field public final k0:Ljava/util/List;

.field public final l0:Ljava/util/List;

.field public m0:Lcom/transsion/tools/model/CustomThemeViewModel;

.field public n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public p0:Landroid/widget/SeekBar;

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:Landroid/view/View;

.field public u0:Landroid/view/View;

.field public v0:Landroid/view/View;

.field public w0:Landroid/view/View;

.field public x0:Landroid/view/View;

.field public y0:Landroid/view/View;

.field public z0:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/transsion/tools/R$string;->skins_customize_personalize:I

    sget v1, Lcom/transsion/tools/R$string;->skins_customize_color:I

    sget v2, Lcom/transsion/tools/R$string;->skins_customize_background:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->j0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l0:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->s0:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S0:Z

    iput-boolean v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T0:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U0:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Llo9;

    invoke-direct {v0, p0}, Llo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$h;

    invoke-direct {v0, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$h;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z0:Los0;

    new-instance v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;

    invoke-direct {v0, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$i;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a1:Lmfb$d;

    new-instance v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;

    invoke-direct {v0, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$j;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1:Lmfb$d;

    return-void
.end method

.method public static bridge synthetic A1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S1()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic B1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U1(I)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->u2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic C1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V1(IZ)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Landroid/graphics/Bitmap;ILcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o2(Landroid/graphics/Bitmap;ILcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z1(Z)V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->v2()V

    return-void
.end method

.method public static bridge synthetic E1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a2(Z)I

    move-result p0

    return p0
.end method

.method public static synthetic F0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->A2(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic F1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b2()V

    return-void
.end method

.method public static synthetic G0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->r2(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic G1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->C2(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z2(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic H1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H2(Z)V

    return-void
.end method

.method public static synthetic I0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/dbdata/beans/ThemeData;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->B2(Lcom/transsion/dbdata/beans/ThemeData;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic I1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U2(I)V

    return-void
.end method

.method public static synthetic J0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/tools/beans/ThemeImage;Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->t2(Lcom/transsion/tools/beans/ThemeImage;Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic J1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V2()Z

    move-result p0

    return p0
.end method

.method public static synthetic K0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic K1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W2()V

    return-void
.end method

.method public static synthetic L0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/dbdata/beans/ThemeData;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->x2(Lcom/transsion/dbdata/beans/ThemeData;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic L1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic M0(Landroid/graphics/Bitmap;ILcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q2(Landroid/graphics/Bitmap;ILcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic M1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b3(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic N0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/dbdata/beans/ThemeData;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->y2(Lcom/transsion/dbdata/beans/ThemeData;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic O0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p2(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic P0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l2(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->w2(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lwoc;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->s2(Lwoc;)V

    return-void
.end method

.method public static bridge synthetic S0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)I
    .locals 0

    iget p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->s0:I

    return p0
.end method

.method public static bridge synthetic T0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic U0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H0:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static bridge synthetic V0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    return-object p0
.end method

.method public static bridge synthetic W0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a1:Lmfb$d;

    return-object p0
.end method

.method public static bridge synthetic X0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic Y0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic Z0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    return-object p0
.end method

.method public static bridge synthetic a1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/widgets/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->K0:Lcom/transsion/widgets/BubbleTextView;

    return-object p0
.end method

.method private a3()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z0:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->y0:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean p0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public static bridge synthetic b1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/beans/CustomThemeCache;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    return-object p0
.end method

.method public static bridge synthetic c1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ColorChooserAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

    return-object p0
.end method

.method public static bridge synthetic d1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k0:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic e1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->C0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic f1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->A0:Lmfb;

    return-object p0
.end method

.method public static bridge synthetic g1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->w0:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic h1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->j0:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic i1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->x0:Landroid/view/View;

    return-object p0
.end method

.method private i2()V
    .locals 6

    sget v0, Lcom/transsion/tools/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->N:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/tools/R$id;->iv_confirm:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/tools/R$id;->preview_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->y0:Landroid/view/View;

    sget v0, Lcom/transsion/tools/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z1(Z)V

    sget v1, Lcom/transsion/tools/R$id;->tab_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/CustomTabLayout;

    iput-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    sget v1, Lcom/transsion/tools/R$id;->rv_image_chooser_background:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-boolean v5, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    if-eqz v5, :cond_0

    const/16 v0, 0x19

    :cond_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lcom/transsion/tools/R$id;->rv_image_chooser_thumb:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a0:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/tools/R$id;->rv_image_chooser_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/tools/R$id;->personal_operate_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V:Landroid/widget/LinearLayout;

    sget-boolean v0, Lpp3;->w:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lzz0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/tools/R$id;->ll_iv_download:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/tools/R$id;->ll_tv_download:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/tools/R$drawable;->icon_cloud_tab:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v0, Lcom/transsion/tools/R$string;->visha_cloud_drive:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    sget v0, Lcom/transsion/tools/R$id;->theme_color_operate_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/tools/R$id;->background_operate_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/tools/R$id;->iv_background:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/tools/R$id;->seekbar_blur:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    sget v0, Lcom/transsion/tools/R$id;->seekbar_opacity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    sget v0, Lcom/transsion/tools/R$id;->tv_blur:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->M0:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$id;->tv_opacity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->N0:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$id;->rv_color_chooser:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/tools/R$id;->iv_skeleton:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Q:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/tools/R$id;->theme_preview_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/transsion/tools/R$id;->thumb_preview_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->t0:Landroid/view/View;

    sget v0, Lcom/transsion/tools/R$id;->preview_sb:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p0:Landroid/widget/SeekBar;

    sget v0, Lcom/transsion/tools/R$id;->iv_video:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/tools/R$id;->tv_video:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$id;->anim_views:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G0:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/tools/R$id;->ll_video:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->u0:Landroid/view/View;

    sget v0, Lcom/transsion/tools/R$id;->ll_music:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->v0:Landroid/view/View;

    sget v0, Lcom/transsion/tools/R$id;->ll_download:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->w0:Landroid/view/View;

    sget v0, Lcom/transsion/tools/R$id;->ll_more:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->x0:Landroid/view/View;

    sget v0, Lcom/transsion/tools/R$id;->custom_theme_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->L0:Landroid/widget/RelativeLayout;

    sget v0, Lcom/transsion/tools/R$id;->iv_thumb:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l0:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->u0:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l0:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->v0:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l0:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->w0:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l0:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->x0:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O0:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    if-eqz v0, :cond_2

    iget v1, v0, Lwoc;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, v0, Lwoc;->n:I

    iget v0, v0, Lwoc;->o:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->r0:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BottomBar miniHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",default:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mScreenHeight:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",multiple:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",max:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkinsCustomizeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z0:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic j1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->v0:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic k1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Q:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic l1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/model/CustomThemeViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m0:Lcom/transsion/tools/model/CustomThemeViewModel;

    return-object p0
.end method

.method public static bridge synthetic m1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ImageChooserAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    return-object p0
.end method

.method public static bridge synthetic n1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lmfb$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b1:Lmfb$d;

    return-object p0
.end method

.method public static bridge synthetic o1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/tools/adapter/ThumbFrameAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f0:Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    return-object p0
.end method

.method public static bridge synthetic p1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic q1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic q2(Landroid/graphics/Bitmap;ILcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    rsub-int/lit8 p1, p1, 0x64

    invoke-static {p0, p1}, Lvk1;->h(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a0:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic s1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic t1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->u0:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic u1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->s0:I

    return-void
.end method

.method public static bridge synthetic v1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/widgets/BubbleTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->K0:Lcom/transsion/widgets/BubbleTextView;

    return-void
.end method

.method public static bridge synthetic w1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lmfb;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->A0:Lmfb;

    return-void
.end method

.method public static bridge synthetic x1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P0:I

    return-void
.end method

.method public static bridge synthetic y1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->N1()V

    return-void
.end method

.method public static bridge synthetic z1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Q1(I)V

    return-void
.end method


# virtual methods
.method public final synthetic A2(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/lang/String;
    .locals 3

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E0:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$dimen;->custom_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Ldb;->b(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "thumb.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, p1, p0, v1}, Lmf0;->b(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic B2(Lcom/transsion/dbdata/beans/ThemeData;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p1, Lcom/transsion/dbdata/beans/ThemeData;->thumbPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O2(Lcom/transsion/dbdata/beans/ThemeData;)V

    return-void
.end method

.method public final C2(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    iget v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q0:I

    const/16 v1, 0x21c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->r0:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q0:I

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Ltha;->k(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public D2(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->custom_theme_crop_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {p0, p1, v0, v0}, Ltha;->k(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final E2()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W1()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->B0:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X1(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public final F2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->B0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->B0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->C0:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->B0:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method public final G2()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseThumbRenderState  mPreviewThumbBitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mConvertedThumbBitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mThumbBitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkinsCustomizeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y1()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D0:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final H2(Z)V
    .locals 6

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G0:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/tools/R$color;->unselected_custom_preview_tab_text_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$color;->unselected_custom_preview_tab_icon_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final I2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->C0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->C0:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->B0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O1(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v0}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeImage;

    iget-boolean v1, v0, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P:Landroid/widget/ImageView;

    iget v0, v0, Lcom/transsion/tools/beans/ThemeImage;->resId:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_4
    iget-object v1, v0, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v1

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v2}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    new-instance v2, Ldo9;

    invoke-direct {v2, p0, v0}, Ldo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/tools/beans/ThemeImage;)V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Leo9;

    invoke-direct {v1, p0}, Leo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_6
    :goto_0
    return-void
.end method

.method public final J2()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->t0:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->t0:Landroid/view/View;

    new-instance v1, Lqo9;

    invoke-direct {v1, p0}, Lqo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final K2(Lcom/transsion/dbdata/beans/ThemeData;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeImage;

    iget-boolean v1, v0, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v1}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lro9;

    invoke-direct {v1, p0}, Lro9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lso9;

    invoke-direct {v1, p0, p1}, Lso9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/dbdata/beans/ThemeData;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    iput v0, p1, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->N2(Lcom/transsion/dbdata/beans/ThemeData;)V

    :goto_0
    return-void
.end method

.method public final L2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/tools/beans/CustomThemeCache;

    invoke-direct {v0}, Lcom/transsion/tools/beans/CustomThemeCache;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v1

    iput v1, v0, Lcom/transsion/tools/beans/CustomThemeCache;->backgroundIndex:I

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeImage;

    iget-boolean v0, v0, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/tools/beans/ThemeImage;

    iget-object v2, v2, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/tools/beans/CustomThemeCache;->customBackground:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/transsion/tools/beans/CustomThemeCache;->blur:I

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/transsion/tools/beans/CustomThemeCache;->opacity:I

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

    invoke-virtual {v2}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result v2

    iput v2, v0, Lcom/transsion/tools/beans/CustomThemeCache;->colorIndex:I

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v2}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v2

    iput v2, v0, Lcom/transsion/tools/beans/CustomThemeCache;->thumbIndex:I

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeImage;

    iget-boolean v0, v0, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeImage;

    iget-object v1, v1, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/tools/beans/CustomThemeCache;->customThumb:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f0:Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    invoke-virtual {p0}, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->g()I

    move-result p0

    iput p0, v0, Lcom/transsion/tools/beans/CustomThemeCache;->customFrameIndex:I

    :cond_3
    return-void
.end method

.method public final M2()V
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/ThemeData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/ThemeData;-><init>()V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v2}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeImage;

    iget-boolean v2, v1, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v1

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v2}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    new-instance v2, Lco9;

    invoke-direct {v2, p0}, Lco9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    new-instance v2, Lko9;

    invoke-direct {v2, p0, v0}, Lko9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/dbdata/beans/ThemeData;)V

    invoke-virtual {v1, v2}, Lmc7;->Z(Lzf1;)Lrc2;

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    iput v1, v0, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/transsion/dbdata/beans/ThemeData;->frameType:I

    invoke-virtual {p0, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O2(Lcom/transsion/dbdata/beans/ThemeData;)V

    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v1, 0x488

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final N1()V
    .locals 3

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v1}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lfo9;

    invoke-direct {v1, p0}, Lfo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lgo9;

    invoke-direct {v1, p0}, Lgo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    new-instance v2, Lho9;

    invoke-direct {v2, p0}, Lho9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1, v2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final N2(Lcom/transsion/dbdata/beans/ThemeData;)V
    .locals 11

    const-string v0, "Custom"

    iput-object v0, p1, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    const-string v0, "theme_preview_key"

    invoke-static {p0, v0, p1}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "skin_theme"

    invoke-static {p0, v0, p1}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/tools/R$string;->custom_theme_toast:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget v0, p1, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    iget v1, p1, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    iget-object v2, p1, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ld16;->j(IILjava/lang/String;II)V

    iget v5, p1, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    iget v6, p1, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    iget-object v7, p1, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    iget v8, p1, Lcom/transsion/dbdata/beans/ThemeData;->blur:I

    iget v9, p1, Lcom/transsion/dbdata/beans/ThemeData;->opacity:I

    iget v10, p1, Lcom/transsion/dbdata/beans/ThemeData;->frameType:I

    invoke-static/range {v5 .. v10}, Ld16;->i(IILjava/lang/String;III)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->removeCurrentThemeCache()V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->J0:Lxn9;

    invoke-virtual {p1}, Lxn9;->a()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->removeSplashSnapshot()V

    :cond_0
    return-void
.end method

.method public O1(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->B0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v2

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v2

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v3}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v2

    new-instance v3, Lmo9;

    invoke-direct {v3, p0, v0, p1}, Lmo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lno9;

    invoke-direct {v0, p0, v1}, Lno9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_1
    :goto_0
    return-void
.end method

.method public final O2(Lcom/transsion/dbdata/beans/ThemeData;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k0:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeColor;

    iget-object v0, v0, Lcom/transsion/tools/beans/ThemeColor;->colorTheme:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->K2(Lcom/transsion/dbdata/beans/ThemeData;)V

    return-void
.end method

.method public P1(ILandroid/graphics/Bitmap;I)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v1}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lio9;

    invoke-direct {v1, p2, p1}, Lio9;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Ljo9;

    invoke-direct {p2, p0, p3}, Ljo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_1
    :goto_0
    return-void
.end method

.method public final P2(Lcom/transsion/dbdata/beans/ThemeData;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lcom/transsion/arch/threads/TaskExecutor;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v1}, Lk29;->b(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Loo9;

    invoke-direct {v1, p0}, Loo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lpo9;

    invoke-direct {v1, p0, p1}, Lpo9;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Lcom/transsion/dbdata/beans/ThemeData;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final Q1(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p0:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeImage;

    iget v0, v0, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p0:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public final Q2()V
    .locals 3

    new-instance v0, Lcom/transsion/tools/beans/CustomThemeCache;

    invoke-direct {v0}, Lcom/transsion/tools/beans/CustomThemeCache;-><init>()V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v1

    iput v1, v0, Lcom/transsion/tools/beans/CustomThemeCache;->backgroundIndex:I

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeImage;

    iget-boolean v1, v1, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeImage;

    iget-object v1, v1, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/tools/beans/CustomThemeCache;->customBackground:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/transsion/tools/beans/CustomThemeCache;->blur:I

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/transsion/tools/beans/CustomThemeCache;->opacity:I

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result v1

    iput v1, v0, Lcom/transsion/tools/beans/CustomThemeCache;->colorIndex:I

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v1

    iput v1, v0, Lcom/transsion/tools/beans/CustomThemeCache;->thumbIndex:I

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeImage;

    iget-boolean v1, v1, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeImage;

    iget-object v1, v1, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/tools/beans/CustomThemeCache;->customThumb:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f0:Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->g()I

    move-result v1

    iput v1, v0, Lcom/transsion/tools/beans/CustomThemeCache;->customFrameIndex:I

    const-string v1, "theme_cache_key"

    invoke-static {p0, v1, v0}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final R1(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k0:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeColor;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i0:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v2}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeImage;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Q:Landroid/widget/ImageView;

    iget v1, v1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {p0, v4}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a2(Z)I

    move-result v1

    invoke-static {v0, p0, v2, v1, p1}, Lm7a;->a(ILandroid/content/Context;Landroid/widget/ImageView;IZ)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S1()V

    :cond_2
    return-void
.end method

.method public R2(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->M0:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->N0:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T1()V

    return-void
.end method

.method public final S1()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_6

    if-gtz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {p0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v2

    sget-object v3, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v2, :cond_3

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    div-int/lit8 v0, v0, 0x4

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    mul-int/lit16 v1, v1, 0xb4

    div-int/lit16 v1, v1, 0x960

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k2()Z

    move-result v2

    const/high16 v4, 0x41a00000    # 20.0f

    if-eqz v2, :cond_5

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v2, v0, v1

    const v5, 0x3fcccccd    # 1.6f

    cmpl-float v2, v2, v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    if-lez v2, :cond_4

    mul-float/2addr v5, v1

    sub-float/2addr v0, v5

    mul-float/2addr v0, v7

    move v2, v6

    move v6, v0

    move v0, v5

    goto :goto_1

    :cond_4
    div-float v2, v0, v5

    sub-float/2addr v1, v2

    mul-float/2addr v1, v7

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_1
    const/high16 v5, 0x424c0000    # 51.0f

    mul-float/2addr v5, v0

    const/high16 v7, 0x44840000    # 1056.0f

    div-float/2addr v5, v7

    add-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/high16 v5, 0x42f40000    # 122.0f

    mul-float/2addr v5, v1

    const/high16 v6, 0x44250000    # 660.0f

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    mul-float/2addr v0, v4

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v0, 0x41880000    # 17.0f

    mul-float/2addr v1, v0

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2

    :cond_5
    invoke-static {p0, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_2
    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final S2(Landroid/graphics/Bitmap;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->I0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H2(Z)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H0:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v7, v1

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G0:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H0:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->u0:Landroid/view/View;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k0:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

    invoke-virtual {v4}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tools/beans/ThemeColor;

    iget v1, v1, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move-object v4, p1

    move-object v6, p0

    invoke-static/range {v2 .. v8}, Lbc;->f(Landroid/view/ViewGroup;Landroid/animation/AnimatorSet;Landroid/graphics/Bitmap;Landroid/view/View;Landroid/content/Context;ZI)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->I0:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p0:Landroid/widget/SeekBar;

    invoke-static {p1, p0}, Lbc;->i(Landroid/animation/ValueAnimator;Landroid/widget/SeekBar;)V

    return-void
.end method

.method public T1()V
    .locals 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setSecondTrackColor(I)V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumbOutColor(I)V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$color;->selection_seekbar_thumb_center_color:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumbInsideColor(I)V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setSecondTrackColor(I)V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumbOutColor(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumbInsideColor(I)V

    return-void
.end method

.method public final T2(Ljava/util/List;)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->I0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H2(Z)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H0:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G0:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H0:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->l0:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k0:Ljava/util/List;

    iget-object v5, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

    invoke-virtual {v5}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/tools/beans/ThemeColor;

    iget v4, v4, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    const/16 v9, 0x1c2

    const/16 v10, 0xc8

    move-object v4, p1

    move-object v5, p0

    move v7, v1

    invoke-static/range {v2 .. v10}, Lbc;->c(Landroid/view/ViewGroup;Landroid/animation/AnimatorSet;Ljava/util/List;Landroid/content/Context;Ljava/util/List;ZIII)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->I0:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p0:Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lbc;->i(Landroid/animation/ValueAnimator;Landroid/widget/SeekBar;)V

    if-nez v1, :cond_4

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H0:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;

    invoke-direct {v0, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$f;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    return-void
.end method

.method public final U1(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V1(IZ)V

    return-void
.end method

.method public final U2(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W:Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->t0:Landroid/view/View;

    if-nez p1, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b2()V

    goto :goto_4

    :cond_5
    iget-boolean v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R0:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->J2()V

    :cond_6
    :goto_4
    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E2()V

    goto :goto_5

    :cond_7
    if-ne p1, v3, :cond_8

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->I2()V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->I2()V

    :goto_5
    return-void
.end method

.method public final V1(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/beans/ThemeImage;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H0:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->I0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y1()V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p0:Landroid/widget/SeekBar;

    sget p2, Lcom/transsion/tools/R$drawable;->thumb_custom:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G0:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H2(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->k0:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

    invoke-virtual {v0}, Lcom/transsion/tools/adapter/ColorChooserAdapter;->g()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/tools/beans/ThemeColor;

    iget p2, p2, Lcom/transsion/tools/beans/ThemeColor;->colorRes:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Q1(I)V

    invoke-virtual {p0, v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R1(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y1()V

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p0:Landroid/widget/SeekBar;

    iget v0, p1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    invoke-static {p0, v0}, Lvha;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget p1, p1, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    invoke-static {p1}, Lvha;->p(I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T2(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R1(Z)V

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W2()V

    return-void
.end method

.method public final V2()Z
    .locals 9

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W0:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xc8

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    iput-wide v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W0:J

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W2()V

    return v2
.end method

.method public final W1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->C0:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final W2()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final X1(Landroid/widget/ImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final X2(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->B0:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final Y1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final Y2(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->C0:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final Z1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final Z2(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E0:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a2(Z)I
    .locals 5

    invoke-static {p0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v1

    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v1, v4, :cond_1

    move v2, v3

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFold:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isTablet:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mIsTabletDevice:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R0:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SkinsCustomizeActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    sget p0, Lcom/transsion/tools/R$drawable;->ic_skeleton_day_custom_new:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/transsion/tools/R$drawable;->ic_skeleton_custom_new:I

    :goto_1
    return p0

    :cond_3
    if-eqz v2, :cond_5

    iget-boolean p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R0:Z

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    sget p0, Lcom/transsion/tools/R$drawable;->ic_skeleton_day_tablet:I

    goto :goto_2

    :cond_4
    sget p0, Lcom/transsion/tools/R$drawable;->ic_skeleton_tablet:I

    :goto_2
    return p0

    :cond_5
    if-eqz p1, :cond_6

    sget p0, Lcom/transsion/tools/R$drawable;->ic_skeleton_day_flat:I

    goto :goto_3

    :cond_6
    sget p0, Lcom/transsion/tools/R$drawable;->ic_skeleton_flat:I

    :goto_3
    return p0
.end method

.method public final b2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->K0:Lcom/transsion/widgets/BubbleTextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v0, "custom_bubble_2"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b3(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D0:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final c2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z0:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->z(Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z0:Landroid/view/View;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {p0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z0:Landroid/view/View;

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-static {p0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->z0:Landroid/view/View;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d2()V
    .locals 2

    const-string v0, "theme_cache_key"

    invoke-static {p0, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/CustomThemeCache;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget v0, v0, Lcom/transsion/tools/beans/CustomThemeCache;->blur:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    iget p0, p0, Lcom/transsion/tools/beans/CustomThemeCache;->opacity:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public e2()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-direct {v0}, Lcom/transsion/tools/adapter/ImageChooserAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$b;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-direct {v0}, Lcom/transsion/tools/adapter/ImageChooserAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-boolean v5, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    const/16 v6, 0x19

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$c;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    invoke-direct {v0}, Lcom/transsion/tools/adapter/ThumbFrameAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f0:Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-boolean v5, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f0:Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$d;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/transsion/tools/decoration/GridSpaceThemeColorItemDecoration;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/tools/R$dimen;->skin_color_item_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/tools/R$dimen;->skin_color_item_padding_top:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-direct {v3, v1, v4, v5}, Lcom/transsion/tools/decoration/GridSpaceThemeColorItemDecoration;-><init>(III)V

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lcom/transsion/tools/adapter/ColorChooserAdapter;

    invoke-direct {v0}, Lcom/transsion/tools/adapter/ColorChooserAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-boolean v5, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    if-eqz v5, :cond_2

    move v2, v6

    :cond_2
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g0:Lcom/transsion/tools/adapter/ColorChooserAdapter;

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$e;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public f2()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T1()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$k;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$k;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$l;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$l;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p0:Landroid/widget/SeekBar;

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$m;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$m;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final fitSystemStatusBar()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    :try_start_0
    sget v1, Lcom/transsion/tools/R$color;->black:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$color;->transparent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit16 v3, v3, -0x2011

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-static {v0, v2}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    invoke-static {v0, v2}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    invoke-static {p0}, Lcom/transsion/utils/a;->n(Landroid/content/Context;)I

    move-result v0

    sget v2, Lcom/transsion/tools/R$id;->custom_theme_content:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fitSystemStatusBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SkinsCustomizeActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final g2()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->isFirstLevelTab(Z)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$dimen;->custom_theme_tab_text_size_selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/widgets/CustomTabLayout;->setTabTextSize(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$dimen;->custom_theme_tab_text_size_unselected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/widgets/CustomTabLayout;->setUnselectedTabTextSize(I)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$attr;->os_platform_basic_color:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/tools/R$color;->unselected_tab_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/transsion/widgets/CustomTabLayout;->setTabTextColors(II)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout;->getTabCount()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout;->newTab()Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v2

    sget-object v3, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c1:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-virtual {v2, v4}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setText(I)Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/widgets/CustomTabLayout;->addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout;->newTab()Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v2

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setText(I)Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout;->newTab()Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgets/CustomTabLayout$Tab;->setText(I)Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->addTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$g;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$g;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->addOnTabSelectedListener(Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    iget p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P0:I

    invoke-virtual {v0, p0}, Lcom/transsion/widgets/CustomTabLayout;->getTabAt(I)Lcom/transsion/widgets/CustomTabLayout$Tab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgets/CustomTabLayout;->selectTab(Lcom/transsion/widgets/CustomTabLayout$Tab;)V

    return-void
.end method

.method public h2()V
    .locals 2

    const-class v0, Lcom/transsion/tools/model/CustomThemeViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/model/CustomThemeViewModel;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m0:Lcom/transsion/tools/model/CustomThemeViewModel;

    invoke-virtual {v0}, Lcom/transsion/tools/model/CustomThemeViewModel;->getBackgroundList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$n;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m0:Lcom/transsion/tools/model/CustomThemeViewModel;

    invoke-virtual {v0}, Lcom/transsion/tools/model/CustomThemeViewModel;->getThumbList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$o;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m0:Lcom/transsion/tools/model/CustomThemeViewModel;

    invoke-virtual {v0}, Lcom/transsion/tools/model/CustomThemeViewModel;->getFrameList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$p;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m0:Lcom/transsion/tools/model/CustomThemeViewModel;

    invoke-virtual {v0}, Lcom/transsion/tools/model/CustomThemeViewModel;->getColorList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity$a;-><init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m0:Lcom/transsion/tools/model/CustomThemeViewModel;

    invoke-virtual {v0}, Lcom/transsion/tools/model/CustomThemeViewModel;->generateDefaultBackground()V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m0:Lcom/transsion/tools/model/CustomThemeViewModel;

    invoke-virtual {p0}, Lcom/transsion/tools/model/CustomThemeViewModel;->generateDefaultThumbs()V

    return-void
.end method

.method public final j2()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O0:Lcom/transsion/WindowInfoViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O0:Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    iget v0, v0, Lwoc;->a:I

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O0:Lcom/transsion/WindowInfoViewModel;

    iget-object p0, p0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwoc;

    iget-boolean p0, p0, Lwoc;->c:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final k2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R0:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object p0

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic l2(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/beans/ThemeImage;

    iget-object p1, p1, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D2(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->j0:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f0:Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->g()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeImage;

    iget v1, v0, Lcom/transsion/tools/beans/ThemeImage;->resId:I

    invoke-static {v1}, Lmf0;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v0, v0, Lcom/transsion/tools/beans/ThemeImage;->mergeResId:I

    invoke-static {v0}, Lmf0;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/tools/R$dimen;->custom_thumb_default_tab_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-static {p1, v1, v0, v2, p0}, Ldb;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public final synthetic m2(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z2(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$dimen;->custom_thumb_preview_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Ldb;->b(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y1()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->p0:Landroid/widget/SeekBar;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S2(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R1(Z)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W2()V

    return-void
.end method

.method public final synthetic n2(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->W2()V

    return-void
.end method

.method public needApplyBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic o2(Landroid/graphics/Bitmap;ILcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget v2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q0:I

    iget v3, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->r0:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lvk1;->c(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->A0:Lmfb;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lmfb;->k(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->iv_close:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b2()V

    const-string p1, "skin_diy_edit_close"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$id;->iv_confirm:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->b2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Q2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->M2()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->j2()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->S0:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->T0:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/tools/R$layout;->activity_skin_customize:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget-boolean p1, Lpp3;->H:Z

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/transsion/utils/a;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsGestureNavigationEnabled:Z

    invoke-static {p0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q0:I

    invoke-static {p0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->r0:I

    const-string p1, "skin_diy_edit_show"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h2()V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->R0:Z

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    invoke-static {}, Lxn9;->c()Lxn9;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->J0:Lxn9;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z0:Los0;

    invoke-virtual {p1, v0}, Lxn9;->f(Los0;)V

    const-class p1, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/WindowInfoViewModel;

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O0:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->fitSystemStatusBar()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c2()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->J0:Lxn9;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z0:Los0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lxn9;->e(Los0;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->H0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->I0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O0:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->G2()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->A0:Lmfb;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p3}, Lmfb;->j(I[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->fitSystemStatusBar()V

    invoke-direct {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->a3()V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->U:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayout;->getSelectedTabPosition()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "skin_diy_edit_bg_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "skin_diy_edit_color_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "skin_diy_edit_ps_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final synthetic p2(ILandroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P1(ILandroid/graphics/Bitmap;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic r2(ILandroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->V0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {p1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Y2(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic s2(Lwoc;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "windowOptions  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lwoc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkinsCustomizeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lwoc;->a:I

    iget-boolean v1, p1, Lwoc;->g:Z

    iget-boolean p1, p1, Lwoc;->c:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget v4, Lcom/transsion/tools/R$layout;->activity_skin_customize:I

    invoke-static {v2, v4, p0}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object v2

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_6

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/tools/R$layout;->activity_skin_customize_tablet_land:I

    invoke-static {p1, v0, p0}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/tools/R$layout;->activity_skin_customize_flat_land:I

    invoke-static {p1, v0, p0}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/tools/R$layout;->activity_skin_customize_tablet:I

    invoke-static {p1, v0, p0}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/tools/R$layout;->activity_skin_customize_flat:I

    invoke-static {p1, v0, p0}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x358

    iput p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q0:I

    const/16 p1, 0x217

    iput p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->r0:I

    goto :goto_2

    :cond_4
    const/16 p1, 0x517

    iput p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q0:I

    const/16 p1, 0x46b

    iput p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->r0:I

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1, v4, p0}, Landroidx/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;

    move-result-object v2

    invoke-static {p0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->q0:I

    invoke-static {p0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->r0:I

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->c2()V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->L2()V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Q0:Z

    new-instance p1, Landroidx/transition/ChangeBounds;

    invoke-direct {p1}, Landroidx/transition/ChangeBounds;-><init>()V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/transition/TransitionManager;->go(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    invoke-direct {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->i2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->e2()V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f2()V

    iget-boolean p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Q0:Z

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z1(Z)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget p1, p1, Lcom/transsion/tools/beans/CustomThemeCache;->blur:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->F0:Lcom/transsion/tools/beans/CustomThemeCache;

    iget v0, v0, Lcom/transsion/tools/beans/CustomThemeCache;->opacity:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m0:Lcom/transsion/tools/model/CustomThemeViewModel;

    invoke-virtual {p1}, Lcom/transsion/tools/model/CustomThemeViewModel;->generateDefaultBackground()V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->m0:Lcom/transsion/tools/model/CustomThemeViewModel;

    invoke-virtual {p1}, Lcom/transsion/tools/model/CustomThemeViewModel;->generateDefaultThumbs()V

    invoke-static {p0}, Lcom/transsion/utils/a;->n(Landroid/content/Context;)I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->custom_theme_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    return-void
.end method

.method public shouldApplyLegacySystemBarPadding()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic t2(Lcom/transsion/tools/beans/ThemeImage;Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p1, p1, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->C2(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic u2(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->X2(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O1(I)V

    return-void
.end method

.method public final synthetic v2()V
    .locals 2

    iget v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P0:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v0}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->h0:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->d0:Lcom/transsion/tools/adapter/ImageChooserAdapter;

    invoke-virtual {v1}, Lcom/transsion/tools/adapter/ImageChooserAdapter;->g()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/beans/ThemeImage;

    iget-boolean v1, v0, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/transsion/tools/beans/ThemeImage;->imageUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->N1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic w2(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/lang/String;
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "background.jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->C0:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1, v0, p0, v1}, Lmf0;->b(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic x2(Lcom/transsion/dbdata/beans/ThemeData;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p1, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p1, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->n0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p2

    iput p2, p1, Lcom/transsion/dbdata/beans/ThemeData;->blur:I

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->o0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p2

    iput p2, p1, Lcom/transsion/dbdata/beans/ThemeData;->opacity:I

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->N2(Lcom/transsion/dbdata/beans/ThemeData;)V

    return-void
.end method

.method public final synthetic y2(Lcom/transsion/dbdata/beans/ThemeData;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p1, Lcom/transsion/dbdata/beans/ThemeData;->tabPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f0:Lcom/transsion/tools/adapter/ThumbFrameAdapter;

    invoke-virtual {p2}, Lcom/transsion/tools/adapter/ThumbFrameAdapter;->g()I

    move-result p2

    iput p2, p1, Lcom/transsion/dbdata/beans/ThemeData;->frameType:I

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->P2(Lcom/transsion/dbdata/beans/ThemeData;)V

    return-void
.end method

.method public final synthetic z2(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Ljava/lang/String;
    .locals 3

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->E0:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$dimen;->custom_tab_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Ldb;->b(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "tab.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, p1, p0, v1}, Lmf0;->b(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
