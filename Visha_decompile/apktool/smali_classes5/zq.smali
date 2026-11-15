.class public final synthetic Lzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Landroid/animation/ValueAnimator;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzq;->b:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lzq;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lzq;->b:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lzq;->c:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->B(Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
