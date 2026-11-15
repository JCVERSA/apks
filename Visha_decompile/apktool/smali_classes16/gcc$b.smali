.class public final Lgcc$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgcc;->m(Landroid/widget/TextView;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lvx0;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lvx0;Landroid/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Lgcc$b;->b:Lvx0;

    iput-object p2, p0, Lgcc$b;->c:Landroid/widget/TextView;

    iput p3, p0, Lgcc$b;->d:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lgcc$b;->b:Lvx0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lvx0;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lgcc$b;->c:Landroid/widget/TextView;

    iget v0, p0, Lgcc$b;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->scrollTo(II)V

    iget-object p0, p0, Lgcc$b;->b:Lvx0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lvx0;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method
