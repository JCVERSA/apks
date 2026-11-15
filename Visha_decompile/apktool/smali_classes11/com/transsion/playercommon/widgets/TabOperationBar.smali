.class public Lcom/transsion/playercommon/widgets/TabOperationBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/TabOperationBar$n;,
        Lcom/transsion/playercommon/widgets/TabOperationBar$m;,
        Lcom/transsion/playercommon/widgets/TabOperationBar$o;,
        Lcom/transsion/playercommon/widgets/TabOperationBar$p;
    }
.end annotation


# instance fields
.field public final A:Lcom/transsion/playercommon/widgets/TabOperationBar$n;

.field public B:F

.field public C:I

.field public D:Landroid/view/ViewTreeObserver$OnDrawListener;

.field public E:Landroid/view/View;

.field public final F:I

.field public final G:I

.field public H:Z

.field public I:Ljava/util/List;

.field public final J:I

.field public final K:I

.field public L:Z

.field public M:Landroid/view/View;

.field public N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:Z

.field public b:I

.field public final c:Landroid/widget/LinearLayout;

.field public d:Lcom/transsion/playercommon/widgets/TabOperationBar$o;

.field public e:Lcom/transsion/playercommon/widgets/TabOperationBar$p;

.field public final f:Ljava/util/List;

.field public g:Landroid/widget/ListPopupWindow;

