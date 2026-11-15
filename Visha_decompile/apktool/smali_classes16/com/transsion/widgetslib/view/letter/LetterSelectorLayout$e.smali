.class public Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$e;
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

    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$e;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$e;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$e;->b:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->g(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    sub-float/2addr v1, p1

    float-to-int p0, v1

    invoke-static {v0, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->h(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)V

    return-void
.end method
