.class public Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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

.field public k:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->k:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->a:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->b:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->c:F

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->d:I

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->e:I

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->j:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->a(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_fill_weak:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_fill_weak_hios:I

    invoke-static {v1, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->f:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->g:I

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->h:I

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->c(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->i:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->f(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;)V

    :cond_0
    return-void
.end method

.method public b(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->g:I

    return-object p0
.end method

.method public c(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;
    .locals 0

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->e:I

    return-object p0
.end method

.method public d(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->i:I

    return-object p0
.end method

.method public e(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;
    .locals 0

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->h:I

    return-object p0
.end method

.method public f(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->f:I

    return-object p0
.end method

.method public g(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;
    .locals 0

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->d:I

    return-object p0
.end method
