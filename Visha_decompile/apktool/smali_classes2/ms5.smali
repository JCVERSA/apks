.class public final synthetic Lms5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$a;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms5;->a:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lms5;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lur5;)V
    .locals 1

    iget-object v0, p0, Lms5;->a:Lcom/airbnb/lottie/LottieDrawable;

    iget p0, p0, Lms5;->b:I

    invoke-static {v0, p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->i(Lcom/airbnb/lottie/LottieDrawable;ILur5;)V

    return-void
.end method
