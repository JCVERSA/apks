.class public final synthetic Lpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioPlayerLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpw;->b:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lpw;->b:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->l(Lcom/transsion/audio/widgets/AudioPlayerLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
