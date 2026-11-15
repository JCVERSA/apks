.class public final Lcom/transsion/widgetslib/dialog/PromptController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/PromptController$l;,
        Lcom/transsion/widgetslib/dialog/PromptController$m;,
        Lcom/transsion/widgetslib/dialog/PromptController$n;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/Button;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/os/Message;

.field public D:Z

.field public E:Landroid/widget/Button;

.field public F:Ljava/lang/CharSequence;

.field public G:Landroid/os/Message;

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:I

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:I

.field public final S:Landroid/view/View$OnClickListener;

.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/DialogInterface;

.field public final c:Landroid/view/Window;

.field public final d:Landroid/view/LayoutInflater;

.field public final e:Landroid/os/Handler;

.field public final f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

.field public final g:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/FrameLayout;

.field public k:Landroid/widget/FrameLayout;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/widget/CheckedTextView;

.field public p:Lcom/transsion/widgetslib/dialog/PromptController$m;

.field public q:I

.field public r:[Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Landroid/widget/Button;

.field public x:Ljava/lang/CharSequence;

.field public y:Landroid/os/Message;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->s:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->v:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->x:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->B:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->F:Ljava/lang/CharSequence;

    iput-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->I:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->J:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->K:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->L:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->Q:Z

    new-instance v3, Lcom/transsion/widgetslib/dialog/PromptController$c;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslib/dialog/PromptController$c;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;)V

    iput-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->S:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->b:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->c:Landroid/view/Window;

    new-instance v3, Lcom/transsion/widgetslib/dialog/PromptController$l;

    invoke-direct {v3, p2}, Lcom/transsion/widgetslib/dialog/PromptController$l;-><init>(Landroid/content/DialogInterface;)V

    iput-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->e:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    invoke-virtual {p3, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v1, 0x50

    invoke-virtual {p3, v1}, Landroid/view/Window;->setGravity(I)V

    sget p3, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_container:I

    invoke-virtual {p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setOnUnionRenderFrameAvailableListener()V

    sget-object p3, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->DIALOG:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {p2, p3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setElasticTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    sget-object p3, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->DIALOG_AUTO:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {p2, p3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setShowShadow(Z)V

    new-instance p3, Lcom/transsion/widgetslib/dialog/PromptController$d;

    invoke-direct {p3, p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController$d;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget p1, Lcom/transsion/widgetslib/R$id;->mContainer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p1, Lcom/transsion/widgetslib/R$id;->btnLayout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->h:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/dialog/PromptController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->I:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->C:Landroid/os/Message;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->E:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->G:Landroid/os/Message;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->y:Landroid/os/Message;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/dialog/PromptController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->P:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/dialog/PromptController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->O:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/CheckedTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->o:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$m;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->p:Lcom/transsion/widgetslib/dialog/PromptController$m;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->b:Landroid/content/DialogInterface;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->e:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->V()V

    return-void
.end method

.method public static v(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/transsion/widgetslib/dialog/PromptController;->v(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public final A(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$id;->os_damp_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    instance-of v2, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    invoke-virtual {v2, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    instance-of p2, p1, Lcom/transsion/widgetslib/dialog/PromptController$m;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/transsion/widgetslib/dialog/PromptController$m;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->p:Lcom/transsion/widgetslib/dialog/PromptController$m;

    invoke-virtual {p2, p0}, Lcom/transsion/widgetslib/dialog/PromptController$m;->setWeakReference(Lcom/transsion/widgetslib/dialog/PromptController;)V

    :cond_0
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget-boolean p1, Lolb;->E:Z

    if-nez p1, :cond_2

    invoke-static {v1, v3, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_parent:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_1

    invoke-interface {p1, v3}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setVibrateEnable(Z)V

    :cond_1
    instance-of v0, p2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    check-cast p2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-virtual {p2, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V

    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$j;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$j;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    :cond_2
    return-object v1
.end method

.method public B(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->E:Landroid/widget/Button;

    return-object p0
.end method

.method public final C()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    return-object p0
.end method

.method public final D()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/transsion/widgetslib/R$id;->mContainer:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    return-object p0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->J:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->v(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->v(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->c:Landroid/view/Window;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->h0()V

    return-void
.end method

.method public final G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->J:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->R:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->O:Z

    return p0
.end method

.method public I()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->P:Z

    return p0
.end method

.method public final J(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p1

    neg-int v0, p1

    if-lt p0, v0, :cond_1

    if-lt p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p1

    if-gt p0, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p1

    if-le p2, p0, :cond_0

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

.method public final K()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->M:I

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public final L()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->u:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->x:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->M(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->v:Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_dialog_positive_btn_alert_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->z:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->B:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->M(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->D:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->E:Landroid/widget/Button;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->F:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->E:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->M(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->E:Landroid/widget/Button;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->E:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->s:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->u:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->z:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->D:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_dialog_negative_btn_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->s()V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_button_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v2}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_dialog_button_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_space150:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    :goto_3
    float-to-int v3, v3

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dialog_button_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_space150:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_3

    :goto_4
    iget-boolean v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->s:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->u:Z

    mul-int/2addr v4, v2

    add-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->z:Z

    mul-int/2addr v3, v2

    add-int/2addr v4, v3

    iget-boolean v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->D:Z

    mul-int/2addr v2, v3

    add-int/2addr v2, v4

    :cond_6
    add-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->K:Z

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    move v1, v0

    :goto_5
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/2addr v2, v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_8
    return-void
.end method

.method public final M(Landroid/widget/Button;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptController$b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController$b;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public N(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->e:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_1
    const/4 p3, -0x3

    const/4 v0, 0x1

    if-eq p1, p3, :cond_4

    const/4 p3, -0x2

    if-eq p1, p3, :cond_3

    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->x:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->y:Landroid/os/Message;

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->u:Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->B:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->C:Landroid/os/Message;

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->z:Z

    goto :goto_0

    :cond_4
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->F:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->G:Landroid/os/Message;

    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->D:Z

    :goto_0
    return-void
.end method

.method public O([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/widgetslib/R$id;->os_prompt_dialog_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController$m;

    const/4 v1, 0x6

    invoke-direct {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController$m;-><init>(Ljava/util/List;I)V

    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$g;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$g;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->y(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    return-void
.end method

.method public P()V
    .locals 6

    sget-boolean v0, Lolb;->P:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->c:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    if-ne v0, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    const/16 v4, 0x28

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v5, 0x32

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public final Q(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/widgetslib/R$id;->iconImg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_space200:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public R(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController$m;

    invoke-direct {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController$m;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public S(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$a;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$a;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->z(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    return-void
.end method

.method public T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$f;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$f;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->A(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    return-void
.end method

.method public U([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$m;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptController$m;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final V()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->v:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->p:Lcom/transsion/widgetslib/dialog/PromptController$m;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController$m;->getCheckedItemCount()I

    move-result p0

    if-lez p0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    instance-of p0, v1, Landroid/widget/ListView;

    if-eqz p0, :cond_3

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result p0

    if-lez p0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public W(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController$m;

    const/4 p2, 0x2

    invoke-direct {p1, p3, p2}, Lcom/transsion/widgetslib/dialog/PromptController$m;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, p1, p4}, Lcom/transsion/widgetslib/dialog/PromptController;->X(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final X(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$i;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$i;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->A(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    return-void
.end method

.method public Y([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->x([Ljava/lang/CharSequence;[Z)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$m;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController$m;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, p2, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->X(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public Z(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/widgetslib/R$layout;->os_ultra_small_prompt_dialog_singlechecked:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->f0(ILandroid/view/View;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_singlechecked:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->f0(ILandroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    sget v2, Lcom/transsion/widgetslib/R$id;->text_choice:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->o:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v2}, Ld57;->b(Landroid/content/Context;)Ld57;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->o:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->o:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->o:Landroid/widget/CheckedTextView;

    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$e;

    invoke-direct {p2, p0, p3}, Lcom/transsion/widgetslib/dialog/PromptController$e;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public a0(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController$m;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$m;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, p1, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->c0(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public b0(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$k;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$k;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->z(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    instance-of p0, p1, Landroid/widget/ListView;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/ListView;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_0
    return-void
.end method

.method public c0(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$h;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$h;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->A(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    return-void
.end method

.method public d0([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$m;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/transsion/widgetslib/dialog/PromptController$m;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->c0(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public e0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method

.method public f0(ILandroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_view:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->N:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->N:I

    :cond_2
    return-void
.end method

.method public final g0(Z)V
    .locals 3

    iget-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->u:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->z:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->D:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->K()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {p1}, Lolb;->q0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->s:Z

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->x:Ljava/lang/CharSequence;

    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->B:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->F:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    filled-new-array {p1, v1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->u([Ljava/lang/String;)V

    return-void
.end method

.method public getCheckedView()Landroid/widget/CheckedTextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->o:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method public getIsAppDialogFragment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->L:Z

    return p0
.end method

.method public getLiquidContainerView()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    return-object p0
.end method

.method public getListView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    return-object p0
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getNoBtnBottomInsets()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->M:I

    return p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    sget v0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final h0()V
    .locals 14

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    if-eqz v6, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    if-eqz v3, :cond_4

    sget v7, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    :cond_4
    const/4 v0, 0x0

    const/4 v7, -0x1

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->G()Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v3, :cond_5

    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_top:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v2, v9, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_bottom:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v2, v2, v2, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_6
    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    sget v9, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_content:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    if-eqz v3, :cond_7

    new-instance v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v8, v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    sget v9, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object v9, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v10, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_7
    new-instance v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v8, v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object v9, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v10, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_5
    if-eqz v6, :cond_b

    if-nez v4, :cond_b

    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    instance-of v9, v8, Landroid/widget/ListView;

    if-eqz v9, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    goto :goto_6

    :cond_9
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    :goto_6
    if-eqz v8, :cond_b

    if-eqz v3, :cond_a

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v9, v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    sget v10, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    iput v10, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object v10, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v10, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_a
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v9, v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object v10, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v10, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_7
    if-eqz v6, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getTitleView()Landroid/widget/TextView;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v9, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/transsion/widgetslib/R$dimen;->os_dialog_title_padding_bottom:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v2, v2, v2, v9}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-boolean v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->u:Z

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->z:Z

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->D:Z

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v9, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/transsion/widgetslib/R$dimen;->os_list_dialog_margin_bottom:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v2, v2, v2, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_c
    if-eqz v6, :cond_d

    if-nez v3, :cond_d

    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_d
    if-eqz v5, :cond_18

    const/4 v8, -0x2

    if-eqz v4, :cond_e

    iget-object v9, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v10, :cond_12

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v10, v8, :cond_12

    iput v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v10, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_e
    if-eqz v6, :cond_12

    iget-object v9, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    instance-of v10, v9, Landroid/widget/ListView;

    if-eqz v10, :cond_f

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    goto :goto_8

    :cond_f
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    :goto_8
    iget-object v10, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v11, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    sget v12, Lcom/transsion/widgetslib/R$id;->os_module_dialog_custom_view:I

    invoke-virtual {v11, v12}, Landroid/view/View;->setId(I)V

    iget-object v11, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iget-object v13, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_10
    iget-object v11, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v13, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-eqz v3, :cond_11

    sget v11, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto :goto_9

    :cond_11
    iput v2, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    :goto_9
    iput v12, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    :goto_a
    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->G()Z

    move-result v4

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    sget v8, Lcom/transsion/widgetslib/R$id;->os_module_dialog_custom_view:I

    invoke-virtual {v4, v8}, Landroid/view/View;->setId(I)V

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v9, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->C()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    sget v9, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_content:I

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v4, v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_dialog_input_message_margin_top:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_dialog_input_message_margin_bottom:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setElevation(F)V

    goto/16 :goto_c

    :cond_13
    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    sget v9, Lcom/transsion/widgetslib/R$id;->os_module_dialog_custom_view:I

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v4, v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    sget v8, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_content:I

    iput v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v10, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v9, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setElevation(F)V

    goto :goto_c

    :cond_14
    if-eqz v6, :cond_16

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_b

    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_b
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptController$11;

    invoke-direct {v1, p0, v0, v3}, Lcom/transsion/widgetslib/dialog/PromptController$11;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :cond_16
    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    sget v6, Lcom/transsion/widgetslib/R$id;->os_module_dialog_custom_view:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    if-eqz v3, :cond_17

    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v4, v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    sget v6, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    iput v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_17
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v4, v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    :goto_c
    if-eqz v3, :cond_19

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v7, :cond_19

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->D()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    invoke-virtual {p0, v5}, Lcom/transsion/widgetslib/dialog/PromptController;->g0(Z)V

    return-void
.end method

.method public i0(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->c:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->J(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p0, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public onPrepareListView(Lcom/transsion/widgetslib/dialog/e$a;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ListView;

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/dialog/e$a;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_0
    return-void
.end method

.method public final r(Landroid/widget/Button;IF)V
    .locals 13

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/widgetsmotionlibrary/b;

    invoke-direct {v0}, Lcom/transsion/widgetsmotionlibrary/b;-><init>()V

    new-instance v8, Lm97;

    invoke-direct {v8}, Lm97;-><init>()V

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0xc8

    const/4 v9, 0x1

    move-object v1, p1

    move v3, p2

    move/from16 v11, p3

    invoke-virtual/range {v0 .. v12}, Lcom/transsion/widgetsmotionlibrary/b;->d(Landroid/view/View;FIJJLandroid/view/animation/PathInterpolator;ILandroid/view/ViewGroup;FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_press_secondary_color_attr:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_press_secondary_color:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_btn_corners_radius:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_pad_btn_corners_radius:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_btn_corners_radius:I

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->r(Landroid/widget/Button;IF)V

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->r(Landroid/widget/Button;IF)V

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->E:Landroid/widget/Button;

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->r(Landroid/widget/Button;IF)V

    return-void
.end method

.method public setAutoDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->I:Z

    return-void
.end method

.method public setButtonChoiceDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->K:Z

    return-void
.end method

.method public setButtonVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->s:Z

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->O:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->P:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->q:I

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->l:Landroid/view/View;

    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    sget v0, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setDefaultBgColor(I)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->H:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->Q(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->H:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method

.method public setInputMessagePosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->R:I

    return-void
.end method

.method public setIsAlert(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->t:Z

    return-void
.end method

.method public setIsAppDialogFragment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->L:Z

    return-void
.end method

.method public setIsInputDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->J:Z

    return-void
.end method

.method public setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setMessageView(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessageView(Ljava/lang/CharSequence;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_body_font:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_padding_left_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v2}, Lolb;->H(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->Q:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_message:I

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_damping_inner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setVibrateEnable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->j:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_dialog_padding_left_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->Q:Z

    if-nez p0, :cond_3

    const/16 p0, 0x11

    goto :goto_1

    :cond_3
    const p0, 0x800003

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    return-void
.end method

.method public setNoBtnBottomInsets(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->M:I

    return-void
.end method

.method public setPositiveButtonEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->v:Z

    return-void
.end method

.method public setPromptDialogPaddingTop(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/widgetslib/R$id;->os_prompt_dialog_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->f:Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleView(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTitleView(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTitleViewBg(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->i:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/widgetslib/R$id;->text_top_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v2}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_dialog_padding_left_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_dialog_title_padding_end:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_space200:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_text_info:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_text_info_hios:I

    invoke-static {p0, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public t()Z
    .locals 2

    sget-boolean v0, Lolb;->J:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->d0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    move v1, v0

    :cond_5
    return v1
.end method

.method public final varargs u([Ljava/lang/String;)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, ""

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    move-object v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    const-string v0, "sans-serif-semibold"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_body_font:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->w()I

    move-result v0

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_dialog_margin_horizontal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_space075:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/widgetslib/R$dimen;->os_btn_text_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-lez v0, :cond_2

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {v6}, Lolb;->p(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    sub-float/2addr v6, v2

    int-to-float v0, v0

    div-float/2addr v6, v0

    int-to-float v0, v4

    sub-float/2addr v6, v0

    int-to-float v0, v5

    sub-float/2addr v6, v0

    sub-float/2addr v6, p1

    const/high16 p1, 0x40c00000    # 6.0f

    cmpg-float p1, v6, p1

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    iget-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->s:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {p1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v0, Lcom/transsion/widgetslib/R$layout;->os_ultra_small_prompt_dialog_buttons_vertical:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->m:Landroid/view/View;

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_vertical:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->m:Landroid/view/View;

    goto :goto_3

    :cond_4
    iput-boolean v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->s:Z

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    if-eqz v3, :cond_5

    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_vertical:I

    goto :goto_2

    :cond_5
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_horizontal:I

    :goto_2
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->m:Landroid/view/View;

    :goto_3
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->m:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->view_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->n:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->m:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->btn_positive:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->m:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->btn_negative:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->m:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->btn_neutral:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->E:Landroid/widget/Button;

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {p1}, Lolb;->Z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ultra_small_btn_big:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ultra_small_btn_big_gray:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->E:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    invoke-static {p1}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->w:Landroid/widget/Button;

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_pad_btn_big:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->A:Landroid/widget/Button;

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_pad_btn_big_gray:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->E:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->L()V

    return-void
.end method

.method public final w()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->u:Z

    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->z:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->D:Z

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public final x([Ljava/lang/CharSequence;[Z)V
    .locals 4

    if-nez p2, :cond_0

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->r:[Z

    return-void

    :cond_0
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->r:[Z

    goto :goto_2

    :cond_1
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->r:[Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->r:[Z

    array-length v3, p2

    if-ge v1, v3, :cond_2

    aget-boolean v3, p2, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final y(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$id;->os_damp_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    instance-of v1, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    invoke-virtual {v1, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    instance-of p2, p1, Lcom/transsion/widgetslib/dialog/PromptController$m;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/transsion/widgetslib/dialog/PromptController$m;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->p:Lcom/transsion/widgetslib/dialog/PromptController$m;

    invoke-virtual {p2, p0}, Lcom/transsion/widgetslib/dialog/PromptController$m;->setWeakReference(Lcom/transsion/widgetslib/dialog/PromptController;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method public final z(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list_compat:I

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_compat:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setVibrateEnable(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method
