.class public final synthetic Lnt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lur5;

.field public final synthetic c:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lur5;Lcom/airbnb/lottie/LottieAnimationView;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnt5;->b:Lur5;

    iput-object p2, p0, Lnt5;->c:Lcom/airbnb/lottie/LottieAnimationView;

    iput p3, p0, Lnt5;->d:I

    iput-boolean p4, p0, Lnt5;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lnt5;->b:Lur5;

    iget-object v1, p0, Lnt5;->c:Lcom/airbnb/lottie/LottieAnimationView;

    iget v2, p0, Lnt5;->d:I

    iget-boolean p0, p0, Lnt5;->e:Z

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/widgets/LottieUtils;->i(Lur5;Lcom/airbnb/lottie/LottieAnimationView;IZ)V

    return-void
.end method
