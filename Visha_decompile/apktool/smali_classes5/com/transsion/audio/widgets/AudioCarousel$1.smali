.class Lcom/transsion/audio/widgets/AudioCarousel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/AudioCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioCarousel;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/AudioCarousel$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioCarousel$1;->lambda$run$0(F)V

    return-void
.end method

.method private synthetic lambda$run$0(F)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioCarousel;->e(Lcom/transsion/audio/widgets/AudioCarousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object p0

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioCarousel;->e(Lcom/transsion/audio/widgets/AudioCarousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioCarousel;->i(Lcom/transsion/audio/widgets/AudioCarousel;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioCarousel;->c(Lcom/transsion/audio/widgets/AudioCarousel;)Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->d(Lcom/transsion/audio/widgets/AudioCarousel;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->onNewItem(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v0}, Lcom/transsion/audio/widgets/AudioCarousel;->e(Lcom/transsion/audio/widgets/AudioCarousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->g(Lcom/transsion/audio/widgets/AudioCarousel;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->h(Lcom/transsion/audio/widgets/AudioCarousel;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->d(Lcom/transsion/audio/widgets/AudioCarousel;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v2}, Lcom/transsion/audio/widgets/AudioCarousel;->c(Lcom/transsion/audio/widgets/AudioCarousel;)Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    const-string v1, "Carousel"

    const-string v2, "touchAnimateTo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->b(Lcom/transsion/audio/widgets/AudioCarousel;)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->d(Lcom/transsion/audio/widgets/AudioCarousel;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->f(Lcom/transsion/audio/widgets/AudioCarousel;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v2}, Lcom/transsion/audio/widgets/AudioCarousel;->d(Lcom/transsion/audio/widgets/AudioCarousel;)I

    move-result v2

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->d(Lcom/transsion/audio/widgets/AudioCarousel;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v2}, Lcom/transsion/audio/widgets/AudioCarousel;->c(Lcom/transsion/audio/widgets/AudioCarousel;)Lcom/transsion/audio/widgets/AudioCarousel$Adapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/audio/widgets/AudioCarousel$Adapter;->count()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->f(Lcom/transsion/audio/widgets/AudioCarousel;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v2}, Lcom/transsion/audio/widgets/AudioCarousel;->d(Lcom/transsion/audio/widgets/AudioCarousel;)I

    move-result v2

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioCarousel$1;->this$0:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {v1}, Lcom/transsion/audio/widgets/AudioCarousel;->e(Lcom/transsion/audio/widgets/AudioCarousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v1

    new-instance v2, Lcom/transsion/audio/widgets/a;

    invoke-direct {v2, p0, v0}, Lcom/transsion/audio/widgets/a;-><init>(Lcom/transsion/audio/widgets/AudioCarousel$1;F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
