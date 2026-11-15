.class public Lcp8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ltc;

.field public final c:Ltc;

.field public final d:Ldc;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltc;Ltc;Ldc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcp8;->a:Ljava/lang/String;

    iput-object p2, p0, Lcp8;->b:Ltc;

    iput-object p3, p0, Lcp8;->c:Ltc;

    iput-object p4, p0, Lcp8;->d:Ldc;

    iput-boolean p5, p0, Lcp8;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lur5;Lcom/airbnb/lottie/model/layer/a;)Lbg1;
    .locals 0

    new-instance p2, Lbp8;

    invoke-direct {p2, p1, p3, p0}, Lbp8;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcp8;)V

    return-object p2
.end method

.method public b()Ldc;
    .locals 0

    iget-object p0, p0, Lcp8;->d:Ldc;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcp8;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ltc;
    .locals 0

    iget-object p0, p0, Lcp8;->b:Ltc;

    return-object p0
.end method

.method public e()Ltc;
    .locals 0

    iget-object p0, p0, Lcp8;->c:Ltc;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcp8;->e:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcp8;->b:Ltc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcp8;->c:Ltc;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
