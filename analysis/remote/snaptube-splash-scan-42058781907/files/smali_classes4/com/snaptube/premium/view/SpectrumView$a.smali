.class public Lcom/snaptube/premium/view/SpectrumView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/premium/view/SpectrumView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/snaptube/premium/view/SpectrumView;


# direct methods
.method public constructor <init>(Lcom/snaptube/premium/view/SpectrumView;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/view/SpectrumView$a;->a:Lcom/snaptube/premium/view/SpectrumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView$a;->a:Lcom/snaptube/premium/view/SpectrumView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView$a;->a:Lcom/snaptube/premium/view/SpectrumView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/view/SpectrumView;->h(F)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
