.class public abstract Lolb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Z

.field public static final B:Z

.field public static final C:Z

.field public static final D:Z

.field public static E:Z

.field public static final F:Z

.field public static final G:Ljava/lang/String;

.field public static final H:Z

.field public static final I:Z

.field public static final J:Z

.field public static final K:Z

.field public static final L:Z

.field public static final M:I

.field public static final N:[C

.field public static final O:Z

.field public static final P:Z

.field public static Q:Ljava/util/Set;

.field public static final R:Z

.field public static S:Z

.field public static T:Z

.field public static U:Z

.field public static V:Z

.field public static W:Z

.field public static X:Z

.field public static Y:Z

.field public static Z:Z

.field public static final a:[Ljava/lang/String;

.field public static a0:Z

.field public static final b:Ljava/lang/String;

.field public static final b0:[I

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:Ljava/lang/String;

.field public static final o:Z

.field public static final p:Z

.field public static final q:Z

.field public static final r:Z

.field public static final s:Z

.field public static t:I

.field public static u:I

.field public static v:Z

.field public static w:Z

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    sget-object v0, Lyj1;->a:[Ljava/lang/String;

    sput-object v0, Lolb;->a:[Ljava/lang/String;

    invoke-static {}, Lolb;->getOsType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lolb;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    sput-boolean v3, Lolb;->c:Z

    aget-object v3, v0, v4

    invoke-static {}, Lolb;->getOsType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lolb;->d:Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lolb;->e:Z

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_back_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_back_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_back_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lolb;->f:[I

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_close_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_close_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_close_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lolb;->g:[I

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_save_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_save_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_save_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lolb;->h:[I

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_search_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_search_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_search_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lolb;->i:[I

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_edit_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_edit_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_edit_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lolb;->j:[I

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_more_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_more_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_more_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lolb;->k:[I

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_settings_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_settings_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_settings_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lolb;->l:[I

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_add_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_add_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_add_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lolb;->m:[I

    const-string v0, "ro.tr_animation.platform_level"

    const-string v1, "3"

    invoke-static {v0, v1}, Lolb;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lolb;->n:Ljava/lang/String;

    const-string v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lolb;->o:Z

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lolb;->p:Z

    const-string v5, "2"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lolb;->q:Z

    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lolb;->r:Z

    const-string v0, "debug.natureshadow"

    const-string v6, "0"

    invoke-static {v0, v6}, Lolb;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lolb;->s:Z

    const/4 v0, -0x1

    sput v0, Lolb;->t:I

    sput v0, Lolb;->u:I

    const-string v0, "ro.os_flip_screen_support"

    invoke-static {v0}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lolb;->v:Z

    const-string v0, "ro.os_foldable_screen_support"

    invoke-static {v0}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lolb;->w:Z

    const-string v0, "ro.tranos.type"

    invoke-static {v0}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lolb;->x:Ljava/lang/String;

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lolb;->y:Ljava/lang/String;

    const-string v6, "tablet"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lolb;->z:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput-boolean v4, Lolb;->A:Z

    const/16 v6, 0x1e

    if-lt v0, v6, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lolb;->B:Z

    sput-boolean v4, Lolb;->C:Z

    sput-boolean v4, Lolb;->D:Z

    const-string v0, "ro.os_1g_go.support"

    invoke-static {v0}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ro.os_2g_go.support"

    invoke-static {v0}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ro.os_3g_go.support"

    invoke-static {v0}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v4

    :goto_5
    sput-boolean v0, Lolb;->E:Z

    sget-object v0, Lolb;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    sput-boolean v0, Lolb;->F:Z

    const-string v0, "ro.tranos.version"

    invoke-static {v0}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lolb;->G:Ljava/lang/String;

    const-string v0, "14"

    invoke-static {v0}, Lolb;->R(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lolb;->H:Z

    const-string v0, "15.0.1"

    invoke-static {v0}, Lolb;->R(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lolb;->I:Z

    const-string v0, "16.1.0"

    invoke-static {v0}, Lolb;->R(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lolb;->J:Z

    const-string v6, "16.2.0"

    invoke-static {v6}, Lolb;->R(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lolb;->K:Z

    const-string v6, "17.0.0"

    invoke-static {v6}, Lolb;->R(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lolb;->L:Z

    invoke-static {}, Lolb;->getOsVersionCode()I

    move-result v7

    sput v7, Lolb;->M:I

    const/4 v7, 0x5

    new-array v7, v7, [C

    fill-array-data v7, :array_0

    sput-object v7, Lolb;->N:[C

    if-nez v3, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    sput-boolean v0, Lolb;->O:Z

    if-nez v3, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    if-eqz v6, :cond_9

    move v2, v4

    :cond_9
    sput-boolean v2, Lolb;->P:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lolb;->Q:Ljava/util/Set;

    const-string v0, "ro.tr_display.liquidglass.support"

    invoke-static {v0, v5}, Lolb;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lolb;->R:Z

    sput-boolean v0, Lolb;->S:Z

    sput-boolean v0, Lolb;->T:Z

    sput-boolean v0, Lolb;->U:Z

    sput-boolean v0, Lolb;->V:Z

    sput-boolean v4, Lolb;->W:Z

    sput-boolean v0, Lolb;->X:Z

    sget-boolean v0, Lyj1;->d:Z

    sput-boolean v0, Lolb;->Y:Z

    sget-boolean v0, Lyj1;->e:Z

    sput-boolean v0, Lolb;->Z:Z

    sget-boolean v0, Lyj1;->f:Z

    sput-boolean v0, Lolb;->a0:Z

    sget v1, Lcom/transsion/widgetslib/R$color;->os_random_colors_0:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_1:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_random_colors_2:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_random_colors_3:I

    sget v5, Lcom/transsion/widgetslib/R$color;->os_random_colors_4:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_random_colors_5:I

    sget v7, Lcom/transsion/widgetslib/R$color;->os_random_colors_6:I

    sget v8, Lcom/transsion/widgetslib/R$color;->os_random_colors_7:I

    sget v9, Lcom/transsion/widgetslib/R$color;->os_random_colors_8:I

    sget v10, Lcom/transsion/widgetslib/R$color;->os_random_colors_9:I

    sget v11, Lcom/transsion/widgetslib/R$color;->os_random_colors_10:I

    sget v12, Lcom/transsion/widgetslib/R$color;->os_random_colors_11:I

    sget v13, Lcom/transsion/widgetslib/R$color;->os_random_colors_12:I

    sget v14, Lcom/transsion/widgetslib/R$color;->os_random_colors_13:I

    sget v15, Lcom/transsion/widgetslib/R$color;->os_random_colors_14:I

    sget v16, Lcom/transsion/widgetslib/R$color;->os_random_colors_15:I

    filled-new-array/range {v1 .. v16}, [I

    move-result-object v0

    sput-object v0, Lolb;->b0:[I

    return-void

    nop

    :array_0
    .array-data 2
        0x2es
        0x3002s
        0x1362s
        0x964s
        0x6d4s
    .end array-data
.end method

.method public static A(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lolb;->K(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {p0}, Lolb;->n0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lolb;->D(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lolb;->E(Landroid/content/Context;)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p0, v0

    float-to-int v0, p0

    :cond_1
    return v0
.end method

.method public static A0(Landroid/content/Context;Landroid/widget/ListAdapter;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_inset_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Lolb;->y0(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static B([I)I
    .locals 1

    sget-boolean v0, Lolb;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lolb;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    aget p0, p0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget p0, p0, v0

    :goto_0
    return p0
.end method

.method public static B0(Landroid/graphics/Paint;)F
    .locals 0

    invoke-static {p0}, Lyj1;->u(Landroid/graphics/Paint;)F

    move-result p0

    return p0
.end method

.method public static C([I)I
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Params error."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static C0(Landroid/content/Context;Landroid/app/Dialog;ZZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Lolb$b;

    invoke-direct {v0, p2, p3, p1}, Lolb$b;-><init>(ZZLandroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static D(Landroid/content/Context;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static D0(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static E(Landroid/content/Context;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static E0(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lyj1;->j(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static F0(Landroid/widget/TextView;FFZI)F
    .locals 17

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v7, v1, v2

    if-gtz v7, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    move/from16 v2, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-eqz p3, :cond_2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0

    :cond_2
    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    :goto_0
    const/high16 v3, 0x41b00000    # 22.0f

    mul-float v10, v2, v3

    const/high16 v3, 0x41500000    # 13.0f

    mul-float v11, v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v12, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v13, v2, v3

    mul-float v14, v2, v1

    new-instance v15, Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result v1

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :cond_3
    move/from16 v16, v0

    cmpl-float v0, v16, v9

    if-lez v0, :cond_7

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v15

    move/from16 v3, v16

    move v4, v7

    move v5, v8

    invoke-static/range {v0 .. v5}, Lolb;->t0(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/text/TextPaint;FII)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v0, v16, v10

    if-ltz v0, :cond_5

    move v0, v12

    goto :goto_1

    :cond_5
    cmpl-float v0, v16, v11

    if-ltz v0, :cond_6

    move v0, v13

    goto :goto_1

    :cond_6
    move v0, v14

    :goto_1
    sub-float v0, v16, v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v1, v0, v16

    if-nez v1, :cond_3

    :cond_7
    :goto_2
    return v16
.end method

.method public static G(Landroid/content/Context;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static G0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, p0, v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static H(Landroid/content/Context;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static H0(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_2

    const/4 v5, 0x2

    if-lt v1, v5, :cond_2

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lolb;->N:[C

    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    aget-char v6, v0, v5

    if-ne v2, v6, :cond_3

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public static I(Landroid/content/Context;I)[F
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lolb;->J(I)[I

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    aget v5, p1, v1

    invoke-static {v3, v5}, Lolb;->s(Landroid/content/res/Resources;I)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aget p1, p1, v0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v4, p1, v2

    aput v3, p1, v1

    aput p0, p1, v0

    return-object p1
.end method

.method public static I0(Landroid/content/Context;III)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lolb;->J0(Landroid/content/Context;IIIZ)V

    return-void
.end method

.method public static J(I)[I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_shadow_elevation_l4:I

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_shadow_alpha_l4:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color:I

    filled-new-array {p0, v0, v1}, [I

    move-result-object p0

    return-object p0

    :cond_1
    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_shadow_elevation_l3:I

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_shadow_alpha_l3:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color:I

    filled-new-array {p0, v0, v1}, [I

    move-result-object p0

    return-object p0

    :cond_2
    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_shadow_elevation_l2:I

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_shadow_alpha_l2:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color:I

    filled-new-array {p0, v0, v1}, [I

    move-result-object p0

    return-object p0

    :cond_3
    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_shadow_elevation_l1:I

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_shadow_alpha_l1:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color:I

    filled-new-array {p0, v0, v1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static J0(Landroid/content/Context;IIIZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lolb;->K0(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static K(Landroid/content/Context;)Ljava/lang/Float;
    .locals 7

    const-string v0, "widgetslib.Utils"

    move-object v1, p0

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_2

    return-object v2

    :cond_2
    invoke-static {p0}, Landroidx/window/embedding/RuleController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/RuleController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/embedding/RuleController;->getRules()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/embedding/EmbeddingRule;

    instance-of v4, v3, Landroidx/window/embedding/SplitPairRule;

    if-eqz v4, :cond_3

    check-cast v3, Landroidx/window/embedding/SplitPairRule;

    invoke-virtual {v3}, Landroidx/window/embedding/SplitPairRule;->getFilters()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/window/embedding/SplitPairFilter;

    invoke-virtual {v5}, Landroidx/window/embedding/SplitPairFilter;->getPrimaryActivityName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/window/embedding/SplitPairFilter;->getSecondaryActivityName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_5

    if-eqz v5, :cond_4

    :cond_5
    :try_start_1
    invoke-virtual {v3}, Landroidx/window/embedding/SplitRule;->getDefaultSplitAttributes()Landroidx/window/embedding/SplitAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/embedding/SplitAttributes;->getSplitType()Landroidx/window/embedding/SplitAttributes$SplitType;

    move-result-object p0

    const-class v1, Landroidx/window/embedding/SplitAttributes$SplitType;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_9

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v3

    if-gez v4, :cond_9

    if-eqz v6, :cond_7

    return-object p0

    :cond_7
    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid split ratio value: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbq5;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    return-object v2

    :goto_4
    const-string v1, "NoClassDefFoundError - Split embedding class not found. "

    invoke-static {v0, v1, p0}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v2
.end method

.method public static K0(Landroid/content/Context;IIIZZ)V
    .locals 1

    invoke-static {p1, p2, p3}, Lolb;->k(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    instance-of p1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p0}, Lolb;->w0(Landroid/content/Context;)Z

    move-result p2

    invoke-static {}, Lolb;->f0()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    sget p3, Lcom/transsion/widgetslib/R$style;->OSThemOled:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    if-eqz p2, :cond_2

    sget p2, Lcom/transsion/widgetslib/R$style;->OsCurseSupport:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    if-eqz p4, :cond_1

    sget p2, Lcom/transsion/widgetslib/R$style;->actionbar_no_force_padding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1
    invoke-static {p0, p1, p4}, Lolb;->M0(Landroid/content/Context;Landroid/content/res/Resources$Theme;Z)V

    if-eqz p5, :cond_2

    invoke-static {p0}, Lolb;->setWindowInset(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static L(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "status_bar_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static L0(Landroid/view/Window;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    invoke-static {p0, v1}, Ljv3;->a(Landroid/view/Window;Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 p1, 0x3

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    and-int/lit8 v0, v0, -0x11

    goto :goto_0

    :cond_3
    or-int/lit8 v0, v0, 0x10

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    :goto_1
    return-void
.end method

.method public static M(Landroid/content/Context;ZZ)I
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "status_bar_height"

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "navigation_bar_height_landscape"

    goto :goto_0

    :cond_1
    const-string v0, "navigation_bar_height"

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x25

    if-lt p1, p2, :cond_3

    add-int/lit8 p0, p0, -0xc

    :cond_3
    return p0
.end method

.method public static M0(Landroid/content/Context;Landroid/content/res/Resources$Theme;Z)V
    .locals 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_7

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lzca;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-nez p2, :cond_0

    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_0_180:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_0_180_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_0
    sget p0, Lcom/transsion/widgetslib/R$style;->popup_menu_curse:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_5

    :cond_1
    if-nez p2, :cond_3

    invoke-static {}, Lolb;->l0()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_270_RTL:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_270:I

    :goto_1
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_2

    :cond_3
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_270_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_2
    sget p0, Lcom/transsion/widgetslib/R$style;->popup_menu_curse_270:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_5

    :cond_4
    if-nez p2, :cond_6

    invoke-static {}, Lolb;->l0()Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_90_RTL:I

    goto :goto_3

    :cond_5
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_90:I

    :goto_3
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_4

    :cond_6
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_90_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_4
    sget p0, Lcom/transsion/widgetslib/R$style;->popup_menu_curse_90:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_7
    :goto_5
    return-void
.end method

.method public static N(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lyj1;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static N0(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V
    .locals 8

    invoke-static {p0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_4

    invoke-static {p0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lolb;->d0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {p0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner12:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_dialog_bg:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_2

    new-instance p4, Landroid/graphics/drawable/InsetDrawable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p0, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    const/4 v4, 0x0

    move-object v2, p4

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lolb;->X(Landroid/content/Context;)Z

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGestureNavigationBarOn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "widgetslib.Utils"

    invoke-static {v0, p4}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lolb;->k0(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_3

    new-instance p4, Landroid/graphics/drawable/InsetDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p4

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_2

    :cond_3
    new-instance p4, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dimen_fold_dialog_top_bottom_inset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p4

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Fold_Dialog:I

    invoke-virtual {p4, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_3

    :cond_4
    invoke-static {p0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p4, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background_small:I

    invoke-static {p0, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$style;->OS_Animation_Fold_Dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-static {p0, p4}, Lolb;->Q0(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_3

    :cond_6
    invoke-static {p0, p1, p2, p3}, Lolb;->O0(Landroid/content/Context;Landroid/app/Dialog;ZZ)V

    :goto_3
    invoke-static {p0, p1, p2, p3}, Lolb;->C0(Landroid/content/Context;Landroid/app/Dialog;ZZ)V

    sget-boolean p2, Lolb;->w:Z

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget p3, Lcom/transsion/widgetslib/R$string;->os_string_fold_dialog_title_verify:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public static O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lyj1;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public static O0(Landroid/content/Context;Landroid/app/Dialog;ZZ)V
    .locals 8

    const-string p2, "widgetslib.Utils"

    if-nez p1, :cond_0

    const-string p0, "setDialogWindowBackGround dialog null return"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p0, "setDialogWindowBackGround window null return"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner12:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_2
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_dialog_bg:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    sget-boolean v0, Lolb;->J:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lolb;->x(Landroid/content/res/Resources;)I

    move-result v1

    goto :goto_2

    :cond_3
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_top_margin:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    :goto_2
    invoke-static {p0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_dialog_top_margin:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    :cond_4
    move v4, v1

    invoke-static {p0}, Lolb;->X(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v5, v1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_bottom_margin:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int v6, p2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_3

    :cond_5
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v5, v1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_bottom_margin_with_navigation_bar:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int v6, p2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v1, 0x50

    invoke-virtual {p2, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, p0}, Lolb;->o(Landroid/view/Window;Landroid/content/Context;)I

    move-result p0

    goto :goto_4

    :cond_6
    sget p0, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    :goto_4
    invoke-virtual {p2, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_6

    :cond_7
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v5, p1

    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_space350:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lolb;->x(Landroid/content/res/Resources;)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, p1

    sub-float/2addr v0, p2

    float-to-int p2, v0

    invoke-static {p0}, Lolb;->X(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    move v6, p1

    goto :goto_5

    :cond_8
    move v6, p2

    :goto_5
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/internal/policy/TranSystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    sub-int v4, p1, p0

    move-object v1, v7

    move v3, v5

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/16 p0, 0x11

    invoke-virtual {p3, p0}, Landroid/view/Window;->setGravity(I)V

    sget p0, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {p3, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    :goto_6
    const/4 p0, 0x0

    invoke-virtual {v7, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p3, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static P(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lyj1;->n(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static P0(Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/api/view/TranView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/view/TranView;-><init>()V

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/transsion/hubsdk/api/view/TranView;->setForceClipOutShadow(Landroid/view/View;Z)V

    return-void
.end method

.method public static Q(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    :cond_1
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    const-string v1, "widgetslib.Utils"

    const-string v2, "NoClassDefFoundError - ActivityEmbeddingController class not found. "

    invoke-static {v1, v2, p0}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    return v0
.end method

.method public static Q0(Landroid/content/Context;Landroid/view/Window;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p0, "widgetslib.Utils"

    const-string p1, "setDialogWindowBackGround window null return"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_dialog_bg:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {p0}, Lolb;->X(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/graphics/drawable/InsetDrawable;

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v4, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v6, v1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_bottom_margin_with_navigation_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/graphics/drawable/InsetDrawable;

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v4, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v6, v1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_bottom_margin_with_navigation_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_0
    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    goto :goto_2

    :cond_2
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v6, v1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_space350:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lolb;->x(Landroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    sub-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {p0}, Lolb;->X(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    move v7, v0

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/internal/policy/TranSystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    sub-int v5, v0, p0

    move-object v2, v1

    move v4, v6

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/16 p0, 0x11

    invoke-virtual {p1, p0}, Landroid/view/Window;->setGravity(I)V

    move-object p0, v1

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p0, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public static R(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    sget-object v0, Lolb;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v2, "[0-9.]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v2, ""

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const-string p0, "\\."

    invoke-virtual {v3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v2, v1

    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_6

    array-length v4, p0

    if-ge v2, v4, :cond_6

    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, p0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v4, v5, :cond_4

    return v0

    :cond_4
    if-ge v4, v5, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    array-length v2, v3

    array-length v4, p0

    if-le v2, v4, :cond_8

    array-length p0, p0

    :goto_3
    array-length v2, v3

    if-ge p0, v2, :cond_8

    aget-object v2, v3, p0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    return v0

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return v1
.end method

.method public static R0(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V
    .locals 9

    invoke-static {p0}, Lolb;->A(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x190

    invoke-static {p0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner12:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v7

    mul-int/lit8 v2, v7, 0x2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    if-eqz p4, :cond_0

    new-instance p4, Landroid/graphics/drawable/InsetDrawable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {p0, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v8

    const/4 v5, 0x0

    move-object v3, p4

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lolb;->k0(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_1

    new-instance p4, Landroid/graphics/drawable/InsetDrawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p4

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0

    :cond_1
    new-instance p4, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_fold_dialog_top_bottom_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p4

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    new-instance p4, Landroid/graphics/drawable/InsetDrawable;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p4

    move v5, v7

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0

    :cond_3
    new-instance p4, Landroid/graphics/drawable/InsetDrawable;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p4

    move v5, v7

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    const/16 v0, 0x11

    invoke-virtual {p4, v0}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Fold_Dialog:I

    invoke-virtual {p4, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-static {p0, p1, p2, p3}, Lolb;->C0(Landroid/content/Context;Landroid/app/Dialog;ZZ)V

    return-void
.end method

.method public static S(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lyj1;->o(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static S0(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner12:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/16 v7, 0x50

    const/4 v8, 0x0

    if-ne v0, v1, :cond_1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_dialog_top_margin:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    float-to-int p4, p4

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0}, Lolb;->L(Landroid/content/Context;)I

    move-result v4

    sub-int v4, p4, v4

    invoke-static {p0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_dialog_bottom_margin_with_navigation_bar:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    float-to-int v6, p4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4, v7}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    sget-boolean v0, Lolb;->J:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p0}, Lolb;->o(Landroid/view/Window;Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    :goto_0
    invoke-virtual {p4, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_1

    :cond_1
    new-instance p4, Landroid/graphics/drawable/InsetDrawable;

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_dialog_bottom_margin_with_navigation_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p4

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p4, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4, v7}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {p4, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    :goto_1
    invoke-static {p0, p1, p2, p3}, Lolb;->C0(Landroid/content/Context;Landroid/app/Dialog;ZZ)V

    sget-boolean p2, Lolb;->w:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget p3, Lcom/transsion/widgetslib/R$string;->os_string_fold_dialog_title_verify:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static T(C)Z
    .locals 1

    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_0

    const v0, 0x9fff

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_1

    const/16 v0, 0x4dbf

    if-le p0, v0, :cond_2

    :cond_1
    const v0, 0xf900

    if-lt p0, v0, :cond_3

    const v0, 0xfaff

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static T0(Landroid/widget/EditText;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public static U(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "zzzzz_tran_display_edge_size"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v0

    :goto_0
    const/16 v1, 0x12

    if-le p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static U0(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Activity;

    return-object v1

    :cond_1
    instance-of p0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz p0, :cond_2

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    return-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static V(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lyj1;->p(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static V0(Landroid/content/Context;)V
    .locals 9

    sget v0, Lcom/transsion/widgetslib/R$style;->OSDefaultColorHIOS:I

    sget v1, Lcom/transsion/widgetslib/R$style;->OSDefaultColorXOS:I

    sget v2, Lcom/transsion/widgetslib/R$style;->OSDefaultColorITELOS:I

    invoke-static {v0, v1, v2}, Lolb;->k(III)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lj43;->d(Landroid/content/Context;ZIIIZ)V

    return-void
.end method

.method public static W()Z
    .locals 2

    const-string v0, "ro.os_foldable_screen_support"

    invoke-static {v0}, Lolb;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static X(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static Y(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    goto :goto_1

    :cond_1
    instance-of p0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz p0, :cond_2

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return v0
.end method

.method public static Z(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "widgetslib.Utils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    sget-boolean v2, Lolb;->F:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lolb;->K:Z

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    :try_start_0
    new-instance v2, Lcom/transsion/hubsdk/api/view/TranWindowManager;

    invoke-direct {v2}, Lcom/transsion/hubsdk/api/view/TranWindowManager;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/hubsdk/api/view/TranWindowManager;->getUltraSmallAppMode(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    const-string v2, "Unexpected error when checking ultra small mode"

    invoke-static {v0, v2, p0}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :goto_1
    const-string v2, "NoSuchMethodError - getUltraSmallAppMode() method not found in TranWindowManager"

    invoke-static {v0, v2, p0}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :goto_2
    const-string v2, "SecurityException - Permission denied when accessing TranWindowManager.getUltraSmallAppMode()"

    invoke-static {v0, v2, p0}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return v1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lolb;->c0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lolb;->d0(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a0()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lolb;->T(C)Z

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    const/16 v8, 0x20

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    move v3, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v0

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c([Ljava/lang/CharSequence;ZZ)[Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, [Ljava/lang/CharSequence;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    if-nez p2, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    if-nez p1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lolb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object p0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static c0(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {p0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lolb;->u0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v0, :cond_0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static d(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Fold_Dialog:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void

    :cond_1
    invoke-static {p0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lolb;->J:Z

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Lolb;->o(Landroid/view/Window;Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_2
    sget p0, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_2

    :cond_3
    sget p0, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Fold_Dialog:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lolb;->d0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Fold_Dialog:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_2

    :cond_7
    invoke-static {p0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Fold_Dialog:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_a

    sget-boolean v0, Lolb;->J:Z

    if-eqz v0, :cond_9

    invoke-static {p1, p0}, Lolb;->o(Landroid/view/Window;Landroid/content/Context;)I

    move-result p0

    goto :goto_1

    :cond_9
    sget p0, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_2

    :cond_a
    sget p0, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    :goto_2
    return-void
.end method

.method public static d0(Landroid/content/Context;)Z
    .locals 5

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLargerUpDownMultiWindowMode isUpDownMode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbq5;->o(Ljava/lang/String;)V

    invoke-static {p0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public static e(Landroid/view/View;F)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/api/view/TranView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/view/TranView;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/hubsdk/api/view/TranView;->setLocalLightSourceTranslationEnabled(Landroid/view/View;Z)V

    invoke-static {p0, p1}, Lolb;->w(Landroid/view/View;F)[F

    move-result-object p1

    const/4 v2, 0x0

    aget v2, p1, v2

    aget p1, p1, v1

    invoke-virtual {v0, p0, v2, p1}, Lcom/transsion/hubsdk/api/view/TranView;->setLocalLightSourceTranslation(Landroid/view/View;FF)V

    return-void
.end method

.method public static e0(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNightMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->o(Ljava/lang/String;)V

    return p0
.end method

.method public static f(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2}, Lyj1;->c(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static f0()Z
    .locals 1

    invoke-static {}, Lyj1;->q()Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)F
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/api/view/TranView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/view/TranView;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/api/view/TranView;->getDefaultLightZWhenAttached(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_local_light_source_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x1c2

    invoke-static {p0, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    add-float/2addr v1, p0

    const/high16 p0, 0x40400000    # 3.0f

    div-float/2addr v1, p0

    int-to-float p0, v0

    mul-float/2addr p0, v1

    return p0
.end method

.method public static g0(Landroid/content/Context;)Z
    .locals 0

    sget-boolean p0, Lolb;->z:Z

    return p0
.end method

.method public static getHardwareType()I
    .locals 1

    invoke-static {}, Lyj1;->h()I

    move-result v0

    return v0
.end method

.method public static getOsType()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "ro.tranos.type"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "ro.tranos.version"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getOsVersionCode()I
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOsVersionCode.version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lolb;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lolb;->x:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "widgetslib.Utils"

    invoke-static {v3, v0}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lolb;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lolb;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OS version($version) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lbq5;->j(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v1

    const/4 v5, 0x2

    if-lt v0, v5, :cond_1

    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOsVersionCode: parse fail.version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lolb;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lolb;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lbq5;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v4
.end method

.method public static getRandomColor()I
    .locals 1

    sget-object v0, Lolb;->b0:[I

    invoke-static {v0}, Lolb;->C([I)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;I)I
    .locals 0

    invoke-static {p0, p1}, Lyj1;->d(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static h0(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lolb;->K(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0}, Lolb;->E(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/16 v2, 0x258

    invoke-static {p0, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lyj1;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static i0(Landroid/content/Context;Landroid/view/WindowManager;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    const/4 v1, 0x1

    if-ltz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-static {p0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static j(Landroid/view/View;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/api/view/TranView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/view/TranView;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/transsion/hubsdk/api/view/TranView;->setLocalLightSourceTranslationEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static j0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lolb;->c0(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static k(III)I
    .locals 2

    invoke-static {}, Lolb;->getOsType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    :cond_0
    sget-boolean v1, Lolb;->e:Z

    if-eqz v1, :cond_1

    return p2

    :cond_1
    sget-object p2, Lolb;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p1

    :cond_2
    return p0
.end method

.method public static k0(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$bool;->os_flag_refs_pad_value:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static l(IILandroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static l0()Z
    .locals 1

    invoke-static {}, Lyj1;->r()Z

    move-result v0

    return v0
.end method

.method public static m(Landroid/content/Context;II)I
    .locals 0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p1, p2, p0}, Lolb;->l(IILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static m0()Z
    .locals 1

    invoke-static {}, Lyj1;->s()Z

    move-result v0

    return v0
.end method

.method public static n(IILandroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static n0(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static o(Landroid/view/Window;Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Dialog:I

    return p0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Dialog:I

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gtz p0, :cond_2

    invoke-static {p1}, Lolb;->p(Landroid/content/Context;)I

    move-result p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    const/16 v0, 0x14a

    invoke-static {p1, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x230

    invoke-static {p1, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDialogTranslationAnimStyle: smallLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mediumLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " contentHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbq5;->b(Ljava/lang/String;)V

    if-gt p0, v0, :cond_3

    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Dialog_Short:I

    return p0

    :cond_3
    if-gt p0, p1, :cond_4

    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Dialog:I

    return p0

    :cond_4
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Dialog_Long:I

    return p0
.end method

.method public static o0(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p(Landroid/content/Context;)I
    .locals 4

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_large_screen_width_weight:I

    invoke-static {p0, v0}, Lolb;->t(Landroid/content/Context;I)F

    move-result v0

    invoke-static {p0}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lolb;->E(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lolb;->o0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    div-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    int-to-float p0, v1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    div-int/lit8 v1, p0, 0x2

    goto :goto_2

    :cond_1
    int-to-float p0, v1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lolb;->A(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x190

    invoke-static {p0, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {p0, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    if-le v1, v3, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    invoke-static {p0, v0}, Lolb;->q(Landroid/content/Context;F)I

    move-result p0

    move v1, p0

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p0}, Lolb;->d0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    invoke-static {p0}, Lolb;->k0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lolb;->n0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lolb;->D(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lolb;->E(Landroid/content/Context;)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    :goto_1
    mul-float/2addr p0, v0

    float-to-int v1, p0

    goto :goto_2

    :cond_7
    invoke-static {p0, v0}, Lolb;->q(Landroid/content/Context;F)I

    move-result v1

    :cond_8
    :goto_2
    return v1
.end method

.method public static p0(Landroid/view/Window;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(Landroid/content/Context;F)I
    .locals 1

    invoke-static {p0}, Lolb;->o0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lolb;->o0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v0, 0x46

    if-gt p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p0, p1}, Lolb;->h(Landroid/content/Context;I)I

    move-result p1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    mul-int/lit8 p0, p0, 0x2

    sub-int p0, p1, p0

    :goto_1
    return p0
.end method

.method public static q0(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSecondHome: OS_FOLD_FLIP_SCREEN_SUPPORT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lolb;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "widgetslib.Utils"

    invoke-static {v1, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lolb;->v:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-ge v0, v3, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lglb;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-static {p0}, Lzca;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-static {p0}, Lzca;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSecondHome: secondHome = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static r(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lj43;->e(Landroid/content/Context;)I

    move-result p0

    sget-boolean v0, Lolb;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_xos:I

    :goto_0
    return p0
.end method

.method public static r0(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s(Landroid/content/res/Resources;I)F
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static s0()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "ar"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "hi"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "mr"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "ne"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "sa"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "th"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "vi"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "my"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "km"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "bo"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "am"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    const-string v2, "ti"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lolb;->Q:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setBottomWindowFeatures(Landroid/view/Window;)V
    .locals 1
    .param p0    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lolb;->L0(Landroid/view/Window;Z)V

    return-void
.end method

.method public static setDialogWidth(Landroid/app/Dialog;)V
    .locals 4
    .param p0    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_large_screen_width_weight:I

    invoke-static {v0, v1}, Lolb;->t(Landroid/content/Context;I)F

    move-result v1

    invoke-static {v0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lolb;->d0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v0}, Lolb;->k0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lolb;->n0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lolb;->D(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lolb;->E(Landroid/content/Context;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v0}, Lolb;->o0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v0}, Lolb;->o0(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    invoke-static {v0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x46

    if-gt v1, v3, :cond_8

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_3
    return-void
.end method

.method public static setPadDialogWidth(Landroid/app/Dialog;)V
    .locals 5
    .param p0    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v0}, Lolb;->A(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x190

    invoke-static {v0, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v0, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    if-le v2, v4, :cond_1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dialog_large_screen_width_weight:I

    invoke-static {v0, v3}, Lolb;->t(Landroid/content/Context;I)F

    move-result v3

    invoke-static {v0}, Lolb;->o0(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Lolb;->o0(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    invoke-static {v0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    int-to-float v0, v2

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    :cond_4
    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x46

    if-gt v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static setUltraSmallModeDialogWidth(Landroid/app/Dialog;)V
    .locals 4
    .param p0    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v0}, Lolb;->E(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0}, Lolb;->o0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dialog_large_screen_width_weight:I

    invoke-static {v0, v3}, Lolb;->t(Landroid/content/Context;I)F

    move-result v0

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dialog_large_screen_width_weight:I

    invoke-static {v0, v3}, Lolb;->t(Landroid/content/Context;I)F

    move-result v0

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static setWindowInset(Landroid/content/Context;)V
    .locals 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lolb$a;

    invoke-direct {v1, p0}, Lolb$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method public static t(Landroid/content/Context;I)F
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static t0(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/text/TextPaint;FII)Z
    .locals 1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p1, v0, p3, p2, p4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p5, :cond_0

    return p2

    :cond_0
    sub-int/2addr p5, p2

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result p0

    if-lez p0, :cond_1

    move v0, p2

    :cond_1
    return v0
.end method

.method public static u(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lolb;->D(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lolb;->x(Landroid/content/res/Resources;)I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_bg_margin_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    mul-int/2addr p0, p2

    if-ge v2, p0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public static u0(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "isThunderbackWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static v(FF)[F
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float/2addr p1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p0

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v1, 0x0

    aput p1, p0, v1

    const/4 p1, 0x1

    aput v0, p0, p1

    return-object p0
.end method

.method public static v0(Landroid/content/Context;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x1

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-static {p0}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lolb;->Y(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static w(Landroid/view/View;F)[F
    .locals 0

    invoke-static {p0}, Lolb;->g(Landroid/view/View;)F

    move-result p0

    invoke-static {p0, p1}, Lolb;->v(FF)[F

    move-result-object p0

    return-object p0
.end method

.method public static w0(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lyj1;->t(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static x(Landroid/content/res/Resources;)I
    .locals 3

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "navigation_bar_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static x0()Z
    .locals 3

    sget-object v0, Lolb;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Lolb;->x:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lolb;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static y(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->OsBgPrimary:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static y0(Landroid/content/Context;Landroid/widget/ListAdapter;)I
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Lolb;->k0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lolb;->n0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lolb;->D(Landroid/content/Context;)I

    move-result v1

    :cond_0
    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_popup_window_width_max_weight:I

    invoke-static {p0, v2}, Lolb;->t(Landroid/content/Context;I)F

    move-result v2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v4, 0x90

    invoke-static {p0, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/widgetslib/R$dimen;->os_space100:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " maxAllowedWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", minAllowedWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", widthPixels = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "widgetslib.Utils"

    invoke-static {v6, v5}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v2, v1, :cond_1

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sub-float/2addr v3, v0

    float-to-int v2, v3

    :cond_1
    invoke-static {p0, p1, v2, v4}, Lolb;->z0(Landroid/content/Context;Landroid/widget/ListAdapter;II)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "measureAdapterMaxWidth: width = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static z(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static z0(Landroid/content/Context;Landroid/widget/ListAdapter;II)I
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    move-object v7, p0

    move v5, v0

    move v6, v5

    :goto_0
    if-ge v0, v3, :cond_3

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, p0

    move v6, v8

    :cond_0
    invoke-interface {p1, v0, v7, v4}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lt v8, p2, :cond_1

    return p2

    :cond_1
    if-le v8, v5, :cond_2

    move v5, v8

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-gt v5, p3, :cond_4

    goto :goto_1

    :cond_4
    move p3, v5

    :goto_1
    return p3
.end method
