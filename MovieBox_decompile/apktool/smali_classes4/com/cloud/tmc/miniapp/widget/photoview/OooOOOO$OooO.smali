.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO"
.end annotation


# instance fields
.field public final OooO00o:F

.field public final OooO0O0:F

.field public final OooO0OO:J

.field public final OooO0Oo:F

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

.field public final OooO0o0:F


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO00o:F

    .line 7
    .line 8
    iput p5, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0O0:F

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide p4

    .line 14
    iput-wide p4, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0OO:J

    .line 15
    .line 16
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0Oo:F

    .line 17
    .line 18
    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o0:F

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0OO:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-float v0, v0

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    mul-float/2addr v0, v1

    .line 12
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 13
    .line 14
    iget v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0:I

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    div-float/2addr v0, v2

    .line 18
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o:Landroid/view/animation/Interpolator;

    .line 25
    .line 26
    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0Oo:F

    .line 31
    .line 32
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o0:F

    .line 33
    .line 34
    sub-float/2addr v3, v2

    .line 35
    mul-float/2addr v3, v0

    .line 36
    add-float/2addr v3, v2

    .line 37
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    div-float v5, v3, v2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    .line 48
    .line 49
    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO00o:F

    .line 50
    .line 51
    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0O0:F

    .line 52
    .line 53
    move-object v4, v2

    .line 54
    check-cast v4, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    invoke-virtual/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o(FFFFF)V

    .line 59
    .line 60
    .line 61
    cmpg-float v0, v0, v1

    .line 62
    .line 63
    if-gez v0, :cond_0

    .line 64
    .line 65
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO;->OooO0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method
