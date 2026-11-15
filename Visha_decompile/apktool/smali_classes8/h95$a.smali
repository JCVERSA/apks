.class public Lh95$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh95;->b(Ljava/security/PrivateKey;)Lch1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final synthetic b:Ljava/security/Signature;

.field public final synthetic c:Loa;

.field public final synthetic d:Lh95;


# direct methods
.method public constructor <init>(Lh95;Ljava/security/Signature;Loa;)V
    .locals 0

    iput-object p1, p0, Lh95$a;->d:Lh95;

    iput-object p2, p0, Lh95$a;->b:Ljava/security/Signature;

    iput-object p3, p0, Lh95$a;->c:Loa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ltt7;->a(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lh95$a;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lh95$a;->a:Ljava/io/OutputStream;

    return-object p0
.end method

.method public b()Loa;
    .locals 0

    iget-object p0, p0, Lh95$a;->c:Loa;

    return-object p0
.end method

.method public c()[B
    .locals 3

    :try_start_0
    iget-object p0, p0, Lh95$a;->b:Ljava/security/Signature;

    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

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
.end method
