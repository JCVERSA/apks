.class public Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$a;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$a;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;->a:Ljava/io/InputStream;

    return-void
.end method

.method public static synthetic a(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;->a:Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic b(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;[BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;->c([BII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final c([BII)I
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$b;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;[BII)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public get(I)Lab3;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$c;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i$c;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$i;I)V

    return-object v0
.end method
