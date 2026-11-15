.class public final synthetic Lrr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrr5;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lrr5;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrr5;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lrr5;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->a(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Ljt5;

    move-result-object p0

    return-object p0
.end method