.field public h:Landroid/view/View;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:[Z

.field public m:I

.field public final n:Z

.field public o:I

.field public p:I

.field public q:I

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public final x:Ljava/util/List;

.field public final y:Landroid/content/Context;

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->i:Z

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->j:Z

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->u:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    const v2, 0x3f666666    # 0.9f

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->B:F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->I:Ljava/util/List;

    sget-object v2, Lcom/transsion/utils/BaseConstant;->l:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    iput-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$color;->online_video_bottom_tab_text_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->G:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$layout;->tab_opt_bar_root:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_container:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->f:Ljava/util/List;

    sget-object v2, Lcom/transsion/playercommon/R$styleable;->TabOperationBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-static {p1}, Lcom/transsion/utils/a;->k(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget v2, Lcom/transsion/playercommon/R$styleable;->TabOperationBar_isFootActionBar:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    sget v3, Lcom/transsion/playercommon/R$styleable;->TabOperationBar_foot_need_change_img_color:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->u:Z

    invoke-static {p1}, Lqha;->b(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->U:Z

    sget v3, Lcom/transsion/playercommon/R$attr;->os_platform_basic_color:I

    sget v4, Lcom/transsion/playercommon/R$attr;->os_foot_more:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/playercommon/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    sget v5, Lcom/transsion/playercommon/R$drawable;->os_ic_foot_more_hios:I

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->z:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/playercommon/R$color;->os_fill_icon_primary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->q:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->q:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v5, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->q:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    const/16 v6, 0x33

    invoke-static {v6, v2, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->p:I

    sget v2, Lcom/transsion/playercommon/R$color;->os_text_primary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v5, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v6, v2, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->o:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/playercommon/R$color;->os_text_primary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->o:I

    invoke-static {}, Lolb;->getOsType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lolb;->a:[Ljava/lang/String;

    aget-object v5, v3, v1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v2, Lcom/transsion/playercommon/R$color;->os_fill_icon_toggle_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->p:I

    sget v2, Lcom/transsion/playercommon/R$color;->os_fill_icon_secondary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->q:I

    sget v2, Lcom/transsion/playercommon/R$color;->os_text_tertiary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    goto :goto_0

    :cond_1
    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/transsion/playercommon/R$color;->os_fill_icon_tertiary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->p:I

    sget v2, Lcom/transsion/playercommon/R$color;->os_fill_icon_quaternary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->q:I

    sget v2, Lcom/transsion/playercommon/R$color;->os_text_quinary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lolb;->z(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->p:I

    sget v2, Lcom/transsion/playercommon/R$color;->os_fill_icon_secondary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->q:I

    invoke-static {p1}, Lolb;->z(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->o:I

    sget v2, Lcom/transsion/playercommon/R$color;->os_text_tertiary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    :goto_0
    sget v2, Lcom/transsion/playercommon/R$styleable;->TabOperationBar_foot_click_image_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->s:Z

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->p:I

    :cond_3
    sget v2, Lcom/transsion/playercommon/R$styleable;->TabOperationBar_foot_normal_image_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->r:Z

    if-eqz v3, :cond_4

    const/high16 v3, -0x10000

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->q:I

    :cond_4
    sget v2, Lcom/transsion/playercommon/R$styleable;->TabOperationBar_foot_text_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->n:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/playercommon/R$color;->os_text_secondary_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    :cond_5
    iget v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->F:I

    sget v2, Lcom/transsion/playercommon/R$styleable;->TabOperationBar_foot_click_text_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->o:I

    :cond_6
    sget v2, Lcom/transsion/playercommon/R$styleable;->TabOperationBar_foot_max_visible_tab_count:I

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->v:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_7

    iput v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->v:I

    :cond_7
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->E(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->F()V

    sget p1, Lcom/transsion/playercommon/R$styleable;->TabOperationBar_foot_opt_headerLayout:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->addHeaderView(I)V

    :cond_8
    sget p1, Lcom/transsion/playercommon/R$styleable;->TabOperationBar_foot_opt_menu:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->inflateMenu(I)V

    :cond_9
    sget p1, Lcom/transsion/playercommon/R$styleable;->TabOperationBar_foot_init_show:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->k:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/transsion/playercommon/widgets/TabOperationBar$n;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar$n;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->A:Lcom/transsion/playercommon/widgets/TabOperationBar$n;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->J:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->K:I

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/widgets/TabOperationBar;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->H(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/widgets/TabOperationBar;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/TabOperationBar;->I(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/widgets/TabOperationBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/widgets/TabOperationBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->k:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/playercommon/widgets/TabOperationBar;)Lcom/transsion/playercommon/widgets/TabOperationBar$o;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->d:Lcom/transsion/playercommon/widgets/TabOperationBar$o;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/playercommon/widgets/TabOperationBar;)[Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->l:[Z

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/widgets/TabOperationBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->h:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/playercommon/widgets/TabOperationBar;)Lcom/transsion/playercommon/widgets/TabOperationBar$n;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->A:Lcom/transsion/playercommon/widgets/TabOperationBar$n;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/playercommon/widgets/TabOperationBar;)Landroid/widget/ListPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/playercommon/widgets/TabOperationBar;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->f:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/playercommon/widgets/TabOperationBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->i:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/playercommon/widgets/TabOperationBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->K:I

    return p0
.end method

.method public static bridge synthetic m(Lcom/transsion/playercommon/widgets/TabOperationBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->J:I

    return p0
.end method

.method public static bridge synthetic n(Lcom/transsion/playercommon/widgets/TabOperationBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->w:I

    return p0
.end method

.method public static bridge synthetic o(Lcom/transsion/playercommon/widgets/TabOperationBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->j:Z

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/playercommon/widgets/TabOperationBar;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->O(IZ)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/playercommon/widgets/TabOperationBar;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->S(Landroid/view/View;Z)V

    return-void
.end method

.method private setContainerWidth(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    const v4, 0x418547ae    # 16.66f

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$dimen;->os_foot_bar_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v0}, Lolb;->w0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$dimen;->os_curve_land:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_4

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->L:Z

    if-eqz p1, :cond_1

    const p1, 0x418d47ae    # 17.66f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x41200000    # 10.0f

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    :goto_1
    float-to-int p1, p1

    goto :goto_4

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->L:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v4, 0x41800000    # 16.0f

    :goto_2
    invoke-static {v1, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->L:Z

    if-eqz p1, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_1

    :cond_6
    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->L:Z

    if-eqz p1, :cond_7

    const v3, 0x4242a3d7    # 48.66f

    :cond_7
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_1

    :cond_8
    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->L:Z

    if-eqz p1, :cond_9

    const/high16 p1, 0x43520000    # 210.0f

    goto :goto_3

    :cond_9
    const/high16 p1, 0x42c60000    # 99.0f

    :goto_3
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_1

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_b

    goto :goto_5

    :cond_b
    move v1, v5

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v2, -0x1

    if-eq v1, v4, :cond_c

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->P:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->S:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, p1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6

    :cond_c
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, p1, v5, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_6
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setImageColorStateList(Landroid/widget/ImageView;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[I

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    const v1, 0x10100a1

    filled-new-array {v1}, [I

    move-result-object v1

    aput-object v1, v0, v2

    :goto_0
    const/4 v1, 0x1

    new-array v2, v2, [I

    aput-object v2, v0, v1

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->p:I

    iget p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->q:I

    filled-new-array {v1, p0}, [I

    move-result-object p0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerWidth(I)V

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->v:I

    add-int/lit8 v2, v1, -0x1

    if-gt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :goto_0
    iput v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->w:I

    invoke-virtual {p0, p1, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->s(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->z:I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$string;->os_foot_opt_bar_more:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->A(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$id;->os_fob_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->h:Landroid/view/View;

    new-instance v3, Lcom/transsion/playercommon/widgets/TabOperationBar$d;

    invoke-direct {v3, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar$d;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->P(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->s(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->B(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final B(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$layout;->tab_opt_action_bar_item:I

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$layout;->tab_opt_bar_item:I

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    sget v2, Lcom/transsion/playercommon/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/transsion/playercommon/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setImageColorStateList(Landroid/widget/ImageView;)V

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    if-eqz p1, :cond_2

    const p1, 0x10100a7

    filled-new-array {p1}, [I

    move-result-object p1

    new-array p2, v1, [I

    filled-new-array {p1, p2}, [[I

    move-result-object p1

    iget p2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->o:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    filled-new-array {p2, v1}, [I

    move-result-object p2

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, p1, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->R(Landroid/view/View;)V

    return-object v0
.end method

.method public final C(Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;)Landroid/view/View;
    .locals 6

    iget-object v0, p1, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$layout;->tab_opt_action_bar_item:I

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$layout;->no_title_item_for_foot_operation_bar:I

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->unselectedUrl:Ljava/lang/String;

    const-string v5, ".svg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    const-class v5, Landroid/graphics/drawable/PictureDrawable;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    new-instance v5, Ln7a;

    invoke-direct {v5}, Ln7a;-><init>()V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->unselectedUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    iget v5, p1, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->placeHolderNormalResId:I

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/RequestBuilder;

    new-instance v5, Lcom/transsion/playercommon/widgets/TabOperationBar$i;

    invoke-direct {v5, p0, v2, v3}, Lcom/transsion/playercommon/widgets/TabOperationBar$i;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;J)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->unselectedUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    iget v5, p1, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->placeHolderNormalResId:I

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/RequestBuilder;

    new-instance v5, Lcom/transsion/playercommon/widgets/TabOperationBar$j;

    invoke-direct {v5, p0, v2, v3}, Lcom/transsion/playercommon/widgets/TabOperationBar$j;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;J)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->R(Landroid/view/View;)V

    iget-object p1, p1, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->x(Landroid/view/View;)V

    :cond_2
    return-object v0
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$layout;->tab_opt_action_bar_item:I

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$layout;->no_title_item_for_foot_operation_bar:I

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :goto_0
    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->R(Landroid/view/View;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->x(Landroid/view/View;)V

    :cond_2
    return-object v0
.end method

.method public final E(Landroid/content/Context;)V
    .locals 7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->G(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->os_foot_bar_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lolb;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {}, Lolb;->getOsType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$color;->os_altitude_quaternary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->C:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$color;->os_altitude_primary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->C:I

    :cond_1
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_5

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1}, Lolb;->w0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1}, Lzca;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-eqz p1, :cond_4

    const/4 v5, 0x1

    if-eq p1, v5, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_4

    const/4 v5, 0x3

    if-eq p1, v5, :cond_2

    move v1, v0

    move p1, v3

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$dimen;->os_curve_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/playercommon/R$dimen;->os_foot_bar_min_height_curve_land:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$dimen;->os_curve_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/playercommon/R$dimen;->os_foot_bar_min_height_curve_land:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    move v6, v1

    move v1, p1

    move p1, v6

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$dimen;->os_foot_bar_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->os_curve_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int v1, p1, v0

    move p1, v1

    :goto_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_6
    return-void
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->O:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    const/high16 v1, 0x43580000    # 216.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->P:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->P:I

    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->Q:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->R:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    const/high16 v1, 0x43070000    # 135.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->S:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->T:I

    return-void
.end method

.method public final G(Landroid/content/res/Configuration;)V
    .locals 2

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->L:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->L:Z

    :goto_1
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerWidth(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->R(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final synthetic H(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->e:Lcom/transsion/playercommon/widgets/TabOperationBar$p;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar$p;->onHeaderClick()V

    :cond_0
    return-void
.end method

.method public final synthetic I(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$id;->os_foot_opt_space:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->L:Z

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    :goto_0
    if-lez p0, :cond_2

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    if-lez p0, :cond_3

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final J(Landroid/widget/ListAdapter;I)I
    .locals 8

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, p0

    move v5, v4

    move-object v6, v3

    :goto_0
    if-ge p0, v2, :cond_3

    invoke-interface {p1, p0}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v7

    if-eq v7, v5, :cond_0

    move-object v6, v3

    move v5, v7

    :cond_0
    invoke-interface {p1, p0, v6, v3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-lt v7, p2, :cond_1

    return p2

    :cond_1
    if-le v7, v4, :cond_2

    move v4, v7

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public final K()V
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

    new-instance v0, Lcom/transsion/playercommon/widgets/TabOperationBar$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar$a;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final L(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Ls53;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4, v4}, Ls53;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/widgets/TabOperationBar$c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar$c;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final M()V
    .locals 3

    iget v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->C:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->B:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->C:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->C:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->C:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    return-void
.end method

.method public final N()V
    .locals 6

    new-instance v0, Lcom/transsion/playercommon/widgets/TabOperationBar$m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar$m;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;Lcda;)V

    new-instance v2, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/transsion/playercommon/R$style;->OsFootOptPopupEdgeStyle:I

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->b:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->J(Landroid/widget/ListAdapter;I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    new-instance v4, Lcom/transsion/playercommon/widgets/TabOperationBar$l;

    invoke-direct {v4, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar$l;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    const v4, 0x800005

    invoke-virtual {v1, v4}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/transsion/playercommon/widgets/TabOperationBar$10;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar$10;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v1}, Lolb;->w0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v1}, Lzca;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    sget v2, Lcom/transsion/playercommon/R$drawable;->os_foot_opt_popup_background_curse_0_180:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$dimen;->os_curse_offset_portrait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    sget v2, Lcom/transsion/playercommon/R$drawable;->os_foot_opt_popup_background_curse_270:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$dimen;->os_curse_offset_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    sget v2, Lcom/transsion/playercommon/R$drawable;->os_foot_opt_popup_background_curse_90:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$dimen;->os_curse_offset_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public final O(IZ)V
    .locals 12

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v0}, Lvha;->s(Landroid/content/Context;)Z

    move-result v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_19

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    sget v5, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/playercommon/widgets/OSMaskImageView;

    iget-object v5, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    sget v6, Lcom/transsion/playercommon/R$id;->os_foot_opt_bar_item_icon_model:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    sget v7, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    sget v8, Lcom/transsion/playercommon/R$id;->custom_os_foot_opt_bar_item_image:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget v9, Lcom/transsion/playercommon/R$id;->custom_os_foot_opt_bar_item_image_fold:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-ne v2, p1, :cond_7

    if-nez v0, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v4}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->isSelectedAnimRunning()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v9, 0x1

    if-eqz p2, :cond_4

    new-instance v10, Lcom/transsion/playercommon/widgets/TabOperationBar$g;

    invoke-direct {v10, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar$g;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V

    invoke-virtual {v4, v9, v10}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->setSelectedAnim(ZLandroid/animation/AnimatorListenerAdapter;)V

    if-eqz v3, :cond_6

    iget v10, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->o:I

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    iget-boolean v10, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    if-eqz v10, :cond_5

    return-void

    :cond_5
    invoke-virtual {v4, v9}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->setSelected(Z)V

    if-eqz v3, :cond_6

    iget v10, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->o:I

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_1
    invoke-virtual {p0, v9, v2, v4}, Lcom/transsion/playercommon/widgets/TabOperationBar;->loadImageUrlsFromTabView(ZILcom/transsion/playercommon/widgets/OSMaskImageView;)V

    goto :goto_3

    :cond_7
    iget-boolean v9, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    if-eqz v9, :cond_8

    return-void

    :cond_8
    if-eqz v3, :cond_9

    iget v9, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    invoke-virtual {v4}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->isSelectedAnimRunning()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->cancelSelectedAnimRunning()V

    goto :goto_2

    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v4, v1}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->setSelectedAnim(Z)V

    :cond_b
    :goto_2
    invoke-virtual {v4, v1}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->setSelected(Z)V

    invoke-virtual {p0, v1, v2, v4}, Lcom/transsion/playercommon/widgets/TabOperationBar;->loadImageUrlsFromTabView(ZILcom/transsion/playercommon/widgets/OSMaskImageView;)V

    :goto_3
    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v3}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v3

    sget-object v9, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v10, -0x1

    const/16 v11, 0x8

    if-ne v3, v9, :cond_10

    if-eqz v8, :cond_c

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    if-eqz v7, :cond_15

    if-eqz v0, :cond_d

    if-ne v2, p1, :cond_d

    move v3, v1

    goto :goto_4

    :cond_d
    move v3, v11

    :goto_4
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_e
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v3}, Lcom/blankj/utilcode/util/a;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1, v3}, Lvha;->j(ILandroid/content/Context;)I

    move-result v3

    if-ne v3, v10, :cond_f

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v6, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1, v6}, Lvha;->i(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_8

    :cond_f
    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v6, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1, v6}, Lvha;->i(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1, v6}, Lvha;->j(ILandroid/content/Context;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3, v7}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_8

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz v8, :cond_15

    if-eqz v0, :cond_12

    if-ne v2, p1, :cond_12

    move v3, v1

    goto :goto_6

    :cond_12
    move v3, v11

    :goto_6
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_13
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v3}, Lcom/blankj/utilcode/util/a;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1, v3}, Lvha;->j(ILandroid/content/Context;)I

    move-result v3

    if-ne v3, v10, :cond_14

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v6, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1, v6}, Lvha;->i(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_8

    :cond_14
    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v6, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1, v6}, Lvha;->i(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1, v6}, Lvha;->j(ILandroid/content/Context;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v3, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_15
    :goto_8
    iget-boolean v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->U:Z

    if-eqz v3, :cond_18

    if-eqz v5, :cond_18

    if-ne v2, p1, :cond_16

    move v3, v11

    goto :goto_9

    :cond_16
    move v3, v1

    :goto_9
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    if-ne v2, p1, :cond_17

    move v11, v1

    :cond_17
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {p1, v3}, Lvha;->l(ILandroid/content/Context;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_19
    return-void
.end method

.method public final P(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 4

    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->l:[Z

    iget v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->v:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->w:I

    :goto_1
    if-ge v0, p2, :cond_1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->f:Ljava/util/List;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->l:[Z

    iget v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->w:I

    sub-int v3, v0, v3

    aput-boolean v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->N()V

    return-void
.end method

.method public final Q([Ljava/lang/String;I)V
    .locals 4

    iget v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->w:I

    sub-int v1, p2, v0

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->l:[Z

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->f:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->l:[Z

    iget v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->w:I

    sub-int v2, v0, v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->N()V

    return-void
.end method

.method public final R(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v2, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->O:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->L:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->R:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->Q:I

    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_1
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v1, 0x1

    if-eq v0, v2, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    sget v5, Lcom/transsion/playercommon/R$id;->custom_os_foot_opt_bar_item_image:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0x14

    const/16 v8, 0xd

    if-eqz v0, :cond_3

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->T:I

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    invoke-virtual {v5, v0, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    sget v0, Lcom/transsion/playercommon/R$id;->os_fob_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-eq v5, v2, :cond_6

    move v1, v4

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-eq v1, v2, :cond_7

    const v1, 0x800013

    goto :goto_5

    :cond_7
    const/16 v1, 0x11

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->T:I

    goto :goto_6

    :cond_8
    move v1, v4

    :goto_6
    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-eq v4, v2, :cond_9

    goto :goto_7

    :cond_9
    const/4 v3, -0x2

    :goto_7
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/transsion/playercommon/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    if-nez v2, :cond_a

    new-instance v2, Lada;

    invoke-direct {v2, p0, p1, v0, v1}, Lada;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public final S(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_3

    sget p0, Lcom/transsion/playercommon/R$id;->os_fob_layout:I

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

.method public addHeaderView(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->removeHeaderView()V

    .line 3
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->M:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->changeHeaderViewVisibility(I)V

    .line 5
    new-instance v0, Lbda;

    invoke-direct {v0, p0}, Lbda;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addItem(Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->C(Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->w(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerWidth(I)V

    return-void
.end method

.method public addSingleItemView(III)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->A(ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->resetClickListener()V

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public changeFootItem(III)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/TabOperationBar;->changeFootItem(IILjava/lang/String;)V

    return-void
.end method

.method public changeFootItem(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2
    sget v0, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-boolean p2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    if-nez p2, :cond_0

    .line 7
    iget p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public changeHeaderViewVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->M:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public changeItemEnable(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->S(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->w:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->S(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->l:[Z

    sub-int/2addr p1, v0

    aput-boolean p2, p0, p1

    :goto_0
    return-void
.end method

.method public changeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 8
    invoke-direct {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerWidth(I)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->t(Ljava/util/List;I)V

    return-void
.end method

.method public changeItems([I[I)V
    .locals 4

    .line 19
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 20
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->changeItems([I[Ljava/lang/String;)V

    return-void
.end method

.method public changeItems([I[Ljava/lang/String;)V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 26
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    .line 29
    array-length v0, p1

    .line 30
    invoke-direct {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerWidth(I)V

    .line 31
    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->v:I

    add-int/lit8 v2, v1, -0x1

    if-gt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 32
    :goto_0
    iput v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->w:I

    .line 33
    invoke-virtual {p0, p1, p2, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->u([I[Ljava/lang/String;I)V

    .line 34
    iget p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->z:I

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->os_foot_opt_bar_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p0, p1, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->A(ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 37
    sget v1, Lcom/transsion/playercommon/R$id;->os_fob_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->h:Landroid/view/View;

    .line 38
    new-instance v2, Lcom/transsion/playercommon/widgets/TabOperationBar$k;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar$k;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->Q([Ljava/lang/String;I)V

    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->u([I[Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public changeItems([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    .line 16
    array-length v0, p1

    .line 17
    invoke-direct {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerWidth(I)V

    .line 18
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->v([Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public changeItemsEnable([Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    array-length v0, p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v2, p1, v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->changeItemEnable(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public changeToDarkMode(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->H:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->G:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->F:I

    :goto_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setItemSelectState(I)V

    return-void
.end method

.method public closeDynamicBlur()V
    .locals 0

    return-void
.end method

.method public closeDynamicBlurWithRestoreBackground()V
    .locals 0

    return-void
.end method

.method public closeFootOperationBar()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->h:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->j:Z

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->i:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->y()V

    :cond_2
    return-void
.end method

.method public enableMore(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->S(Landroid/view/View;Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public expendTabTouchDelegate()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/transsion/playercommon/R$id;->os_fob_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/transsion/playercommon/widgets/TabOperationBar;->z(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFootItemView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/transsion/playercommon/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget p1, Lcom/transsion/playercommon/R$id;->os_stub_fpb_red_point:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/transsion/widgetslib/view/BadgeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/transsion/widgetslib/view/BadgeView;

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getItemViewCenterXPosition(I)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    return p1
.end method

.method public getItemViewWidth(I)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public getItemViewXPosition(I)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public hasItemRedPoint(I)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->t:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget p1, Lcom/transsion/playercommon/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/transsion/widgetslib/view/BadgeView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public inflateMenu(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public initShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->k:Z

    return-void
.end method

.method public loadImageUrls(ZILcom/transsion/playercommon/widgets/OSMaskImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->I:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;

    iget-object v0, v0, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->selectedUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->I:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p0, p2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->selectedUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->H:Z

    if-eqz p0, :cond_1

    iget-object p0, p2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->unselectedDarkUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->unselectedUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_2
    return-void
.end method

.method public loadImageUrlsFromTabView(ZILcom/transsion/playercommon/widgets/OSMaskImageView;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    iget-object v3, p2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->selectedUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->H:Z

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->unselectedDarkUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v3, p2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->unselectedUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    iget p1, p2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->placeHolderSelectResId:I

    goto :goto_1

    :cond_3
    iget p1, p2, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;->placeHolderNormalResId:I

    :goto_1
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance p2, Lcom/transsion/playercommon/widgets/TabOperationBar$h;

    invoke-direct {p2, p0, v0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar$h;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;J)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->G(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->updateFootBarView()V

    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->i:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->A:Lcom/transsion/playercommon/widgets/TabOperationBar$n;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->closeDynamicBlur()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->E(Landroid/content/Context;)V

    return-void
.end method

.method public onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->N:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerWidth(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->R(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public openFootOperationBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->j:Z

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->i:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->K()V

    :cond_0
    return-void
.end method

.method public final r(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/transsion/playercommon/R$id;->os_fob_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->z(Landroid/view/View;Landroid/view/View;Z)V

    new-instance v1, Lcom/transsion/playercommon/widgets/TabOperationBar$e;

    invoke-direct {v1, p0, p2}, Lcom/transsion/playercommon/widgets/TabOperationBar$e;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public removeHeaderView()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->M:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->M:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public removeItemView(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->resetClickListener()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public resetClickListener()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/transsion/playercommon/R$id;->os_fob_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->z(Landroid/view/View;Landroid/view/View;Z)V

    new-instance v2, Lcom/transsion/playercommon/widgets/TabOperationBar$f;

    invoke-direct {v2, p0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar$f;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetFootBarIconText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget p3, Lcom/transsion/playercommon/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public restoreTabTouchDelegate()V
    .locals 4

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->os_fob_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/graphics/Rect;

    new-instance v3, Landroid/view/TouchDelegate;

    invoke-direct {v3, v2, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->B(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->r(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBlurAlp(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->B:F

    :cond_1
    :goto_0
    return-void
.end method

.method public setContainerBackground(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerBackgroundNoOverlay(I)V

    return-void
.end method

.method public setContainerBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->C:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->E:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->D:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->M()V

    :cond_0
    return-void
.end method

.method public setContainerBackgroundNoOverlay(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerBackgroundColor(I)V

    return-void
.end method

.method public setFootOptBarClickTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->o:I

    return-void
.end method

.method public setFootOptBarTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->m:I

    return-void
.end method

.method public setImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->I:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->changeItems(Ljava/util/List;)V

    return-void
.end method

.method public setItemRedPointState(IZII)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lydc;->e()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/BadgeView;->getRedPointType()I

    move-result p1

    if-eq p1, p3, :cond_2

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/BadgeView;->setRedPointType(I)V

    :cond_2
    if-lez p4, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, p4}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public setItemSelectState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->O(IZ)V

    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->L:Z

    return-void
.end method

.method public setOnFootOptBarClickListener(Lcom/transsion/playercommon/widgets/TabOperationBar$o;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->d:Lcom/transsion/playercommon/widgets/TabOperationBar$o;

    return-void
.end method

.method public setOnHeadViewClickListener(Lcom/transsion/playercommon/widgets/TabOperationBar$p;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->e:Lcom/transsion/playercommon/widgets/TabOperationBar$p;

    return-void
.end method

.method public final t(Ljava/util/List;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->C(Lcom/transsion/playercommon/data/OnlineFootOperationBarImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->r(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toggleFootOperationBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->closeFootOperationBar()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->openFootOperationBar()V

    :goto_0
    return-void
.end method

.method public final u([I[Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->A(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->r(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateFootBarView()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->b:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->setContainerWidth(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->g:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public updateItemRedPointNum(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    if-gtz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TabOperationBar;->L(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final v([Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/transsion/playercommon/widgets/TabOperationBar;->D(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->r(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->x:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->resetClickListener()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final x(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$id;->os_fob_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TabOperationBar;->y:Landroid/content/Context;

    sget v0, Lcom/transsion/playercommon/R$string;->talkback_online_videos:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final y()V
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

    new-instance v0, Lcom/transsion/playercommon/widgets/TabOperationBar$b;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar$b;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final z(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/widgets/TabOperationBar$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/TabOperationBar$14;-><init>(Lcom/transsion/playercommon/widgets/TabOperationBar;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
