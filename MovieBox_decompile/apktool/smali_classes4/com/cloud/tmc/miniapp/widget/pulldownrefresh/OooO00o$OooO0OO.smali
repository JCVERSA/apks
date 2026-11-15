.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->setStateRefreshing(Z)V
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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;->OooO00o:Z

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
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    .line 21
    .line 22
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 23
    .line 24
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 30
    .line 31
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOoo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0OO;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;->OooO00o:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    const/16 v2, 0xbb8

    .line 47
    .line 48
    invoke-virtual {p1, v2, v1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZLjava/lang/Boolean;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 52
    .line 53
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 58
    .line 59
    iget v2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00Oo0:F

    .line 60
    .line 61
    int-to-float v3, v1

    .line 62
    mul-float/2addr v2, v3

    .line 63
    float-to-int v2, v2

    .line 64
    invoke-interface {v0, p1, v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    return-void
.end method
