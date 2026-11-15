.class public Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;,
        Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$l;
    }
.end annotation


# static fields
.field public static final P:Ljava/lang/String; = "OsLiqBottomToolBar"


# instance fields
.field public A:Z

.field public B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

.field public C:Landroid/animation/Animator;

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:Ljava/util/List;

.field public I:I

.field public J:Z

.field public K:I

.field public L:I

.field public M:Ljv9;

.field public N:Lkv9;

.field public O:Lkv9;

.field public b:Landroid/widget/LinearLayout;

.field public c:J

.field public d:J

.field public e:Ljava/util/List;

.field public f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

.field public g:Landroid/view/View;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:[Z

.field public m:Z

.field public n:I

.field public o:Z

.field public p:I

.field public q:I

.field public r:Landroid/content/Context;

.field public s:Ljava/lang/String;

.field public final t:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;

.field public u:I

.field public v:Landroidx/appcompat/view/menu/MenuBuilder;

.field public w:I

.field public final x:I

.field public final y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->c:J

    .line 6
    iput-wide v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->d:J

    const/4 p4, 0x0

    .line 7
    iput-boolean p4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->h:Z

    .line 8
    iput-boolean p4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->i:Z

    .line 9
    iput-boolean p4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->j:Z

    .line 10
    iput-boolean p4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->k:Z

    .line 11
    iput-boolean p4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->m:Z

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->w:I

    const/16 v0, 0x64

    .line 13
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->x:I

    .line 14
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->y:I

    .line 15
    iput p4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->D:I

    const/4 v0, 0x6

    .line 16
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->E:I

    const/4 v1, 0x5

    .line 17
    iput v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->F:I

    const/4 v1, 0x2

    .line 18
    iput v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->G:I

    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->J:Z

    .line 20
    iput p4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    .line 21
    new-instance v2, Lkv9;

    invoke-direct {v2}, Lkv9;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->N:Lkv9;

    .line 22
    new-instance v2, Lkv9;

    invoke-direct {v2}, Lkv9;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->O:Lkv9;

    .line 23
    new-instance v2, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-direct {v2, p1, p2, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_radius_xxl:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p1, p3}, Lyj1;->d(Landroid/content/Context;I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v2, p3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setShadowCorner(F)V

    .line 25
    sget-boolean p3, Lolb;->P:Z

    if-nez p3, :cond_0

    .line 26
    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p3, p4}, Landroid/view/View;->setClickable(Z)V

    .line 27
    :cond_0
    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    sget-object v2, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->BOTTOM_TOOLBAR:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {p3, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    .line 28
    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    sget-object v2, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->BOTTOM_TOOLBAR_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {p3, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    .line 29
    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    .line 30
    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v3, Lcom/transsion/widgetsliquid/R$layout;->os_liquid_foot_opt_bar_root:I

    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p3, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    new-instance p3, Ljv9;

    sget-object v3, Lf43;->q:Lf43$s;

    invoke-direct {p3, p0, v3}, Ljv9;-><init>(Ljava/lang/Object;Laz3;)V

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->M:Ljv9;

    .line 34
    sget p3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_container:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    .line 35
    invoke-static {p1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 36
    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_pad_space050:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_0

    .line 37
    :cond_1
    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_space050:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 38
    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p3, p4, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    .line 40
    sget p3, Lcom/transsion/widgetslib/R$string;->os_more:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->s:Ljava/lang/String;

    .line 41
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 42
    sget p3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_isFootActionBar:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->o:Z

    .line 43
    sget p3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_isFootBarOnlyPortrait:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->A:Z

    .line 44
    sget p3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_single_group:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->J:Z

    .line 45
    sget p3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_item_margin:I

    const/4 v3, 0x0

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    .line 46
    iget-boolean p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->o:Z

    if-eqz p3, :cond_2

    .line 47
    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_text_primary:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_text_primary_hios:I

    invoke-static {p3, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->n:I

    .line 48
    :cond_2
    sget p3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_max_visible_tab_count:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p:I

    if-ge p3, v2, :cond_3

    .line 49
    iput v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p:I

    .line 50
    :cond_3
    sget p3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_init_show:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->j:Z

    .line 51
    sget p3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_immersive:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->k:Z

    .line 52
    sget p3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_opt_menu:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->inflateMenu(I)V

    .line 54
    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-static {p1}, Lolb;->X(Landroid/content/Context;)Z

    move-result p1

    .line 57
    sget-object p2, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->P:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "FootOperationBar: isGestureNavigationBarOn =="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mImmersive=="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->k:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance p1, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;

    invoke-direct {p1, p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->t:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;

    .line 59
    iget-boolean p2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->A:Z

    if-nez p2, :cond_5

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 61
    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->u:I

    .line 63
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_liquid_bottomtoolbar_press_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->I:I

    .line 64
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->y()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->z(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->m:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->j:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$l;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->g:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->t:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;

    return-object p0
.end method

.method private getPopupHeight()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_bg_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_popup_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->l:[Z

    if-eqz p0, :cond_0

    array-length p0, p0

    mul-int/2addr p0, v1

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->h:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->i:Z

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/content/Context;Landroid/view/View;I[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->F(Landroid/content/Context;Landroid/view/View;I[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->G(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->H(Landroid/view/View;)V

    return-void
.end method

.method private setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->w:I

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->x(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    sget-object v1, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->P:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemMargin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->o:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p:I

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v0, v1, :cond_1

    iput v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->w(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p(Landroid/view/View;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p:I

    if-le v1, v2, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v3

    :goto_0
    iput v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    invoke-virtual {p0, p1, v1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->s:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    invoke-virtual {p0, v1, v4, v2}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->v(Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->g:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->setMoreViewListener(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->D(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    :goto_1
    return-void
.end method

.method private setMoreViewListener(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$b;

    invoke-direct {v0, p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$b;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->s(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Ls53;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v3, v4, v0, v5, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$e;

    invoke-direct {v0, p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$e;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final B()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    sget v2, Lcom/transsion/widgetslib/R$id;->os_fob_item_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->I:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setFillColor(I)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final C()V
    .locals 0

    return-void
.end method

.method public final D(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 4

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    sub-int v1, p2, v0

    const/4 v2, 0x1

    if-lez v1, :cond_0

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->l:[Z

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->l:[Z

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    sub-int v3, v0, v3

    aput-boolean v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v2

    :goto_1
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    :goto_2
    if-ge v0, p2, :cond_2

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->l:[Z

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    sub-int v3, v0, v3

    aput-boolean v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->C()V

    return-void
.end method

.method public final E([Ljava/lang/String;I)V
    .locals 4

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    sub-int v1, p2, v0

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->l:[Z

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->l:[Z

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    sub-int v2, v0, v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->C()V

    return-void
.end method

.method public final F(Landroid/content/Context;Landroid/view/View;I[Ljava/lang/String;)V
    .locals 3

    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-instance p3, Lcom/transsion/widgetslib/widget/OSPopupWindow;

    sget v1, Lcom/transsion/widgetslib/R$style;->OsLiquidPopupWindowStyle:I

    const/4 v2, 0x0

    invoke-direct {p3, p1, v2, v0, v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    sget p3, Lcom/transsion/widgetslistitemlayout/R$layout;->os_popup_window_layout:I

    invoke-static {p1, p3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {v1, p3}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setContentView(Landroid/view/View;)V

    :cond_0
    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->getList()Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    new-instance v1, Lvs7;

    invoke-direct {v1, p0}, Lvs7;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)V

    invoke-virtual {p3, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p1, p4}, Lqb9;->b(Landroid/content/Context;[Ljava/lang/String;)Lqb9;

    move-result-object p3

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->getList()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->H:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {p3, v1}, Lqb9;->setGroupCounts(Ljava/util/List;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->l:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-boolean v1, v1, v0

    invoke-virtual {p3, v0, v1}, Lqb9;->i(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, p3}, Lolb;->A0(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result p1

    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {p3, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setWidth(I)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {p1, p3, p3}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->J(ZZ)V

    :cond_3
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    array-length p1, p4

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->N(Landroid/view/View;I)V

    return-void
.end method

.method public final G(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->M:Ljv9;

    invoke-virtual {v0}, Ljv9;->c()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->M:Ljv9;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->N:Lkv9;

    invoke-virtual {v0, v1}, Ljv9;->z(Lkv9;)Ljv9;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->M:Ljv9;

    new-instance v1, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$g;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$g;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lf43;->b(Lf43$r;)Lf43;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->M:Ljv9;

    invoke-virtual {p0}, Ljv9;->p()V

    return-void
.end method

.method public final H(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->M:Ljv9;

    invoke-virtual {v0}, Ljv9;->c()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->M:Ljv9;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->O:Lkv9;

    invoke-virtual {v0, v1}, Ljv9;->z(Lkv9;)Ljv9;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->M:Ljv9;

    new-instance v1, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$h;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$h;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lf43;->b(Lf43$r;)Lf43;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->M:Ljv9;

    invoke-virtual {p0}, Ljv9;->p()V

    return-void
.end method

.method public final I(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_3

    sget p0, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public changeFootItem(III)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->changeFootItem(IILjava/lang/String;)V

    return-void
.end method

.method public changeFootItem(IILjava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeFootItem(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->getItemImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->getItemTextView(I)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public changeFootItem(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeItemEnable(IZ)V
    .locals 3

    sget-object v0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->P:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mVisibleTabCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->I(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->l:[Z

    if-eqz p0, :cond_1

    sub-int v1, p1, v0

    array-length v2, p0

    if-ge v1, v2, :cond_1

    sub-int/2addr p1, v0

    aput-boolean p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public changeItems([I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->changeItems([I[I[Ljava/lang/String;)V

    return-void
.end method

.method public changeItems([I[I[Ljava/lang/String;)V
    .locals 4

    .line 2
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->changeItems([I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public changeItems([I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->changeItems([I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public changeItems([I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->w:I

    .line 13
    array-length v0, p1

    .line 14
    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->x(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    .line 15
    sget-object v1, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->P:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " titleId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " itemMargin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p:I

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v0, v1, :cond_4

    .line 17
    iput v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    if-ne v0, v3, :cond_3

    .line 18
    array-length v1, p2

    if-lez v1, :cond_3

    .line 19
    aget-object p1, p2, v4

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->w(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 20
    array-length p2, p3

    if-lez p2, :cond_2

    aget-object p2, p3, v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 21
    sget p2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 22
    aget-object p3, p3, v4

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    :cond_2
    invoke-virtual {p0, p1, v4}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p(Landroid/view/View;I)V

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r([I[Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_1

    .line 25
    :cond_4
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p:I

    if-le v1, v2, :cond_5

    const/4 v1, 0x5

    goto :goto_0

    :cond_5
    sub-int/2addr v1, v3

    :goto_0
    iput v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->q:I

    .line 26
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r([I[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 27
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->s:Ljava/lang/String;

    iget p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    invoke-virtual {p0, p1, v4, p3}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->v(Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object p1

    .line 28
    sget p3, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->g:Landroid/view/View;

    .line 29
    invoke-direct {p0, p3}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->setMoreViewListener(Landroid/view/View;)V

    .line 30
    iget-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    invoke-virtual {p0, p2, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->E([Ljava/lang/String;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public changeItemsEnable([Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    :cond_0
    array-length v0, p1

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v2, p1, v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->changeItemEnable(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public changePopAdapter([I[I)V
    .locals 4

    .line 1
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->changePopAdapter([I[Ljava/lang/String;)V

    return-void
.end method

.method public changePopAdapter([I[Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    .line 9
    array-length p1, p1

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->E([Ljava/lang/String;I)V

    return-void
.end method

.method public closeFootOperationBar()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->i:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->g:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->i:Z

    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->h:Z

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->t()V

    :cond_2
    return-void
.end method

.method public enableMore(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->I(Landroid/view/View;Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getForceBCPlatformColorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getOsPressView()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_bg_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_popup_item_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemImageView(I)Landroid/widget/ImageView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->getItemView(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    :goto_0
    return-object p0
.end method

.method public getItemTextView(I)Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->getItemView(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    :goto_0
    return-object p0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getLiquidContainer()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    return-object p0
.end method

.method public getPopupMaxHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->L:I

    return p0
.end method

.method public getPopupWindow()Lcom/transsion/widgetslib/widget/OSPopupWindow;
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/widget/OSPopupWindow;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    const/4 v2, 0x0

    sget v3, Lcom/transsion/widgetslib/R$style;->OsLiquidPopupWindowStyle:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/transsion/widgetslib/widget/OSPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslistitemlayout/R$layout;->os_popup_window_layout:I

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->setContentView(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public inflateMenu(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->J:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->inflateMenu(IZ)V

    return-void
.end method

.method public inflateMenu(IZ)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 2
    iput-boolean p2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->J:Z

    .line 3
    new-instance p2, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->v:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 6
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->v:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public initForceBCPlatformColorView()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->enabledPressView(Z)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getOsPressView()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getOsPressView()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getRoundRadius()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method public initShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->j:Z

    return-void
.end method

.method public final o(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_safe_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->z:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    shl-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_liquid_bottomtoolbar_press_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->I:I

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B()V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->updateFootBarView()V

    iget-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->h:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->u:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->t:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$k;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->u:I

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->C:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->C:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    iget p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->D:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public openFootOperationBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->i:Z

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->h:Z

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->A()V

    :cond_0
    return-void
.end method

.method public final p(Landroid/view/View;I)V
    .locals 2

    sget v0, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$c;

    invoke-direct {v1, p0, p2}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$c;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->s(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final q(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    iget v4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->v(Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r([I[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge v0, p4, :cond_3

    array-length v1, p2

    if-lt v0, v1, :cond_0

    goto :goto_2

    :cond_0
    aget-object v1, p2, v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    iget v3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->v(Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v1

    if-eqz p3, :cond_2

    array-length v2, p3

    if-ge v0, v2, :cond_2

    aget-object v2, p3, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final s(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->r0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lolb;->P:Z

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/widgetslib/R$id;->os_fob_item_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->I:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setFillColor(I)V

    new-instance v1, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$d;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->i:Z

    return-void
.end method

.method public setBCPlatformColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getOsPressView()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getOsPressView()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->setFillColor(I)V

    :cond_0
    return-void
.end method

.method public setClickInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->d:J

    return-void
.end method

.method public setDisableDefaultClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->m:Z

    return-void
.end method

.method public setGroupCounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->H:Ljava/util/List;

    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    return-void
.end method

.method public setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    return-void
.end method

.method public setMixLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setMixLevel(I)V

    return-void
.end method

.method public setNightMode(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1f
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setNightMode(Z)V

    return-void
.end method

.method public setOnFootOptBarClickListener(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$l;)V
    .locals 0

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    return-void
.end method

.method public setPopList([I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPopupFullScreenMaxHeight(I)V
    .locals 2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->setPopupMaxHeight(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->L:I

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->C()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->L:I

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->C()V

    :cond_0
    return-void
.end method

.method public setSingGroup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->J:Z

    return-void
.end method

.method public setTopLineVisible(I)V
    .locals 1

    sget v0, Lcom/transsion/widgetslib/R$id;->os_fob_top_line:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setVisibility(I)V

    return-void
.end method

.method public startBgModeTransition(Z)V
    .locals 18

    move-object/from16 v6, p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v6, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->C:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->u()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget-object v0, v6, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetsliquid/R$color;->os_color_white70:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v8

    iget-object v0, v6, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetsliquid/R$color;->os_color_gray70:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v9

    if-eqz p1, :cond_3

    move v10, v8

    goto :goto_1

    :cond_3
    move v10, v9

    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v6, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->B:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v12, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;->Companion:Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;

    new-instance v15, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v7

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Ljava/util/ArrayList;Landroid/animation/ArgbEvaluator;[II)V

    new-instance v0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;

    invoke-direct {v0, v6, v8, v9, v7}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$j;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;IILjava/util/ArrayList;)V

    new-instance v1, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$a;

    invoke-direct {v1, v6, v7, v10}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$a;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Ljava/util/ArrayList;I)V

    const-wide/16 v13, 0xc8

    move-object v10, v12

    move/from16 v12, p1

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v10 .. v17}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->c(Ljava/util/List;ZJLe74;Le74;Le74;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->C:Landroid/animation/Animator;

    return-void
.end method

.method public final t()V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Ls53;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v3, v4, v1, v5, v0}, Ls53;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;

    invoke-direct {v0, p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$f;-><init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public toggleFootOperationBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->closeFootOperationBar()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->openFootOperationBar()V

    :goto_0
    return-void
.end method

.method public final u()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public updateFootBarView()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;ZI)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_pad_space050:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space050:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_1

    move p3, v2

    :cond_1
    const/4 p2, 0x1

    invoke-static {v0, p2, p3}, Lgcc;->h(Landroid/content/Context;ZI)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->o(Landroid/view/View;)V

    sget p0, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2
.end method

.method public final w(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgcc;->i(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->o(Landroid/view/View;)V

    sget p0, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method public final x(I)I
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->J:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p:I

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->E:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->F:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->G:I

    invoke-static {v0, v1}, Lyj1;->d(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    neg-int v0, v0

    goto :goto_1

    :cond_0
    if-lt p1, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_liquid_toolbar_maxwidth_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->F:I

    if-ne v0, v1, :cond_2

    if-lt p1, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->G:I

    invoke-static {v0, v1}, Lyj1;->d(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->K:I

    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-static {v1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_4

    if-le p1, v2, :cond_5

    move v1, v2

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->p:I

    if-le p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, p1

    :goto_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_liquid_toolbar_single_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->D:I

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-static {v4}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_pad_space050:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_liquid_toolbar_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    sub-int/2addr v1, v3

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->D:I

    goto :goto_3

    :cond_7
    if-lt p1, v2, :cond_8

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_liquid_toolbar_maxwidth:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->D:I

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_space050:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_liquid_toolbar_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    sub-int/2addr v1, v3

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->D:I

    :goto_3
    return v0
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->N:Lkv9;

    const v1, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v1}, Lkv9;->g(F)Lkv9;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->N:Lkv9;

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-virtual {v0, v1}, Lkv9;->i(F)Lkv9;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->N:Lkv9;

    const v2, 0x3f866666    # 1.05f

    invoke-virtual {v0, v2}, Lkv9;->h(F)Lkv9;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->O:Lkv9;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Lkv9;->g(F)Lkv9;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->O:Lkv9;

    invoke-virtual {v0, v1}, Lkv9;->i(F)Lkv9;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->O:Lkv9;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lkv9;->h(F)Lkv9;

    return-void
.end method

.method public final synthetic z(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->f:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
