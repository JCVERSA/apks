.class public abstract Lcom/bigkoo/pickerview/view/BasePickerView;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Landroid/content/Context;

.field protected b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field protected e:Lr5/a;

.field private f:Z

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Z

.field protected j:I

.field private k:Landroid/app/Dialog;

.field protected l:Landroid/view/View;

.field private m:Z

.field private n:Landroid/view/View$OnKeyListener;

.field private final o:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x50

    .line 5
    .line 6
    iput v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->j:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->m:Z

    .line 10
    .line 11
    new-instance v0, Lcom/bigkoo/pickerview/view/BasePickerView$c;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$c;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->n:Landroid/view/View$OnKeyListener;

    .line 17
    .line 18
    new-instance v0, Lcom/bigkoo/pickerview/view/BasePickerView$d;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$d;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->o:Landroid/view/View$OnTouchListener;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method

.method static bridge synthetic a(Lcom/bigkoo/pickerview/view/BasePickerView;)Ls5/b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic b(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/bigkoo/pickerview/view/BasePickerView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic d(Lcom/bigkoo/pickerview/view/BasePickerView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private i()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lt5/c;->a(IZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    .line 5
    .line 6
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "get"

    .line 11
    .line 12
    new-array v5, v1, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Ljava/lang/String;

    .line 15
    .line 16
    aput-object v6, v5, v0

    .line 17
    .line 18
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    .line 24
    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v4, "qemu.hw.mainkeys"

    .line 28
    .line 29
    aput-object v4, v1, v0

    .line 30
    .line 31
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    move-object v2, v0

    .line 38
    :catchall_0
    return-object v2
.end method

.method public static k(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->m(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "dimen"

    .line 12
    .line 13
    const-string v1, "android"

    .line 14
    .line 15
    const-string v2, "navigation_bar_height"

    .line 16
    .line 17
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method private l()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lt5/c;->a(IZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "bool"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "config_showNavigationBar"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {}, Lcom/bigkoo/pickerview/view/BasePickerView;->j()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "1"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "0"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v2, p0

    .line 46
    :goto_0
    return v2

    .line 47
    :cond_2
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    xor-int/2addr p0, v2

    .line 56
    return p0
.end method

.method private r(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lr5/a;

    .line 2
    .line 3
    iget-object v0, v0, Lr5/a;->A:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->m:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->h:Landroid/view/animation/Animation;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/app/Dialog;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    .line 8
    .line 9
    sget v2, Lcom/bigkoo/pickerview/R$style;->custom_dialog2:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lr5/a;

    .line 17
    .line 18
    iget-boolean v1, v1, Lr5/a;->U:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    sget v1, Lcom/bigkoo/pickerview/R$style;->picker_view_scale_anim:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x11

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    .line 49
    .line 50
    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$e;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$e;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->g()V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->f:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->m:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->g:Landroid/view/animation/Animation;

    .line 21
    .line 22
    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$b;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$b;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->g:Landroid/view/animation/Animation;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->h()V

    .line 39
    .line 40
    .line 41
    :goto_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->f:Z

    .line 43
    .line 44
    :goto_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lr5/a;

    .line 2
    .line 3
    iget-object v0, v0, Lr5/a;->A:Landroid/view/ViewGroup;

    .line 4
    .line 5
    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$3;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$3;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected n()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->i()Landroid/view/animation/Animation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->h:Landroid/view/animation/Animation;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->l()Landroid/view/animation/Animation;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->g:Landroid/view/animation/Animation;

    .line 12
    .line 13
    return-void
.end method

.method protected o()V
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    const/16 v2, 0x50

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->p()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    sget v2, Lcom/bigkoo/pickerview/R$layout;->layout_basepickerview:I

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/view/ViewGroup;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    .line 38
    .line 39
    sget v2, Lcom/bigkoo/pickerview/R$id;->content_container:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/view/ViewGroup;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    .line 48
    .line 49
    const/16 v2, 0x1e

    .line 50
    .line 51
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 52
    .line 53
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->e()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    .line 62
    .line 63
    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$a;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$a;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lr5/a;

    .line 73
    .line 74
    iget-object v5, v2, Lr5/a;->A:Landroid/view/ViewGroup;

    .line 75
    .line 76
    if-nez v5, :cond_1

    .line 77
    .line 78
    iget-object v5, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    .line 79
    .line 80
    check-cast v5, Landroid/app/Activity;

    .line 81
    .line 82
    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Landroid/view/ViewGroup;

    .line 91
    .line 92
    iput-object v5, v2, Lr5/a;->A:Landroid/view/ViewGroup;

    .line 93
    .line 94
    :cond_1
    sget v2, Lcom/bigkoo/pickerview/R$layout;->layout_basepickerview:I

    .line 95
    .line 96
    iget-object v5, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lr5/a;

    .line 97
    .line 98
    iget-object v5, v5, Lr5/a;->A:Landroid/view/ViewGroup;

    .line 99
    .line 100
    invoke-virtual {v1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/view/ViewGroup;

    .line 105
    .line 106
    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    .line 107
    .line 108
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    .line 110
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->a:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/BasePickerView;->k(Landroid/content/Context;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 120
    .line 121
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    .line 122
    .line 123
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lr5/a;

    .line 127
    .line 128
    iget v1, v1, Lr5/a;->R:I

    .line 129
    .line 130
    if-eq v1, v3, :cond_2

    .line 131
    .line 132
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    .line 136
    .line 137
    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    .line 138
    .line 139
    sget v2, Lcom/bigkoo/pickerview/R$id;->content_container:I

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Landroid/view/ViewGroup;

    .line 146
    .line 147
    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->b:Landroid/view/ViewGroup;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->t(Z)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public abstract p()Z
.end method

.method public q()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->i:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v1, 0x1

    .line 22
    :cond_2
    return v1
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->k:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lr5/a;

    .line 6
    .line 7
    iget-boolean v1, v1, Lr5/a;->U:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->d:Landroid/view/ViewGroup;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->n:Landroid/view/View$OnKeyListener;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    return-void
.end method

.method protected u(Z)Lcom/bigkoo/pickerview/view/BasePickerView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget v1, Lcom/bigkoo/pickerview/R$id;->outmost_container:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->o:Landroid/view/View$OnTouchListener;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-object p0
.end method

.method public v()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->w()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->q()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->i:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->r(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->c:Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
