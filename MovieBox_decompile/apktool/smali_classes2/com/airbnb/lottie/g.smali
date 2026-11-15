.class public final synthetic Lcom/airbnb/lottie/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/g;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    iput p2, p0, Lcom/airbnb/lottie/g;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    iget v1, p0, Lcom/airbnb/lottie/g;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->c(Lcom/airbnb/lottie/LottieAnimationView;I)Lcom/airbnb/lottie/q0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
