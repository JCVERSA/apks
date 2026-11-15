.class public Lbc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbc;->h(Landroid/view/ViewGroup;Landroid/animation/AnimatorSet;Landroid/graphics/Bitmap;Landroid/view/View;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/view/View;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lbc$b;->b:Landroid/widget/ImageView;

    iput-object p2, p0, Lbc$b;->c:Landroid/view/View;

    iput-object p3, p0, Lbc$b;->d:Landroid/content/Context;

    iput p4, p0, Lbc$b;->e:I

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

    iget-object p1, p0, Lbc$b;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lbc$b;->c:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lbc$b;->d:Landroid/content/Context;

    iget p0, p0, Lbc$b;->e:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0}, Lbc;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/content/Context;I)V

    return-void
.end method
