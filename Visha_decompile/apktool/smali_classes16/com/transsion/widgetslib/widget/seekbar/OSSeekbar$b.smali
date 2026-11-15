.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:[I

.field public D:[F

.field public E:Ljava/lang/ref/WeakReference;

.field public final a:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:F

.field public q:F

.field public r:F

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->a:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->E:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->c:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->d:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->e:F

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getOnlyHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->c()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;

    goto/16 :goto_1

    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_track_width:I

    sget-object v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v3

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->f:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_second_track_width:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v3

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->g:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_t_track_width:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v2

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->h:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_opacityfill_weaker:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_opacityfill_weaker_hios:I

    invoke-static {v0, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->i:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {v0, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->j:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->k:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_in_color:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_color_white100:I

    invoke-static {v0, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->l:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_in_width:I

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v2

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->m:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_out_width:I

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v2

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->n:I

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->o:I

    const/high16 v0, 0x3fa00000    # 1.25f

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->p:F

    const v0, 0x3f924923

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->q:F

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_brand_disabled:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_brand_disabled_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->s:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->t:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_in_disable_color:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_layer_low_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->u:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->b(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_dot_size:I

    sget-object v1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v1

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->v:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_grayfill_strong:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_grayfill_strong_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->w:I

    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_color_white30:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$thumbOutColor(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->x:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_dot_disable_color:I

    invoke-static {p1, v0, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->y:I

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->E:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->E:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->config(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dimen_seekbar_thumb_out_width_hios:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->r:F

    return-void
.end method

.method public final c()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->a:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->a:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->E:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->c:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->d:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->e:F

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->a:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_hios:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->a:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_track_width:I

    sget-object v3, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v5

    invoke-static {v2, v5, v0}, Lolb;->n(IILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->f:I

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_second_track_width:I

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v5

    invoke-static {v2, v5, v0}, Lolb;->n(IILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->g:I

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_t_track_width:I

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v4

    invoke-static {v2, v4, v0}, Lolb;->n(IILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->h:I

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_opacityfill_weaker:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_opacityfill_weaker_hios:I

    invoke-static {v1, v2, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->i:I

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {v1, v2, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->j:I

    invoke-static {v1, v2, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->k:I

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_in_color:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_color_white100:I

    invoke-static {v0, v2, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->l:I

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_in_width:I

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v4

    invoke-static {v2, v4, v0}, Lolb;->n(IILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->m:I

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_out_width:I

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v4

    invoke-static {v2, v4, v0}, Lolb;->n(IILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->n:I

    const/16 v2, 0x14

    invoke-virtual {v3, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$a;->a(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->o:I

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_brand_disabled:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_brand_disabled_hios:I

    invoke-static {v1, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->s:I

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->t:I

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_in_disable_color:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_layer_low_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->u:I

    :cond_0
    return-object p0
.end method

.method public final getDotsColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->w:I

    return p0
.end method

.method public final getDotsSelectedColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->x:I

    return p0
.end method

.method public final getDotsSelectedColorDisable()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->y:I

    return p0
.end method

.method public final getDotsSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->v:I

    return p0
.end method

.method public final getGradientPositions()[F
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->D:[F

    return-object p0
.end method

.method public final getLeftIcon()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->z:I

    return p0
.end method

.method public final getMax()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->d:F

    return p0
.end method

.method public final getMin()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->c:F

    return p0
.end method

.method public final getOsWideSeekbarNew()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->a:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    return-object p0
.end method

.method public final getProgress()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->e:F

    return p0
.end method

.method public final getRightIcon()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->A:I

    return p0
.end method

.method public final getSecondTrackColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->j:I

    return p0
.end method

.method public final getSecondTrackColorDisable()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->s:I

    return p0
.end method

.method public final getSecondTrackGradientColors()[I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->C:[I

    return-object p0
.end method

.method public final getSecondTrackWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->g:I

    return p0
.end method

.method public final getShowMiddlePoint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->B:Z

    return p0
.end method

.method public final getThumbHeightHios()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->r:F

    return p0
.end method

.method public final getThumbInMaxScal()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->p:F

    return p0
.end method

.method public final getThumbInMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->o:I

    return p0
.end method

.method public final getThumbInWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->m:I

    return p0
.end method

.method public final getThumbInsideColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->l:I

    return p0
.end method

.method public final getThumbInsideColorDisable()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->u:I

    return p0
.end method

.method public final getThumbInsideUnAbleColorHios()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->b:I

    return p0
.end method

.method public final getThumbOutColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->k:I

    return p0
.end method

.method public final getThumbOutColorDisable()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->t:I

    return p0
.end method

.method public final getThumbOutMaxScal()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->q:F

    return p0
.end method

.method public final getThumbOutWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->n:I

    return p0
.end method

.method public final getTrackColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->i:I

    return p0
.end method

.method public final getTrackWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->f:I

    return p0
.end method

.method public final getTrackWidthMax()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->h:I

    return p0
.end method

.method public final setDotsColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->w:I

    return-void
.end method

.method public final setDotsSelectedColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->x:I

    return-void
.end method

.method public final setDotsSelectedColorDisable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->y:I

    return-void
.end method

.method public final setDotsSize(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->v:I

    return-void
.end method

.method public final setGradientPositions([F)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->D:[F

    return-void
.end method

.method public final setLeftIcon(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->z:I

    return-void
.end method

.method public final setMax(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->d:F

    return-void
.end method

.method public final setMin(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->c:F

    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->e:F

    return-void
.end method

.method public final setRightIcon(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->A:I

    return-void
.end method

.method public final setSecondTrackColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->j:I

    return-void
.end method

.method public final setSecondTrackColorDisable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->s:I

    return-void
.end method

.method public final setSecondTrackGradientColors([I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->C:[I

    return-void
.end method

.method public final setSecondTrackWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->g:I

    return-void
.end method

.method public final setShowMiddlePoint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->B:Z

    return-void
.end method

.method public final setThumbHeightHios(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->r:F

    return-void
.end method

.method public final setThumbInMaxScal(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->p:F

    return-void
.end method

.method public final setThumbInMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->o:I

    return-void
.end method

.method public final setThumbInWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->m:I

    return-void
.end method

.method public final setThumbInsideColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->l:I

    return-void
.end method

.method public final setThumbInsideColorDisable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->u:I

    return-void
.end method

.method public final setThumbInsideUnAbleColorHios(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->b:I

    return-void
.end method

.method public final setThumbOutColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->k:I

    return-void
.end method

.method public final setThumbOutColorDisable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->t:I

    return-void
.end method

.method public final setThumbOutMaxScal(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->q:F

    return-void
.end method

.method public final setThumbOutWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->n:I

    return-void
.end method

.method public final setTrackColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->i:I

    return-void
.end method

.method public final setTrackWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->f:I

    return-void
.end method

.method public final setTrackWidthMax(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;->h:I

    return-void
.end method
