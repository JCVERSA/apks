.class public Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfz4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;->get(I)Lab3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:I

.field public final synthetic c:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$c;->c:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$c;->a:I

    return-void
.end method


# virtual methods
.method public a(J)[B
    .locals 5

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$c;->a:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$c;->c:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;

    sub-int v4, v0, v2

    invoke-static {v3, v1, v2, v4}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;->b(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;[BII)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    add-int/2addr v2, v3

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->d(J)V

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "unable to fully read random source"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()[B
    .locals 2

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$c;->a(J)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "initial entropy fetch interrupted"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$c;->b:I

    return p0
.end method
