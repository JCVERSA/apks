.class public final Lgcc$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgcc;->d(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lg24;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lg24;II)V
    .locals 0

    iput-object p1, p0, Lgcc$a;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lgcc$a;->c:Lg24;

    iput p3, p0, Lgcc$a;->d:I

    iput p4, p0, Lgcc$a;->e:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lgcc$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lgcc$a;->c:Lg24;

    invoke-virtual {v0}, Lg24;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgcc$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgcc$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lgcc$a;->c:Lg24;

    invoke-virtual {p1, v1}, Lg24;->setReversed(Z)V

    const p1, 0x10100a1

    filled-new-array {p1}, [I

    move-result-object p1

    new-array v0, v1, [I

    filled-new-array {p1, v0}, [[I

    move-result-object p1

    iget-object v0, p0, Lgcc$a;->b:Landroid/widget/TextView;

    new-instance v1, Landroid/content/res/ColorStateList;

    iget v2, p0, Lgcc$a;->d:I

    iget p0, p0, Lgcc$a;->e:I

    filled-new-array {v2, p0}, [I

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
