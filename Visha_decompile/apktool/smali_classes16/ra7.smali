.class public final synthetic Lra7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public final synthetic d:[I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ILcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lra7;->b:I

    iput-object p2, p0, Lra7;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object p3, p0, Lra7;->d:[I

    iput p4, p0, Lra7;->e:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lra7;->b:I

    iget-object v1, p0, Lra7;->c:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iget-object v2, p0, Lra7;->d:[I

    iget p0, p0, Lra7;->e:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->d(ILcom/transsion/widgetslib/widget/seekbar/OSSeekbar;[IILandroid/animation/ValueAnimator;)V

    return-void
.end method
