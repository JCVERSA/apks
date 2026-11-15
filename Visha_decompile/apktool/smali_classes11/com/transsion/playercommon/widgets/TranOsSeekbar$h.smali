.class public Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/TranOsSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:F

.field public x:F

.field public y:F

.field public z:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->z:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->k:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->l:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->m:F

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->n:I

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->o:I

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->F(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->q:I

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->G(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->r:I

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->t:I

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->u:I

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->v:I

    const/high16 v0, 0x3fa00000    # 1.25f

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->w:F

    const v0, 0x3f924923

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->x:F

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->b(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

    :try_start_0
    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_gray_tertiary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->p:I

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$color;->os_seekbar_thumbinside_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->H()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSSeekBarBuilder getColor failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->K(Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_thumb_height_hios:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->i:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->a:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_radius_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->h:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->b:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_shadow_dy_level3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->c:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_shadow_color_level2_hios:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_seekbar_shadow_color_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->d:I

    shr-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->e:I

    shr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_thumb_half_width_hios:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->j:F

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_gray_solid_secondary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->g:I

    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->n:I

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->o:I

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_quaternary_color_solid:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->s:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->n:I

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->o:I

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->s:I

    :goto_0
    return-void
.end method
