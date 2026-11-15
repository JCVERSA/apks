.class public Lcom/transsion/widgetslib/widget/SearchBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Ldw4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/SearchBar$q;,
        Lcom/transsion/widgetslib/widget/SearchBar$j;,
        Lcom/transsion/widgetslib/widget/SearchBar$r;,
        Lcom/transsion/widgetslib/widget/SearchBar$p;,
        Lcom/transsion/widgetslib/widget/SearchBar$k;,
        Lcom/transsion/widgetslib/widget/SearchBar$l;,
        Lcom/transsion/widgetslib/widget/SearchBar$o;,
        Lcom/transsion/widgetslib/widget/SearchBar$n;,
        Lcom/transsion/widgetslib/widget/SearchBar$m;
    }
.end annotation


# instance fields
.field public A:Landroid/view/View$OnClickListener;

.field public B:Lcom/transsion/widgetslib/widget/SearchBar$r;

.field public C:Lcom/transsion/widgetslib/widget/SearchBar$r;

.field public D:Landroid/graphics/drawable/Drawable;

.field public E:Ljava/lang/String;

.field public F:Z

.field public G:Ljava/lang/CharSequence;

.field public H:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public I:I

.field public J:Landroid/view/View;

.field public K:Landroid/view/View;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public p:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/AutoCompleteTextView;

.field public s:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public t:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public u:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public v:Landroid/widget/LinearLayout;

.field public w:Landroid/text/TextWatcher;

.field public x:Landroid/view/View$OnClickListener;

.field public y:Landroid/view/View$OnClickListener;

.field public z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/transsion/widgetslib/widget/SearchBar$q;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/SearchBar$q;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->w:Landroid/text/TextWatcher;

    new-instance v0, Lcom/transsion/widgetslib/widget/SearchBar$j;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/SearchBar$j;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->x:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->F:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->G:Ljava/lang/CharSequence;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$h;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$h;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->H:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_search_bar_layout:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_delete_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->e:I

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar_isBackMode:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->j:Z

    sget v1, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar_osSearchBarIconInEdittext:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->D:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar_isSearStatusOnInitial:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->m:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_text_padding_end_with_del_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_text_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dimen_icon_common_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_search_back_view_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_icon_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->i:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->J()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->I()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->L()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->E()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->F()V

    new-instance p1, Lcom/transsion/widgetslib/widget/SearchBar$r;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p1, p0, p2}, Lcom/transsion/widgetslib/widget/SearchBar$r;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->B:Lcom/transsion/widgetslib/widget/SearchBar$r;

    new-instance p1, Lcom/transsion/widgetslib/widget/SearchBar$r;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-direct {p1, p0, p2}, Lcom/transsion/widgetslib/widget/SearchBar$r;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->C:Lcom/transsion/widgetslib/widget/SearchBar$r;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->I:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->y:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->A:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->J:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/widget/SearchBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->l:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/widget/SearchBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->m:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/SearchBar$n;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->b:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->h:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->z:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->f:I

    return p0
.end method

