.class public final Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Low4;


# instance fields
.field public final a:Lpw4;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lpw4;)V
    .locals 1

    const-string v0, "mStore"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite;->a:Lpw4;

    const-string p1, "TranCryptoKeyStoreLite"

    iput-object p1, p0, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .locals 1

    const-string p2, "alias"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite$getEntry$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite$getEntry$1;-><init>(Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite;Ljava/lang/String;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {v0, p2, p0, v0}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/KeyStore$Entry;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Llxa;
    .locals 2

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite$getKey$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite$getKey$1;-><init>(Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite;Ljava/lang/String;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llxa;

    return-object p0
.end method

.method public final c(Ljava/lang/String;ILjava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 7

    const-string v0, "alias"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protParam"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {p4}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->c()Ljava/lang/String;

    move-result-object p4

    const-string v0, "BC"

    invoke-static {p4, v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v1, Ljava/security/KeyStore$PasswordProtection;

    iget-object v2, p0, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "this as java.lang.String).toCharArray()"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {p4, p1, p3, v1}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    const-string p3, "keyStore"

    invoke-static {p4, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p4, p3, v0}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string p3, "baos.toByteArray()"

    invoke-static {v3, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Llxa;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    move v2, p2

    invoke-direct/range {v1 .. v6}, Llxa;-><init>(I[B[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p3}, Llxa;->c()[B

    move-result-object p2

    new-instance p3, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite$saveKey$1;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite$saveKey$1;-><init>(Lcom/transsion/security/aosp/hap/base/auth/impl/TranHapKeyStoreLite;Ljava/lang/String;[BLwh1;)V

    const/4 p0, 0x1

    invoke-static {v0, p3, p0, v0}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
