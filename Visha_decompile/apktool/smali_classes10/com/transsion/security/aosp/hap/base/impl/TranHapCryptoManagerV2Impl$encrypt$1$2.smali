.class final Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ly74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->encrypt(Ljava/lang/String;[B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ly74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\n\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "",
        "inb",
        "",
        "st",
        "end",
        "aad",
        "iv",
        "Lzfb;",
        "invoke",
        "([BII[B[B)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $cipher:Ljavax/crypto/Cipher;

.field final synthetic $keyEntry:Ljava/security/KeyStore$Entry;

.field final synthetic $text:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/crypto/Cipher;Ljava/security/KeyStore$Entry;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/Cipher;",
            "Ljava/security/KeyStore$Entry;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "[B>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;->$cipher:Ljavax/crypto/Cipher;

    iput-object p2, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;->$keyEntry:Ljava/security/KeyStore$Entry;

    iput-object p3, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;->$text:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [B

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p4, [B

    check-cast p5, [B

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;->invoke([BII[B[B)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke([BII[B[B)V
    .locals 4

    const-string v0, "inb"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aad"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iv"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;->$cipher:Ljavax/crypto/Cipher;

    .line 3
    iget-object v1, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;->$keyEntry:Ljava/security/KeyStore$Entry;

    check-cast v1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 4
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-direct {v2, v3, p5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 p5, 0x1

    .line 5
    invoke-virtual {v0, p5, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 6
    iget-object p5, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;->$cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p5, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 7
    iget-object p4, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;->$text:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$encrypt$1$2;->$cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    iput-object p0, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
