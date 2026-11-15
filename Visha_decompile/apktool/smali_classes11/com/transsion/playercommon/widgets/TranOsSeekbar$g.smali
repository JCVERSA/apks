.class public Lcom/transsion/playercommon/widgets/TranOsSeekbar$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/TranOsSeekbar;->N()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$g;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$g;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u(Lcom/transsion/playercommon/widgets/TranOsSeekbar;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$g;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u(Lcom/transsion/playercommon/widgets/TranOsSeekbar;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$g;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u(Lcom/transsion/playercommon/widgets/TranOsSeekbar;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$g;->b:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u(Lcom/transsion/playercommon/widgets/TranOsSeekbar;Z)V

    return-void
.end method
