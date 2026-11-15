.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->setStateLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Z

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;->OooO00o:Z

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p1, v0, v2

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0O0;->OooO00o:Z

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->setStateDirectLoading(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
