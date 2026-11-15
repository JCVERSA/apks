.class public final synthetic Los;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioMainFragment;

.field public final synthetic c:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Los;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    iput-object p2, p0, Los;->c:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Los;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object p0, p0, Los;->c:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->o0(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
