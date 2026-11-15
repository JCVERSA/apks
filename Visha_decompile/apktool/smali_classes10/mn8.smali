.class public abstract Lmn8;
.super Ldj;
.source "SourceFile"


# instance fields
.field public final c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

.field public final d:I


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/rainbow/b;)V
    .locals 0

    invoke-direct {p0, p1}, Ldj;-><init>(Z)V

    iput-object p2, p0, Lmn8;->c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->d()I

    move-result p1

    iput p1, p0, Lmn8;->d:I

    return-void
.end method


# virtual methods
.method public b()Lorg/bouncycastle/pqc/crypto/rainbow/b;
    .locals 0

    iget-object p0, p0, Lmn8;->c:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    return-object p0
.end method
