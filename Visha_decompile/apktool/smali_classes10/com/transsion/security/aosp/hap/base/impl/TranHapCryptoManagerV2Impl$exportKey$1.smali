.class final Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->exportKey(Ljava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "",
        "<anonymous>",
        "(Lnk1;)[B"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.security.aosp.hap.base.impl.TranHapCryptoManagerV2Impl$exportKey$1"
    f = "TranHapCryptoManagerV2Impl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $alias:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;


# direct methods
.method public constructor <init>(Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;Ljava/lang/String;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;",
            "Ljava/lang/String;",
            "Lwh1<",
            "-",
            "Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;->this$0:Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;

    iput-object p2, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;->$alias:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;

    iget-object v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;->this$0:Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;->$alias:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;-><init>(Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;Ljava/lang/String;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;->this$0:Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;

    invoke-virtual {p1}, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl;->d()Low4;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/security/aosp/hap/base/impl/TranHapCryptoManagerV2Impl$exportKey$1;->$alias:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Low4;->a(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    instance-of p1, p0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
