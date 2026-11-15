.class public final Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpw4;


# instance fields
.field public final a:Lpw4;

.field public volatile b:Z


# direct methods
.method public constructor <init>(Lpw4;)V
    .locals 1

    const-string v0, "plainStore"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->a:Lpw4;

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Keystore not worked rarely: "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranCipherStore"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;

    iget v1, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;-><init>(Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcya;

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object p2, Lcya;->a:Lcya;

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->a:Lpw4;

    iput-object p2, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadString$1;->label:I

    invoke-interface {p0, p1, v0}, Lpw4;->c(Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :goto_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcya;->c([B)[B

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/String;

    sget-object p2, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public b(Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->a:Lpw4;

    invoke-interface {p0, p1}, Lpw4;->b(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;

    iget v1, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;-><init>(Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcya;

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object p2, Lcya;->a:Lcya;

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->a:Lpw4;

    iput-object p2, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$loadBytes$1;->label:I

    invoke-interface {p0, p1, v0}, Lpw4;->c(Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :goto_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcya;->c([B)[B

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;[BLwh1;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveBytes$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveBytes$1;

    iget v1, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveBytes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveBytes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveBytes$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveBytes$1;-><init>(Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;Lwh1;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveBytes$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveBytes$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->g()V

    sget-object p3, Lcya;->a:Lcya;

    invoke-virtual {p3, p2}, Lcya;->d([B)[B

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->a:Lpw4;

    iput v3, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveBytes$1;->label:I

    invoke-interface {p0, p1, p2, v0}, Lpw4;->d(Ljava/lang/String;[BLwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public e(Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->a:Lpw4;

    invoke-interface {p0, p1, p2}, Lpw4;->e(Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveString$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveString$1;

    iget v1, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveString$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveString$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveString$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveString$1;-><init>(Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;Lwh1;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveString$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveString$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->g()V

    sget-object p3, Lcya;->a:Lcya;

    sget-object v2, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p2, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcya;->d([B)[B

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->a:Lpw4;

    iput v3, v0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore$saveString$1;->label:I

    invoke-interface {p0, p1, p2, v0}, Lpw4;->d(Ljava/lang/String;[BLwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final g()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    sget-object v2, Luwa;->a:Luwa;

    invoke-virtual {v2}, Luwa;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/security/aosp/hap/base/interstore/TranCipherStore;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v1, "AES"

    invoke-virtual {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v2}, Luwa;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "CBC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "PKCS7Padding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
