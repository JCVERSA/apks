.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO0O0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OOO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 26
    .line 27
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->RELEASE_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 32
    .line 33
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 41
    .line 42
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0OO:Z

    .line 43
    .line 44
    xor-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->setStateRefreshing(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 51
    .line 52
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 53
    .line 54
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
