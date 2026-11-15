.class public final synthetic Lbu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lht5;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbu5;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lbu5;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lur5;)V
    .locals 1

    iget-object v0, p0, Lbu5;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iget p0, p0, Lbu5;->b:I

    invoke-static {v0, p0, p1}, Lgu5;->g(Lcom/airbnb/lottie/LottieAnimationView;ILur5;)V

    return-void
.end method
