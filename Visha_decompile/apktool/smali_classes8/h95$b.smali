.class public Lh95$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh95;->c(Lorg/bouncycastle/jcajce/CompositePrivateKey;)Lch1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final synthetic b:Ljava/io/OutputStream;

.field public final synthetic c:[Ljava/security/Signature;

.field public final synthetic d:Lh95;


# direct methods
.method public constructor <init>(Lh95;Ljava/io/OutputStream;[Ljava/security/Signature;)V
    .locals 0

    iput-object p1, p0, Lh95$b;->d:Lh95;

    iput-object p2, p0, Lh95$b;->b:Ljava/io/OutputStream;

    iput-object p3, p0, Lh95$b;->c:[Ljava/security/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh95$b;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lh95$b;->a:Ljava/io/OutputStream;

    return-object p0
.end method

.method public b()Loa;
    .locals 0

    iget-object p0, p0, Lh95$b;->d:Lh95;

    invoke-static {p0}, Lh95;->a(Lh95;)Loa;

    move-result-object p0

    return-object p0
.end method

.method public c()[B
    .locals 4

    :try_start_0
    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lh95$b;->c:[Ljava/security/Signature;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    new-instance v2, Lnp1;

    iget-object v3, p0, Lh95$b;->c:[Ljava/security/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lnp1;-><init>([B)V

    invoke-virtual {v0, v2}, Ly0;->a(Lx0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception obtaining signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception encoding signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