.method public static bridge synthetic p(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->g:I

    return p0
.end method

.method public static bridge synthetic q(Lcom/transsion/widgetslib/widget/SearchBar;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->h:I

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/widgetslib/widget/SearchBar;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->f:I

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/widgetslib/widget/SearchBar;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->g:I

    return-void
.end method

.method private setSearchViewLeftMargin(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->D()V

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->F()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->G()V

    return-void
.end method

.method public static bridge synthetic w(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->H()V

    return-void
.end method


# virtual methods
.method public final A()F
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sget v1, Lcom/transsion/widgetslib/R$id;->relative_root:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_auto_complete_textview_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    int-to-float v1, v1

    sub-float/2addr v1, v3

    sub-float/2addr v1, v4

    sub-float/2addr v1, v0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_action_bar_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_auto_complete_textview_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float/2addr v1, v3

    sub-float/2addr v1, p0

    sub-float/2addr v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final B(Landroid/widget/TextView;F)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->G:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_2

    const/4 p0, 0x1

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    return-void
.end method

.method public final C()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->s:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_space125:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final D()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->isSearchBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->s:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->s:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->s:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->s:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->C()V

    return-void
.end method

.method public final E()V
    .locals 3

    sget v0, Lcom/transsion/widgetslib/R$attr;->osSearchBarMargin:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_margin_hios:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getIsBackMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_margin_xos:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final F()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->C()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->v:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->d:I

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v1, v2, v3, v0, p0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final G()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->f:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->h:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_back_mode_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->g:I

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$a;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$b;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$c;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$c;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$d;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$d;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->s:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$e;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$e;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$f;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$f;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$g;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$g;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final J()V
    .locals 4

    sget v0, Lcom/transsion/widgetslib/R$id;->text_click:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$id;->relative_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->J:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->linear_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->K:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->text_search:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    sget v0, Lcom/transsion/widgetslib/R$id;->img_btn_back:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v0, Lcom/transsion/widgetslib/R$id;->img_search_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v0, Lcom/transsion/widgetslib/R$id;->img_delete_all:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->s:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v0, Lcom/transsion/widgetslib/R$id;->img_custom:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v0, Lcom/transsion/widgetslib/R$id;->ll_del_custom_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->v:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/widgetslib/R$id;->img_custom_in_edittext:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getIsBackMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->M()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_icon_disable:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_icon_disable_hios:I

    invoke-static {v1, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_icon_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->G:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->A()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/widgetslib/widget/SearchBar;->B(Landroid/widget/TextView;F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/widgetslib/widget/SearchBar;->B(Landroid/widget/TextView;F)V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$i;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$i;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public final N(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->b:I

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->b:I

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->b:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public endSearch()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->k:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->D()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->F()V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->endSearchForTransition()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public endSearchForTransition()Landroid/animation/AnimatorSet;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->endSearchForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public endSearchForTransition(FF)Landroid/animation/AnimatorSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar;->z(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public getBackView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public getBackViewStaticWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->i:I

    return p0
.end method

.method public getClickTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeleteAllIconView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->s:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public getDeleteButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->s:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method public getImgCustomInEdittext()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public getImgCustomView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public getIsBackMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->j:Z

    return p0
.end method

.method public getLinearRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->K:Landroid/view/View;

    return-object p0
.end method

.method public getRightIconVisibility()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSearchBarView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public getSearchIconView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public getSearchTextView()Landroid/widget/AutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransitionScale(F)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->b:I

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result p1

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->b:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    sget-object p1, Lolb;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {}, Lolb;->getOsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_back_mode_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->g:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOnSearch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->k:Z

    return p0
.end method

.method public isSearchBarEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->H:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->F()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->K()V

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->H:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public removeTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public requireSearchAnimManagerTrans(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->F:Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->x:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCustomIconInEdittextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->A:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCustomSearchIcon(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDeleteButtonVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->s:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setHint(I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->G:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->K()V

    return-void
.end method

.method public setInputMax(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar;->setInputMax(ILjava/lang/String;)V

    return-void
.end method

.method public setInputMax(ILjava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$m;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar$m;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/text/InputFilter;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setIsIDLE(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->l:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/widgetslib/widget/SearchBar$n;)V
    .locals 0

    return-void
.end method

.method public setOnStateChangeListener(Lcom/transsion/widgetslib/widget/SearchBar$o;)V
    .locals 0

    return-void
.end method

.method public setRightIcon(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/SearchBar;->setRightIcon(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightIcon(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 2
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->y:Landroid/view/View$OnClickListener;

    .line 3
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->N(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setSearchViewLeftMargin(I)V

    return-void
.end method

.method public setRightIconVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->N(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_space250:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_margin_hios:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setSearchViewLeftMargin(I)V

    return-void
.end method

.method public setRootWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->f:I

    return-void
.end method

.method public setSearchBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->z:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSearchBarEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    const v0, 0x3f266666    # 0.65f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->D()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->F()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSearchBarIconInEdittext(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->F()V

    return-void
.end method

.method public setSearchSource(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_search_source_item_layout:I

    sget v2, Lcom/transsion/widgetslib/R$id;->search_item_text:I

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->n:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->F()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->D()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->n:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->startSearch()V

    :cond_0
    return-void
.end method

.method public setTextHeightElegant(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_1
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->w:Landroid/text/TextWatcher;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public startSearch()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->k:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->G:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->x()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->M()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->D()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->F()V

    return-void
.end method

.method public startSearchForTransition()Landroid/animation/AnimatorSet;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->y(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public startSearchForTransition(FF)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar;->y(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public syncDimens()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->I:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->b:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->f:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->h:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->f:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->g:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->G()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->g:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {}, Lolb;->l0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->h:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->h:I

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->f:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->D()V

    return-void
.end method

.method public updateEnterForTransition()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateExitForTransition()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final x()Landroid/animation/AnimatorSet;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->y(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final y(FF)Landroid/animation/AnimatorSet;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/SearchBar;->G()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result v5

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    neg-int v5, v5

    :goto_1
    iget-object v6, v0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    int-to-float v5, v5

    const/4 v7, 0x0

    new-array v8, v1, [F

    aput v5, v8, v2

    aput v7, v8, v4

    const-string v5, "translationX"

    invoke-static {v6, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/SearchBar;->C:Lcom/transsion/widgetslib/widget/SearchBar$r;

    iget v9, v0, Lcom/transsion/widgetslib/widget/SearchBar;->f:I

    iget v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->g:I

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getTransitionScale(F)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    const-string v10, "width"

    invoke-static {v8, v10, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget v9, v0, Lcom/transsion/widgetslib/widget/SearchBar;->h:I

    if-eqz v3, :cond_2

    neg-int v9, v9

    :cond_2
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    int-to-float v9, v9

    new-array v11, v1, [F

    aput v7, v11, v2

    aput v9, v11, v4

    invoke-static {v10, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v11, v0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    new-array v12, v1, [F

    aput v7, v12, v2

    aput v9, v12, v4

    invoke-static {v11, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v12, v0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-array v13, v1, [F

    aput v7, v13, v2

    aput v9, v13, v4

    invoke-static {v12, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v12, v0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-array v13, v1, [F

    fill-array-data v13, :array_0

    const-string v14, "alpha"

    invoke-static {v12, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-wide/16 v13, 0x96

    invoke-virtual {v12, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v13, 0xfa

    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v13, Lcom/transsion/widgetslib/widget/SearchBar$p;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v15, v5

    const-wide/16 v4, 0x190

    invoke-virtual {v14, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v6, v4, v2

    const/4 v5, 0x1

    aput-object v8, v4, v5

    aput-object v10, v4, v1

    const/4 v5, 0x3

    aput-object v9, v4, v5

    const/4 v5, 0x4

    aput-object v12, v4, v5

    const/4 v5, 0x5

    aput-object v11, v4, v5

    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/SearchBar;->F:Z

    if-eqz v4, :cond_4

    move/from16 v4, p2

    neg-float v4, v4

    if-eqz v3, :cond_3

    const/4 v5, -0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    :goto_2
    int-to-float v3, v5

    mul-float/2addr v4, v3

    new-array v1, v1, [F

    aput v7, v1, v2

    const/4 v3, 0x1

    aput v4, v1, v3

    move-object v4, v15

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v2

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4
    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$k;

    iget-object v2, v0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v3, v0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/widgetslib/widget/SearchBar$k;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v14, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v14

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final z(FF)Landroid/animation/AnimatorSet;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result v5

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    neg-int v5, v5

    :goto_1
    iget-object v6, v0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    int-to-float v5, v5

    const/4 v7, 0x0

    new-array v8, v1, [F

    aput v7, v8, v2

    aput v5, v8, v4

    const-string v5, "translationX"

    invoke-static {v6, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x15e

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->C:Lcom/transsion/widgetslib/widget/SearchBar$r;

    iget v11, v0, Lcom/transsion/widgetslib/widget/SearchBar;->g:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getTransitionScale(F)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, v0, Lcom/transsion/widgetslib/widget/SearchBar;->f:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    const-string v12, "width"

    invoke-static {v10, v12, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v11, v0, Lcom/transsion/widgetslib/widget/SearchBar;->h:I

    if-eqz v3, :cond_2

    neg-int v11, v11

    :cond_2
    iget-object v12, v0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    int-to-float v11, v11

    new-array v13, v1, [F

    aput v11, v13, v2

    aput v7, v13, v4

    invoke-static {v12, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v13, v0, Lcom/transsion/widgetslib/widget/SearchBar;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-array v14, v1, [F

    aput v11, v14, v2

    aput v7, v14, v4

    invoke-static {v13, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v14, v0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    new-array v15, v1, [F

    aput v11, v15, v2

    aput v7, v15, v4

    invoke-static {v14, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-array v9, v1, [F

    fill-array-data v9, :array_0

    const-string v14, "alpha"

    invoke-static {v8, v14, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v14, 0x64

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v14, Lcom/transsion/widgetslib/widget/SearchBar$p;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v14, 0x6

    new-array v14, v14, [Landroid/animation/Animator;

    aput-object v6, v14, v2

    aput-object v10, v14, v4

    aput-object v12, v14, v1

    const/4 v6, 0x3

    aput-object v13, v14, v6

    const/4 v6, 0x4

    aput-object v8, v14, v6

    const/4 v6, 0x5

    aput-object v11, v14, v6

    invoke-virtual {v9, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-boolean v6, v0, Lcom/transsion/widgetslib/widget/SearchBar;->F:Z

    if-eqz v6, :cond_4

    move/from16 v6, p2

    neg-float v6, v6

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v6, v3

    new-array v1, v1, [F

    aput v6, v1, v2

    aput v7, v1, v4

    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v1, v3, v2

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4
    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$l;

    iget-object v2, v0, Lcom/transsion/widgetslib/widget/SearchBar;->o:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v3, v0, Lcom/transsion/widgetslib/widget/SearchBar;->q:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/SearchBar;->r:Landroid/widget/AutoCompleteTextView;

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/widgetslib/widget/SearchBar$l;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v9

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
