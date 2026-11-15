.class public final Lorg/bouncycastle/jcajce/provider/drbg/DRBG$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->f(Z)Ljava/security/SecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lab3;
    .locals 0

    new-instance p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$h;-><init>(I)V

    return-object p0
.end method
