.class public final synthetic Lps5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps5;->b:Lcom/airbnb/lottie/LottieDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lps5;->b:Lcom/airbnb/lottie/LottieDrawable;

    invoke-static {p0}, Lcom/airbnb/lottie/LottieDrawable;->p(Lcom/airbnb/lottie/LottieDrawable;)V

    return-void
.end method
