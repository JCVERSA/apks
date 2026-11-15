.class Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/photoview/PhotoViewAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lcom/transsion/photoview/PhotoViewAttachment;


# direct methods
.method public constructor <init>(Lcom/transsion/photoview/PhotoViewAttachment;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p4, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mFocalX:F

    .line 7
    .line 8
    iput p5, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mFocalY:F

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide p4

    .line 14
    iput-wide p4, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mStartTime:J

    .line 15
    .line 16
    iput p2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mZoomStart:F

    .line 17
    .line 18
    iput p3, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mZoomEnd:F

    .line 19
    .line 20
    return-void
.end method

.method private interpolate()F
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mStartTime:J

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
    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/transsion/photoview/PhotoViewAttachment;->s(Lcom/transsion/photoview/PhotoViewAttachment;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    div-float/2addr v0, v2

    .line 20
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/transsion/photoview/PhotoViewAttachment;->f(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/view/animation/Interpolator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->interpolate()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mZoomStart:F

    .line 6
    .line 7
    iget v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mZoomEnd:F

    .line 8
    .line 9
    sub-float/2addr v2, v1

    .line 10
    mul-float/2addr v2, v0

    .line 11
    add-float/2addr v1, v2

    .line 12
    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    div-float/2addr v1, v2

    .line 19
    iget-object v2, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/transsion/photoview/PhotoViewAttachment;->t(Lcom/transsion/photoview/PhotoViewAttachment;)Lcom/transsion/photoview/c;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v3, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mFocalX:F

    .line 26
    .line 27
    iget v4, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->mFocalY:F

    .line 28
    .line 29
    invoke-interface {v2, v1, v3, v4}, Lcom/transsion/photoview/c;->d(FFF)V

    .line 30
    .line 31
    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    .line 34
    cmpg-float v0, v0, v1

    .line 35
    .line 36
    if-gez v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/transsion/photoview/PhotoViewAttachment$AnimatedZoomRunnable;->this$0:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->e(Lcom/transsion/photoview/PhotoViewAttachment;)Landroid/widget/ImageView;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, p0}, Lcom/transsion/photoview/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
