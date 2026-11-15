.class public Lqaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llp8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;
    .locals 0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lplb;->f(Landroid/content/Context;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->REDUCED_MOTION:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->STANDARD_MOTION:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    return-object p0
.end method
