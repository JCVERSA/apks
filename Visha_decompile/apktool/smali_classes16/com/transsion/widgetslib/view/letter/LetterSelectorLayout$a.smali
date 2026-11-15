.class public Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$a;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$a;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$a;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v1

    const v1, 0x3f333333    # 0.7f

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->j(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$a;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
