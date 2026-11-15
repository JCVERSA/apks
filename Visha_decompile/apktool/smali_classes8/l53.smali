.class public Ll53;
.super Lz43;
.source "SourceFile"


# instance fields
.field public final d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lu43;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lz43;-><init>(ZLu43;)V

    invoke-virtual {p2, p1}, Lu43;->f(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Ll53;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public c()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ll53;->d:Ljava/math/BigInteger;

    return-object p0
.end method
