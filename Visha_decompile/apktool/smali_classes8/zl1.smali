.class public abstract Lzl1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzl1$b;,
        Lzl1$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/security/Permission;

.field public static final c:Ljava/security/Permission;

.field public static final d:Ljava/security/Permission;

.field public static final e:Ljava/security/Permission;

.field public static final f:Ljava/lang/ThreadLocal;

.field public static final g:Ljava/util/Map;

.field public static final h:Lda9;

.field public static final i:Lyl1;

.field public static final j:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final k:Z

.field public static final l:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-class v0, Lzl1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lzl1;->a:Ljava/util/logging/Logger;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "globalConfig"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzl1;->b:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "threadLocalConfig"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzl1;->c:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "defaultRandomConfig"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzl1;->d:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "constraints"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzl1;->e:Ljava/security/Permission;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lzl1;->f:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lzl1;->g:Ljava/util/Map;

    new-instance v0, Lzl1$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzl1$c;-><init>(Lzl1$a;)V

    sput-object v0, Lzl1;->h:Lda9;

    new-instance v0, Lzl1$a;

    invoke-direct {v0}, Lzl1$a;-><init>()V

    sput-object v0, Lzl1;->i:Lyl1;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lzl1;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lzl1;->l:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lhr1;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "fca682ce8e12caba26efccf7110e526db078b05edecbcd1eb4a208f3ae1617ae01f35b91a47e6df63413c5e12ed0899bcd132acd50d99151bdc43ee737592e17"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "962eddcc369cba8ebb260ee6b6a126d9346e38c5"

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "678471b27a9cf44ee91a49c5147db1a9aaf244f05a434d6486931d2d14271b9e35030b71fd73da179069b32e2935630e1c2062354d0da20a6c416e50be794ca4"

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Llr1;

    const-string v8, "b869c82b35d70e1b1ff91b28e37a62ecdc34409b"

    invoke-static {v8}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v9, 0x7b

    invoke-direct {v7, v8, v9}, Llr1;-><init>([BI)V

    invoke-direct {v2, v3, v4, v6, v7}, Lhr1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Llr1;)V

    new-instance v3, Lhr1;

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "e9e642599d355f37c97ffd3567120b8e25c9cd43e927b3a9670fbec5d890141922d2c3b3ad2480093799869d1e846aab49fab0ad26d2ce6a22219d470bce7d777d4a21fbe9c270b57f607002f3cef8393694cf45ee3688c11a8c56ab127a3daf"

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "9cdbd84c9f1ac2f38d0f80f42ab952e7338bf511"

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "30470ad5a005fb14ce2d9dcd87e38bc7d1b1c5facbaecbe95f190aa7a31d23c4dbbcbe06174544401a5b2c020965d8c2bd2171d3668445771f74ba084d2029d83c1c158547f3a9f1a2715be23d51ae4d3e5a1f6a7064f316933a346d3f529252"

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Llr1;

    const-string v9, "77d0f8c4dad15eb8c4f2f8d6726cefd96d5bb399"

    invoke-static {v9}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v9

    const/16 v10, 0x107

    invoke-direct {v8, v9, v10}, Llr1;-><init>([BI)V

    invoke-direct {v3, v4, v6, v7, v8}, Lhr1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Llr1;)V

    new-instance v4, Lhr1;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "fd7f53811d75122952df4a9c2eece4e7f611b7523cef4400c31e3f80b6512669455d402251fb593d8d58fabfc5f5ba30f6cb9b556cd7813b801d346ff26660b76b9950a5a49f9fe8047b1022c24fbba9d7feb7c61bf83b57e7c6a8a6150f04fb83f6d3c51ec3023554135a169132f675f3ae2b61d72aeff22203199dd14801c7"

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "9760508f15230bccb292b982a2eb840bf0581cf5"

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "f7e1a085d69b3ddecbbcab5c36b857b97994afbbfa3aea82f9574c0b3d0782675159578ebad4594fe67107108180b449167123e84c281613b7cf09328cc8a6e13c167a8b547c8d28e0a3ae1e2bb3a675916ea37f0bfa213562f1fb627a01243bcca4f1bea8519089a883dfe15ae59f06928b665e807b552564014c3bfecf492a"

    invoke-direct {v8, v9, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Llr1;

    const-string v10, "8d5155894229d5e689ee01e6018a237e2cae64cd"

    invoke-static {v10}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v10

    const/16 v11, 0x5c

    invoke-direct {v9, v10, v11}, Llr1;-><init>([BI)V

    invoke-direct {v4, v6, v7, v8, v9}, Lhr1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Llr1;)V

    new-instance v6, Lhr1;

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "95475cf5d93e596c3fcd1d902add02f427f5f3c7210313bb45fb4d5bb2e5fe1cbd678cd4bbdd84c9836be1f31c0777725aeb6c2fc38b85f48076fa76bcd8146cc89a6fb2f706dd719898c2083dc8d896f84062e2c9c94d137b054a8d8096adb8d51952398eeca852a0af12df83e475aa65d4ec0c38a9560d5661186ff98b9fc9eb60eee8b030376b236bc73be3acdbd74fd61c1d2475fa3077b8f080467881ff7e1ca56fee066d79506ade51edbb5443a563927dbc4ba520086746175c8885925ebc64c6147906773496990cb714ec667304e261faee33b3cbdf008e0c3fa90650d97d3909c9275bf4ac86ffcb3d03e6dfc8ada5934242dd6d3bcca2a406cb0b"

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "f8183668ba5fc5bb06b5981e6d8b795d30b8978d43ca0ec572e37e09939a9773"

    invoke-direct {v8, v9, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "42debb9da5b3d88cc956e08787ec3f3a09bba5f48b889a74aaf53174aa0fbe7e3c5b8fcd7a53bef563b0e98560328960a9517f4014d3325fc7962bf1e049370d76d1314a76137e792f3f0db859d095e4a5b932024f079ecf2ef09c797452b0770e1350782ed57ddf794979dcef23cb96f183061965c4ebc93c9c71c56b925955a75f94cccf1449ac43d586d0beee43251b0b2287349d68de0d144403f13e802f4146d882e057af19b6f6275c6676c8fa0e3ca2713a3257fd1b27d0639f695e347d8d1cf9ac819a26ca9b04cb0eb9b7b035988d15bbac65212a55239cfc7e58fae38d7250ab9991ffbc97134025fe8ce04c4399ad96569be91a546f4978693c7a"

    invoke-direct {v9, v10, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Llr1;

    const-string v10, "b0b4417601b59cbc9d8ac8f935cadaec4f5fbb2f23785609ae466748d9b5a536"

    invoke-static {v10}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v10

    const/16 v11, 0x1f1

    invoke-direct {v5, v10, v11}, Llr1;-><init>([BI)V

    invoke-direct {v6, v7, v8, v9, v5}, Lhr1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Llr1;)V

    sget-object v5, Lzl1$b;->e:Lzl1$b;

    filled-new-array {v2, v3, v4, v6}, [Lhr1;

    move-result-object v7

    invoke-static {v5, v7}, Lzl1;->e(Lzl1$b;[Ljava/lang/Object;)V

    sget-object v5, Lzl1$b;->d:Lzl1$b;

    invoke-static {v2}, Lzl1;->g(Lhr1;)Lnq1;

    move-result-object v2

    invoke-static {v3}, Lzl1;->g(Lhr1;)Lnq1;

    move-result-object v3

    invoke-static {v4}, Lzl1;->g(Lhr1;)Lnq1;

    move-result-object v4

    invoke-static {v6}, Lzl1;->g(Lhr1;)Lnq1;

    move-result-object v6

    filled-new-array {v2, v3, v4, v6}, [Lnq1;

    move-result-object v2

    invoke-static {v5, v2}, Lzl1;->e(Lzl1$b;[Ljava/lang/Object;)V

    invoke-static {}, Lzl1;->c()Lyl1;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lzl1;->k:Z

    return-void
.end method

.method public static a(Lxl1;)V
    .locals 1

    sget-object v0, Lzl1;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl1;

    invoke-interface {v0, p0}, Lyl1;->a(Lxl1;)V

    return-void
.end method

.method public static b(I)I
    .locals 1

    const/16 v0, 0x400

    if-le p0, v0, :cond_3

    const/16 v0, 0x800

    if-gt p0, v0, :cond_0

    const/16 p0, 0xe0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc00

    if-gt p0, v0, :cond_1

    const/16 p0, 0x100

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e00

    if-gt p0, v0, :cond_2

    const/16 p0, 0x180

    goto :goto_0

    :cond_2
    const/16 p0, 0x200

    goto :goto_0

    :cond_3
    const/16 p0, 0xa0

    :goto_0
    return p0
.end method

.method public static c()Lyl1;
    .locals 1

    sget-object v0, Lzl1;->i:Lyl1;

    return-object v0
.end method

.method public static d()Ljava/security/SecureRandom;
    .locals 3

    sget-object v0, Lzl1;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lzl1;->h:Lda9;

    invoke-static {v0, v1, v2}, Lwk5;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lda9;

    invoke-interface {v0}, Lda9;->get()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static varargs e(Lzl1$b;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lzl1$b;->b(Lzl1$b;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lzl1;->f(Lzl1$b;[Ljava/lang/Object;)V

    sget-object v0, Lzl1;->g:Ljava/util/Map;

    invoke-static {p0}, Lzl1$b;->a(Lzl1$b;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad property value passed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lzl1$b;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lzl1;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lzl1$b;->a(Lzl1$b;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g(Lhr1;)Lnq1;
    .locals 9

    invoke-virtual {p0}, Lhr1;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lzl1;->b(I)I

    move-result v5

    new-instance v0, Lnq1;

    invoke-virtual {p0}, Lhr1;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lhr1;->a()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lhr1;->c()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v8, Lrq1;

    invoke-virtual {p0}, Lhr1;->d()Llr1;

    move-result-object v1

    invoke-virtual {v1}, Llr1;->b()[B

    move-result-object v1

    invoke-virtual {p0}, Lhr1;->d()Llr1;

    move-result-object p0

    invoke-virtual {p0}, Llr1;->a()I

    move-result p0

    invoke-direct {v8, v1, p0}, Lrq1;-><init>([BI)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lnq1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lrq1;)V

    return-object v0
.end method
