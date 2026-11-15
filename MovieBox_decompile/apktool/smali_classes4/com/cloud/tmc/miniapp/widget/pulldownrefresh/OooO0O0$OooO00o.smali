.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
