.class public Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;->c([BII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;[BII)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;->d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;->a:[B

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;->b:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;->d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;->a(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;->a:[B

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;->b:I

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;->c:I

    invoke-virtual {v0, v1, v2, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "unable to read random source"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;->a()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
