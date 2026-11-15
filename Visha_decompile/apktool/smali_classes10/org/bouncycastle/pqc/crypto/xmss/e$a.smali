.class public abstract Lorg/bouncycastle/pqc/crypto/xmss/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->c:J

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->d:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->a:I

    return-void
.end method

.method public static synthetic a(Lorg/bouncycastle/pqc/crypto/xmss/e$a;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->b:I

    return p0
.end method

.method public static synthetic b(Lorg/bouncycastle/pqc/crypto/xmss/e$a;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->c:J

    return-wide v0
.end method

.method public static synthetic c(Lorg/bouncycastle/pqc/crypto/xmss/e$a;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->a:I

    return p0
.end method

.method public static synthetic d(Lorg/bouncycastle/pqc/crypto/xmss/e$a;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->d:I

    return p0
.end method


# virtual methods
.method public abstract e()Lorg/bouncycastle/pqc/crypto/xmss/e$a;
.end method

.method public f(I)Lorg/bouncycastle/pqc/crypto/xmss/e$a;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->d:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->e()Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object p0

    return-object p0
.end method

.method public g(I)Lorg/bouncycastle/pqc/crypto/xmss/e$a;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->b:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->e()Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object p0

    return-object p0
.end method

.method public h(J)Lorg/bouncycastle/pqc/crypto/xmss/e$a;
    .locals 0

    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->c:J

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->e()Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object p0

    return-object p0
.end method
