.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->m(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;II)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$a;->d:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;

    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$a;->b:I

    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$a;->d:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->a(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$a;->b:I

    invoke-static {v1, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$a;->d:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->b(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;)I

    move-result v2

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$a;->c:I

    invoke-static {v2, p0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->g(II)V

    return-void
.end method
