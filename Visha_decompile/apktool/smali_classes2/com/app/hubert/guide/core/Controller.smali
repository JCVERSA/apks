.class public Lcom/app/hubert/guide/core/Controller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/app/Fragment;

.field public c:Landroidx/fragment/app/Fragment;

.field public d:Lse7;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I

.field public h:Ljava/util/List;

.field public i:I

.field public j:Lcom/app/hubert/guide/core/GuideLayout;

.field public k:Landroid/widget/FrameLayout;

.field public l:Landroid/content/SharedPreferences;

.field public m:I

.field public n:Z


# direct methods
.method public constructor <init>(Lbl0;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/app/hubert/guide/core/Controller;->m:I

    iget-object v1, p1, Lbl0;->a:Landroid/app/Activity;

    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->a:Landroid/app/Activity;

    iget-object v2, p1, Lbl0;->b:Landroid/app/Fragment;

    iput-object v2, p0, Lcom/app/hubert/guide/core/Controller;->b:Landroid/app/Fragment;

    iget-object v2, p1, Lbl0;->c:Landroidx/fragment/app/Fragment;

    iput-object v2, p0, Lcom/app/hubert/guide/core/Controller;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, p1, Lbl0;->h:Lse7;

    iput-object v2, p0, Lcom/app/hubert/guide/core/Controller;->d:Lse7;

    iget-object v2, p1, Lbl0;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/app/hubert/guide/core/Controller;->e:Ljava/lang/String;

    iget-boolean v2, p1, Lbl0;->e:Z

    iput-boolean v2, p0, Lcom/app/hubert/guide/core/Controller;->f:Z

    iget-object v2, p1, Lbl0;->i:Ljava/util/List;

    iput-object v2, p0, Lcom/app/hubert/guide/core/Controller;->h:Ljava/util/List;

    iget v2, p1, Lbl0;->g:I

    iput v2, p0, Lcom/app/hubert/guide/core/Controller;->g:I

    iget-object p1, p1, Lbl0;->f:Landroid/view/View;

    if-nez p1, :cond_0

    const p1, 0x1020002

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/app/hubert/guide/core/Controller;->k:Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/app/hubert/guide/core/Controller;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/app/hubert/guide/core/Controller;->m:I

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget v3, p0, Lcom/app/hubert/guide/core/Controller;->m:I

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->k:Landroid/widget/FrameLayout;

    :goto_1
    iget-object p1, p0, Lcom/app/hubert/guide/core/Controller;->a:Landroid/app/Activity;

    const-string v0, "NewbieGuide"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/app/hubert/guide/core/Controller;->l:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic a(Lcom/app/hubert/guide/core/Controller;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/app/hubert/guide/core/Controller;I)I
    .locals 0

    iput p1, p0, Lcom/app/hubert/guide/core/Controller;->i:I

    return p1
.end method

.method public static synthetic c(Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/Controller;->o()V

    return-void
.end method

.method public static synthetic d(Lcom/app/hubert/guide/core/Controller;)Lse7;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->d:Lse7;

    return-object p0
.end method

.method public static synthetic e(Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/Controller;->i()V

    return-void
.end method

.method public static synthetic f(Lcom/app/hubert/guide/core/Controller;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/app/hubert/guide/core/Controller;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->l:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static synthetic h(Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/Controller;->p()V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->b:Landroid/app/Fragment;

    const-string v1, "listener_fragment"

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/app/hubert/guide/core/Controller;->j(Landroid/app/Fragment;)V

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->b:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/app/hubert/guide/lifecycle/ListenerFragment;

    if-nez v2, :cond_0

    new-instance v2, Lcom/app/hubert/guide/lifecycle/ListenerFragment;

    invoke-direct {v2}, Lcom/app/hubert/guide/lifecycle/ListenerFragment;-><init>()V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    new-instance v0, Lcom/app/hubert/guide/core/Controller$c;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller$c;-><init>(Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {v2, v0}, Lcom/app/hubert/guide/lifecycle/ListenerFragment;->a(Lq54;)V

    :cond_1
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->c:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;

    if-nez v2, :cond_2

    new-instance v2, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;

    invoke-direct {v2}, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;-><init>()V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    new-instance v0, Lcom/app/hubert/guide/core/Controller$d;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller$d;-><init>(Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {v2, v0}, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;->u(Lq54;)V

    :cond_3
    return-void
.end method

.method public final j(Landroid/app/Fragment;)V
    .locals 1

    :try_start_0
    const-class p0, Landroid/app/Fragment;

    const-string v0, "mChildFragmentManager"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/app/hubert/guide/core/Controller;->n:Z

    return p0
.end method

.method public l()V
    .locals 5

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->j:Lcom/app/hubert/guide/core/GuideLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->j:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/app/hubert/guide/core/Controller;->j:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/app/hubert/guide/core/Controller;->m:I

    if-lez v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->d:Lse7;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lse7;->b(Lcom/app/hubert/guide/core/Controller;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/hubert/guide/core/Controller;->j:Lcom/app/hubert/guide/core/GuideLayout;

    :cond_3
    iput-boolean v1, p0, Lcom/app/hubert/guide/core/Controller;->n:Z

    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->b:Landroid/app/Fragment;

    const-string v1, "listener_fragment"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/app/hubert/guide/lifecycle/ListenerFragment;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->c:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method public n()V
    .locals 3

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->l:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/app/hubert/guide/core/Controller;->f:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/app/hubert/guide/core/Controller;->g:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/app/hubert/guide/core/Controller;->n:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/app/hubert/guide/core/Controller;->n:Z

    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller;->k:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/app/hubert/guide/core/Controller$1;

    invoke-direct {v2, p0, v0}, Lcom/app/hubert/guide/core/Controller$1;-><init>(Lcom/app/hubert/guide/core/Controller;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->h:Ljava/util/List;

    iget v1, p0, Lcom/app/hubert/guide/core/Controller;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/hubert/guide/model/a;

    new-instance v1, Lcom/app/hubert/guide/core/GuideLayout;

    iget-object v2, p0, Lcom/app/hubert/guide/core/Controller;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p0}, Lcom/app/hubert/guide/core/GuideLayout;-><init>(Landroid/content/Context;Lcom/app/hubert/guide/model/a;Lcom/app/hubert/guide/core/Controller;)V

    new-instance v0, Lcom/app/hubert/guide/core/Controller$b;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller$b;-><init>(Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {v1, v0}, Lcom/app/hubert/guide/core/GuideLayout;->setOnGuideLayoutDismissListener(Lcom/app/hubert/guide/core/GuideLayout$e;)V

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->k:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->j:Lcom/app/hubert/guide/core/GuideLayout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/hubert/guide/core/Controller;->n:Z

    return-void
.end method

.method public final p()V
    .locals 2

    iget v0, p0, Lcom/app/hubert/guide/core/Controller;->i:I

    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/app/hubert/guide/core/Controller;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/app/hubert/guide/core/Controller;->i:I

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/Controller;->o()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->d:Lse7;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lse7;->b(Lcom/app/hubert/guide/core/Controller;)V

    :cond_1
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/Controller;->m()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/hubert/guide/core/Controller;->n:Z

    :goto_0
    return-void
.end method

.method public q(I)V
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/app/hubert/guide/core/Controller;->i:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/app/hubert/guide/core/Controller;->i:I

    iget-object p1, p0, Lcom/app/hubert/guide/core/Controller;->j:Lcom/app/hubert/guide/core/GuideLayout;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/app/hubert/guide/core/Controller$a;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller$a;-><init>(Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {p1, v0}, Lcom/app/hubert/guide/core/GuideLayout;->setOnGuideLayoutDismissListener(Lcom/app/hubert/guide/core/GuideLayout$e;)V

    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->j:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/Controller;->o()V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Guide page position is out of range. current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", range: [ 0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
