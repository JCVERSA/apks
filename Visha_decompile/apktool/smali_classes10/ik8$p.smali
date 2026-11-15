.class public Lik8$p;
.super Lik8$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lik8$u;-><init>(Lik8$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lik8$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lik8$p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1a;Ljava/lang/Object;)Ldj;
    .locals 0

    invoke-virtual {p1}, Ls1a;->p()Lp1;

    move-result-object p0

    invoke-static {p0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object p0

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p1

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p1

    invoke-static {p1}, Lslb;->A(Ll1;)Lorg/bouncycastle/pqc/crypto/rainbow/b;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/rainbow/d;

    invoke-direct {p2, p1, p0}, Lorg/bouncycastle/pqc/crypto/rainbow/d;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;[B)V

    return-object p2
.end method
