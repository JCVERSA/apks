.class public final Lcom/transsion/widgetslib/view/OSLoadingView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OSLoadingView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView$b;->b:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView$b;->b:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->access$getMAnimCircle(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView$b;->b:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->access$getMAnimAppeal(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView$b;->b:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->access$getMAnimRepel(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
