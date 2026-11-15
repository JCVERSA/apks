.class public final synthetic Lqt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldt5;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt5;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lqt5;->b:I

    iput-boolean p3, p0, Lqt5;->c:Z

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lqt5;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p0, Lqt5;->b:I

    iget-boolean p0, p0, Lqt5;->c:Z

    check-cast p1, Lur5;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/widgets/LottieUtils;->e(Lcom/airbnb/lottie/LottieAnimationView;IZLur5;)V

    return-void
.end method
