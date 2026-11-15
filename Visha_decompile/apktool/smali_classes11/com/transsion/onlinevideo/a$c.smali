.class public Lcom/transsion/onlinevideo/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/a;->k(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lcom/transsion/onlinevideo/a;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/a;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/a$c;->d:Lcom/transsion/onlinevideo/a;

    iput-object p2, p0, Lcom/transsion/onlinevideo/a$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/transsion/onlinevideo/a$c;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/onlinevideo/a$c;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/a$c;->d:Lcom/transsion/onlinevideo/a;

    invoke-static {v0}, Lcom/transsion/onlinevideo/a;->c(Lcom/transsion/onlinevideo/a;)I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/a$c;->c:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    sget p1, Lcom/transsion/onlinevideo/R$drawable;->ic_pull_back_arrow:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

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
