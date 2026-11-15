.class public Lhw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ltc;

.field public final c:Lic;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltc;Lic;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhw0;->a:Ljava/lang/String;

    iput-object p2, p0, Lhw0;->b:Ltc;

    iput-object p3, p0, Lhw0;->c:Lic;

    iput-boolean p4, p0, Lhw0;->d:Z

    iput-boolean p5, p0, Lhw0;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lur5;Lcom/airbnb/lottie/model/layer/a;)Lbg1;
    .locals 0

    new-instance p2, Lu83;

    invoke-direct {p2, p1, p3, p0}, Lu83;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lhw0;)V

    return-object p2
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhw0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ltc;
    .locals 0

    iget-object p0, p0, Lhw0;->b:Ltc;

    return-object p0
.end method

.method public d()Lic;
    .locals 0

    iget-object p0, p0, Lhw0;->c:Lic;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lhw0;->e:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lhw0;->d:Z

    return p0
.end method
