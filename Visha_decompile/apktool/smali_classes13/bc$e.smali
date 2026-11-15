.class public Lbc$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbc;->e(Landroid/view/ViewGroup;Landroid/animation/AnimatorSet;Ljava/util/List;Landroid/content/Context;Ljava/util/List;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/ViewGroup;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;ILandroid/view/ViewGroup;Ljava/util/List;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lbc$e;->b:Landroid/widget/ImageView;

    iput p2, p0, Lbc$e;->c:I

    iput-object p3, p0, Lbc$e;->d:Landroid/view/ViewGroup;

    iput-object p4, p0, Lbc$e;->e:Ljava/util/List;

    iput-object p5, p0, Lbc$e;->f:Landroid/content/Context;

    iput p6, p0, Lbc$e;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lbc$e;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p1, p0, Lbc$e;->c:I

    if-lez p1, :cond_0

    iget-object v0, p0, Lbc$e;->d:Landroid/view/ViewGroup;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lbc$e;->e:Ljava/util/List;

    iget v0, p0, Lbc$e;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lbc$e;->e:Ljava/util/List;

    iget v1, p0, Lbc$e;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lbc$e;->f:Landroid/content/Context;

    iget p0, p0, Lbc$e;->g:I

    invoke-static {p1, v0, v1, p0}, Lbc;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbc$e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lbc$e;->f:Landroid/content/Context;

    iget p0, p0, Lbc$e;->g:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0}, Lbc;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
