.class public Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$c;->b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$c;->b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-static {p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->e(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$c;->b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-static {p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->e(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$e;->a()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$c;->b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView$c;->b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
