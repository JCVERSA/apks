.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/ref/WeakReference;

.field public a:F

.field public b:F

.field public c:F

.field public d:Z

.field public e:Z

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

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->C:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isForceHios$widgetsLib_release()Z

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->a:F

    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->b:F

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->c:F

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$color;->os_color_white100:I

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->t:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dimen_seekbar_track_width_hios:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->f:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dimen_seekbar_second_track_width_hios:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->g:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_seekbar_section_dot_size_hios:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->o:I

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->j:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dimen_seekbar_thumb_in_width_hios:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->m:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dimen_seekbar_thumb_out_width_hios:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->n:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dimen_seekbar_t_track_width_hios:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->i:I

    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->l:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_opacityfill_weak:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_opacityfill_weak_hios:I

    invoke-static {v0, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->v:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$color;->os_color_white30:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->w:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/transsion/widgetslib/R$attr;->os_brand_disabled:I

    sget v5, Lcom/transsion/widgetslib/R$color;->os_brand_disabled_hios:I

    invoke-static {v0, v4, v5}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->y:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->z:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/transsion/widgetslib/R$color;->os_comp_color_switch_hios:I

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->A:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->B:I

    goto/16 :goto_2

    :cond_0
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_in_color:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_color_white100:I

    invoke-static {v0, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->t:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_track_width:I

    sget-object v3, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v5

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->f:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_second_track_width:I

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v4

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->g:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_dot_size:I

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v4

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->o:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_text_top_margin:I

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v4

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->j:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_in_width:I

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v4

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->m:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_out_width:I

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v4

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->n:I

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_t_track_width:I

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v3

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lolb;->n(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->i:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_opacityfill_weak:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_opacityfill_weak_hios:I

    invoke-static {v0, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->v:I

    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$color;->os_color_white30:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$thumbOutColor(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)I

    move-result v3

    :goto_0
    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->w:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$attr;->os_brand_disabled:I

    sget v5, Lcom/transsion/widgetslib/R$color;->os_brand_disabled_hios:I

    invoke-static {v3, v4, v5}, Lolb;->m(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->y:I

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->z:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_in_disable_color:I

    sget v5, Lcom/transsion/widgetslib/R$color;->os_comp_color_switch_hios:I

    invoke-static {v3, v4, v5}, Lolb;->m(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->A:I

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$color;->os_color_white30:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$thumbOutColor(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->B:I

    :goto_2
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_opacityfill_weaker:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_opacityfill_weaker_hios:I

    invoke-static {v0, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->q:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {v0, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->r:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->s:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_text_info:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_text_info_hios:I

    invoke-static {p1, v0, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->u:I

    sget-object p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->h:I

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->k:I

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$a;->a(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->l:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->p:I

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->e:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->C:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->config(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;)V

    :cond_0
    return-void
.end method

.method public final b(Z)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->e:Z

    return-object p0
.end method

.method public final c(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->v:I

    return-object p0
.end method

.method public final d(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->p:I

    return-object p0
.end method

.method public final e(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->t:I

    return-object p0
.end method

.method public final getDisplayCharacters()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->e:Z

    return p0
.end method

.method public final getDotsColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->v:I

    return p0
.end method

.method public final getDotsSelectedColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->w:I

    return p0
.end method

.method public final getDotsSelectedColorDisable()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->B:I

    return p0
.end method

.method public final getDotsSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->o:I

    return p0
.end method

.method public final getFloatType()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->d:Z

    return p0
.end method

.method public final getMax()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->b:F

    return p0
.end method

.method public final getMin()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->a:F

    return p0
.end method

.method public final getProcessMarginTopBottow()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->l:I

    return p0
.end method

.method public final getProgress()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->c:F

    return p0
.end method

.method public final getSecondTrackColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->r:I

    return p0
.end method

.method public final getSecondTrackColorDisable()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->y:I

    return p0
.end method

.method public final getSecondTrackSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->g:I

    return p0
.end method

.method public final getSectionCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->p:I

    return p0
.end method

.method public final getSectionTextColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->u:I

    return p0
.end method

.method public final getSectionTextInterval()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->x:I

    return p0
.end method

.method public final getSectionTextSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->h:I

    return p0
.end method

.method public final getTextBottomMargin()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->k:I

    return p0
.end method

.method public final getTextTopMargin()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->j:I

    return p0
.end method

.method public final getThumbInWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->m:I

    return p0
.end method

.method public final getThumbInsideColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->t:I

    return p0
.end method

.method public final getThumbInsideColorDisable()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->A:I

    return p0
.end method

.method public final getThumbOutColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->s:I

    return p0
.end method

.method public final getThumbOutColorDisable()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->z:I

    return p0
.end method

.method public final getThumbOutWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->n:I

    return p0
.end method

.method public final getTrackColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->q:I

    return p0
.end method

.method public final getTrackSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->f:I

    return p0
.end method

.method public final getTrackSizeMax()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->i:I

    return p0
.end method

.method public final setDisplayCharacters(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->e:Z

    return-void
.end method

.method public final setDotsColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->v:I

    return-void
.end method

.method public final setDotsSelectedColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->w:I

    return-void
.end method

.method public final setDotsSelectedColorDisable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->B:I

    return-void
.end method

.method public final setDotsSize(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->o:I

    return-void
.end method

.method public final setFloatType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->d:Z

    return-void
.end method

.method public final setMax(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->b:F

    return-void
.end method

.method public final setMin(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->a:F

    return-void
.end method

.method public final setProcessMarginTopBottow(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->l:I

    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->c:F

    return-void
.end method

.method public final setSecondTrackColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->r:I

    return-void
.end method

.method public final setSecondTrackColorDisable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->y:I

    return-void
.end method

.method public final setSecondTrackSize(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->g:I

    return-void
.end method

.method public final setSectionCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->p:I

    return-void
.end method

.method public final setSectionTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->u:I

    return-void
.end method

.method public final setSectionTextInterval(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->x:I

    return-void
.end method

.method public final setSectionTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->h:I

    return-void
.end method

.method public final setTextBottomMargin(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->k:I

    return-void
.end method

.method public final setTextTopMargin(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->j:I

    return-void
.end method

.method public final setThumbInWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->m:I

    return-void
.end method

.method public final setThumbInsideColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->t:I

    return-void
.end method

.method public final setThumbInsideColorDisable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->A:I

    return-void
.end method

.method public final setThumbOutColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->s:I

    return-void
.end method

.method public final setThumbOutColorDisable(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->z:I

    return-void
.end method

.method public final setThumbOutWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->n:I

    return-void
.end method

.method public final setTrackColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->q:I

    return-void
.end method

.method public final setTrackSize(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->f:I

    return-void
.end method

.method public final setTrackSizeMax(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$b;->i:I

    return-void
.end method
