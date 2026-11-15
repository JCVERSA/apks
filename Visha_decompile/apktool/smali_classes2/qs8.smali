.class public Lqs8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ldc;

.field public final c:Ldc;

.field public final d:Lrc;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ldc;Ldc;Lrc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqs8;->a:Ljava/lang/String;

    iput-object p2, p0, Lqs8;->b:Ldc;

    iput-object p3, p0, Lqs8;->c:Ldc;

    iput-object p4, p0, Lqs8;->d:Lrc;

    iput-boolean p5, p0, Lqs8;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lur5;Lcom/airbnb/lottie/model/layer/a;)Lbg1;
    .locals 0

    new-instance p2, Lrs8;

    invoke-direct {p2, p1, p3, p0}, Lrs8;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lqs8;)V

    return-object p2
.end method

.method public b()Ldc;
    .locals 0

    iget-object p0, p0, Lqs8;->b:Ldc;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqs8;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ldc;
    .locals 0

    iget-object p0, p0, Lqs8;->c:Ldc;

    return-object p0
.end method

.method public e()Lrc;
    .locals 0

    iget-object p0, p0, Lqs8;->d:Lrc;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lqs8;->e:Z

    return p0
.end method
