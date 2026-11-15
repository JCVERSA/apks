.class public final synthetic Ljs5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$a;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljs5;->a:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Ljs5;->b:F

    iput p3, p0, Ljs5;->c:F

    return-void
.end method


# virtual methods
.method public final a(Lur5;)V
    .locals 2

    iget-object v0, p0, Ljs5;->a:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Ljs5;->b:F

    iget p0, p0, Ljs5;->c:F

    invoke-static {v0, v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->f(Lcom/airbnb/lottie/LottieDrawable;FFLur5;)V

    return-void
.end method
