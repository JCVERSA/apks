.class public Lna4;
.super Lha4;
.source "SourceFile"


# instance fields
.field public d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lla4;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lha4;-><init>(ZLla4;)V

    iput-object p1, p0, Lna4;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public c()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lna4;->d:Ljava/math/BigInteger;

    return-object p0
.end method
