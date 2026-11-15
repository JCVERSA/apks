.class public Lcw8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ltc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcw8;->a:Ljava/lang/String;

    iput-object p2, p0, Lcw8;->b:Ltc;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lur5;Lcom/airbnb/lottie/model/layer/a;)Lbg1;
    .locals 0

    new-instance p2, Ldw8;

    invoke-direct {p2, p1, p3, p0}, Ldw8;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcw8;)V

    return-object p2
.end method

.method public b()Ltc;
    .locals 0

    iget-object p0, p0, Lcw8;->b:Ltc;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcw8;->a:Ljava/lang/String;

    return-object p0
.end method
