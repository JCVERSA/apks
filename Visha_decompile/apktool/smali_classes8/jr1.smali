.class public Ljr1;
.super Lfr1;
.source "SourceFile"


# static fields
.field public static final e:Ljava/math/BigInteger;

.field public static final f:Ljava/math/BigInteger;


# instance fields
.field public d:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljr1;->e:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljr1;->f:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lhr1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lfr1;-><init>(ZLhr1;)V

    invoke-virtual {p0, p1, p2}, Ljr1;->d(Ljava/math/BigInteger;Lhr1;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Ljr1;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public c()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ljr1;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final d(Ljava/math/BigInteger;Lhr1;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p2, :cond_1

    sget-object p0, Ljr1;->f:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Lhr1;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_0

    sget-object p0, Ljr1;->e:Ljava/math/BigInteger;

    invoke-virtual {p2}, Lhr1;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lhr1;->b()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "y value does not appear to be in correct group"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p1
.end method
