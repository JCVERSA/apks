.class public Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->h:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->a:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->b:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->c:F

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->l(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->d:I

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->l(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->e:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->a(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_gray_tertiary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->f:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->f(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->g:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->i(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;)V

    :cond_0
    return-void
.end method
