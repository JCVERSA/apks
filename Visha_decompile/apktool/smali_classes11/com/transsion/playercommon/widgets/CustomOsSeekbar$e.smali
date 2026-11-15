.class public Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/CustomOsSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->o:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->a:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->b:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->c:F

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->d:I

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->e:I

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->g:I

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->t(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->h:I

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->j:I

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->k:I

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->l:I

    const/high16 v0, 0x3fa00000    # 1.25f

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->m:F

    const v0, 0x3f924923

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->n:F

    :try_start_0
    invoke-static {p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_gray_tertiary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->f:I

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$color;->os_seekbar_thumbinside_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OSSeekBarBuilder getColor failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CustomOsSeekbar"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->w(Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;)V

    :cond_0
    return-void
.end method
