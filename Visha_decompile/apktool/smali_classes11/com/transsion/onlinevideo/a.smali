.class public Lcom/transsion/onlinevideo/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/a$d;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:Lcom/transsion/onlinevideo/a$d;


# direct methods
.method public constructor <init>(IILcom/transsion/onlinevideo/a$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/a;->c:Z

    iput p1, p0, Lcom/transsion/onlinevideo/a;->d:I

    iput p2, p0, Lcom/transsion/onlinevideo/a;->e:I

    iput-object p3, p0, Lcom/transsion/onlinevideo/a;->f:Lcom/transsion/onlinevideo/a$d;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/onlinevideo/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/a;->b:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/onlinevideo/a;)I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/a;->e:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/onlinevideo/a;)I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/a;->d:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/onlinevideo/a;)Lcom/transsion/onlinevideo/a$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/a;->f:Lcom/transsion/onlinevideo/a$d;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/onlinevideo/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/a;->a:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/onlinevideo/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/a;->c:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/onlinevideo/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/a;->b:Z

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/onlinevideo/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/a;->a:Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/onlinevideo/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/a;->c:Z

    return-void
.end method


# virtual methods
.method public j(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addFooterView(Landroid/view/View;II)I

    new-instance p3, Lcom/transsion/onlinevideo/a$a;

    invoke-direct {p3, p0, p1}, Lcom/transsion/onlinevideo/a$a;-><init>(Lcom/transsion/onlinevideo/a;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/transsion/onlinevideo/a;->d:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/transsion/onlinevideo/a$b;

    invoke-direct {v2, p0, p1}, Lcom/transsion/onlinevideo/a$b;-><init>(Lcom/transsion/onlinevideo/a;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-instance p1, Lcom/transsion/onlinevideo/a$c;

    invoke-direct {p1, p0, p2, v0}, Lcom/transsion/onlinevideo/a$c;-><init>(Lcom/transsion/onlinevideo/a;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
