.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public OooO00o:B

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-byte p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO00o:B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO00o:B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0o:F

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x2

    .line 22
    if-ne v1, v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    .line 25
    .line 26
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0oo:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    div-int/2addr p1, v2

    .line 45
    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOO0:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-ne v2, v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/Float;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOOo:F

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 v1, 0x3

    .line 66
    if-ne v1, v0, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/Float;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOoo:F

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 v1, 0x4

    .line 84
    if-ne v1, v0, :cond_5

    .line 85
    .line 86
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo00:I

    .line 99
    .line 100
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 103
    .line 104
    .line 105
    return-void
.end method
