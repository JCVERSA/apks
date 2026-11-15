.class public Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView$a;->b:Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0

    return-void
.end method

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView$a;->b:Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->c(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView$a;->b:Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->b(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->changeChildVisible(I)V

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
