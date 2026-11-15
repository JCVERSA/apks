.class public final synthetic Lpt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic c:I

.field public final synthetic d:Lur5;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;ILur5;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpt5;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lpt5;->c:I

    iput-object p3, p0, Lpt5;->d:Lur5;

    iput-boolean p4, p0, Lpt5;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lpt5;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p0, Lpt5;->c:I

    iget-object v2, p0, Lpt5;->d:Lur5;

    iget-boolean p0, p0, Lpt5;->e:Z

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/widgets/LottieUtils;->j(Lcom/airbnb/lottie/LottieAnimationView;ILur5;Z)V

    return-void
.end method
