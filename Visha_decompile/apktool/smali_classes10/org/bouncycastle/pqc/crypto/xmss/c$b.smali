.class public Lorg/bouncycastle/pqc/crypto/xmss/c$b;
.super Lorg/bouncycastle/pqc/crypto/xmss/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;-><init>(I)V

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->e:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->f:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->g:I

    return-void
.end method

.method public static synthetic i(Lorg/bouncycastle/pqc/crypto/xmss/c$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->e:I

    return p0
.end method

.method public static synthetic j(Lorg/bouncycastle/pqc/crypto/xmss/c$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->f:I

    return p0
.end method

.method public static synthetic k(Lorg/bouncycastle/pqc/crypto/xmss/c$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->g:I

    return p0
.end method


# virtual methods
.method public bridge synthetic e()Lorg/bouncycastle/pqc/crypto/xmss/e$a;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->m()Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object p0

    return-object p0
.end method

.method public l()Lorg/bouncycastle/pqc/crypto/xmss/e;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/c;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/c$b;Lorg/bouncycastle/pqc/crypto/xmss/c$a;)V

    return-object v0
.end method

.method public m()Lorg/bouncycastle/pqc/crypto/xmss/c$b;
    .locals 0

    return-object p0
.end method

.method public n(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->f:I

    return-object p0
.end method

.method public o(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->g:I

    return-object p0
.end method

.method public p(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->e:I

    return-object p0
.end method
