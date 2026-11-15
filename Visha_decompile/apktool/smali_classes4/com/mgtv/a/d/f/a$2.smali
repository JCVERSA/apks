.class Lcom/mgtv/a/d/f/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/f/a;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/f/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$2;->a:Lcom/mgtv/a/d/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/mgtv/a/d/f/a$2;->a:Lcom/mgtv/a/d/f/a;

    invoke-virtual {p1}, Lcom/mgtv/a/d/f/a;->s()V

    iget-object p1, p0, Lcom/mgtv/a/d/f/a$2;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->m(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$2;->a:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->n(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;

    move-result-object p0

    const/4 p1, 0x3

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Lcom/mgtv/a/d/b/d;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
