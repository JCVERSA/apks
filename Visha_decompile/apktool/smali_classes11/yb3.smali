.class public final synthetic Lyb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb3;->b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lyb3;->b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->c(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
