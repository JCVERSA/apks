.class public final Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J)\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ1\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u000f\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J1\u0010\u0014\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "com/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5",
        "Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;",
        "Landroidx/constraintlayout/motion/widget/MotionLayout;",
        "motionLayout",
        "",
        "startId",
        "endId",
        "Lzfb;",
        "onTransitionStarted",
        "(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V",
        "",
        "progress",
        "onTransitionChange",
        "(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V",
        "currentId",
        "onTransitionCompleted",
        "(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V",
        "triggerId",
        "",
        "positive",
        "onTransitionTrigger",
        "(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V",
        "audio_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getLastProgress$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)F

    move-result p1

    cmpg-float p1, p4, p1

    const/4 p2, 0x1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1, p2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$setHasBeenRollback$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1, p4}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$setLastProgress$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onTransitionChange progress="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audio/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getBeingAnimation$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0, p2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$setBeingAnimation(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    :cond_1
    return-void
.end method

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 3

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransitionCompleted progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audio/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getHasBeenRollback$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_1
    const/4 p1, 0x0

    invoke-static {p2, p1}, Ly45;->c(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "scrollGestures onTransitionComplete"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$setBeingAnimation(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$5;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$makeMotionLayoutChildAlpha1(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    return-void
.end method

.method public onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 0

    return-void
.end method

.method public onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V
    .locals 0

    return-void
.end method
