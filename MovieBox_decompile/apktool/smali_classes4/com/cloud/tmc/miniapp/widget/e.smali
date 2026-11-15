.class public final synthetic Lcom/cloud/tmc/miniapp/widget/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/e;->a:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/e;->a:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;Landroid/animation/ValueAnimator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
