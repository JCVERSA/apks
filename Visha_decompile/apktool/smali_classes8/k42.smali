.class public Lk42;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk42;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lk42;->b:Ljava/util/Map;

    sget-object v2, Lyu7;->P1:Ll1;

    const-string v3, "RSASSA-PSS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lh63;->d:Ll1;

    const-string v3, "ED25519"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lh63;->e:Ll1;

    const-string v3, "ED448"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ll1;

    const-string v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v3}, Ll1;-><init>(Ljava/lang/String;)V

    const-string v3, "SHA1WITHRSA"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lyu7;->T1:Ll1;

    const-string v4, "SHA224WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lyu7;->Q1:Ll1;

    const-string v4, "SHA256WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lyu7;->R1:Ll1;

    const-string v4, "SHA384WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lyu7;->S1:Ll1;

    const-string v4, "SHA512WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lep0;->p:Ll1;

    const-string v4, "SHAKE128WITHRSAPSS"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lep0;->q:Ll1;

    const-string v4, "SHAKE256WITHRSAPSS"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lwl1;->n:Ll1;

    const-string v4, "GOST3411WITHGOST3410"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lwl1;->o:Ll1;

    const-string v4, "GOST3411WITHECGOST3410"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lxv8;->i:Ll1;

    const-string v4, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lxv8;->j:Ll1;

    const-string v4, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lz40;->d:Ll1;

    const-string v4, "SHA1WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lz40;->e:Ll1;

    const-string v4, "SHA224WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lz40;->f:Ll1;

    const-string v4, "SHA256WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lz40;->g:Ll1;

    const-string v4, "SHA384WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lz40;->h:Ll1;

    const-string v4, "SHA512WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lz40;->j:Ll1;

    const-string v4, "SHA3-224WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lz40;->k:Ll1;

    const-string v4, "SHA3-256WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lz40;->l:Ll1;

    const-string v4, "SHA3-384WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lz40;->m:Ll1;

    const-string v4, "SHA3-512WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lz40;->i:Ll1;

    const-string v4, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lp43;->s:Ll1;

    const-string v4, "SHA1WITHCVC-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lp43;->t:Ll1;

    const-string v4, "SHA224WITHCVC-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lp43;->u:Ll1;

    const-string v4, "SHA256WITHCVC-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lp43;->v:Ll1;

    const-string v4, "SHA384WITHCVC-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lp43;->w:Ll1;

    const-string v4, "SHA512WITHCVC-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lm55;->a:Ll1;

    const-string v4, "XMSS"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lm55;->b:Ll1;

    const-string v4, "XMSSMT"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lnea;->g:Ll1;

    const-string v4, "RIPEMD128WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lnea;->f:Ll1;

    const-string v4, "RIPEMD160WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lnea;->h:Ll1;

    const-string v4, "RIPEMD256WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ll1;

    const-string v4, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v4}, Ll1;-><init>(Ljava/lang/String;)V

    const-string v4, "MD5WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ll1;

    const-string v4, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v4}, Ll1;-><init>(Ljava/lang/String;)V

    const-string v4, "MD2WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ll1;

    const-string v4, "1.2.840.10040.4.3"

    invoke-direct {v2, v4}, Ll1;-><init>(Ljava/lang/String;)V

    const-string v4, "SHA1WITHDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lwqc;->j5:Ll1;

    const-string v5, "SHA1WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lwqc;->o5:Ll1;

    const-string v5, "SHA224WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lwqc;->r5:Ll1;

    const-string v5, "SHA256WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lwqc;->s5:Ll1;

    const-string v5, "SHA384WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lwqc;->t5:Ll1;

    const-string v5, "SHA512WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lep0;->r:Ll1;

    const-string v5, "SHAKE128WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lep0;->s:Ll1;

    const-string v5, "SHAKE256WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lo47;->k:Ll1;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lo47;->j:Ll1;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcx6;->a0:Ll1;

    const-string v3, "SHA224WITHDSA"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcx6;->b0:Ll1;

    const-string v3, "SHA256WITHDSA"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo47;->i:Ll1;

    const-string v2, "SHA1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->f:Ll1;

    const-string v2, "SHA224"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->c:Ll1;

    const-string v2, "SHA256"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->d:Ll1;

    const-string v2, "SHA384"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->e:Ll1;

    const-string v2, "SHA512"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->i:Ll1;

    const-string v2, "SHA3-224"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->j:Ll1;

    const-string v2, "SHA3-256"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->k:Ll1;

    const-string v2, "SHA3-384"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcx6;->l:Ll1;

    const-string v2, "SHA3-512"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lnea;->c:Ll1;

    const-string v2, "RIPEMD128"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lnea;->b:Ll1;

    const-string v2, "RIPEMD160"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lnea;->d:Ll1;

    const-string v2, "RIPEMD256"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ll1;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lk42;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ll1;->B()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Loa;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Loa;->p()Lx0;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Lup1;->c:Lup1;

    invoke-virtual {v0, p0}, Lp1;->r(Lx0;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object v0

    sget-object v1, Lyu7;->P1:Ll1;

    invoke-virtual {v0, v1}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lgn8;->n(Ljava/lang/Object;)Lgn8;

    move-result-object p0

    invoke-virtual {p0}, Lgn8;->o()Loa;

    move-result-object p1

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object v0

    sget-object v1, Lyu7;->N1:Ll1;

    invoke-virtual {v0, v1}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgn8;->m()Loa;

    move-result-object p0

    invoke-virtual {p1}, Loa;->p()Lx0;

    move-result-object p1

    invoke-static {p1}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object p1

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p1

    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object p0

    invoke-static {p0}, Lk42;->b(Ll1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "WITHRSAANDMGF1"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object p0

    invoke-static {p0}, Lk42;->b(Ll1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "WITHRSAANDMGF1USING"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lk42;->b(Ll1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgn8;->m()Loa;

    move-result-object p0

    invoke-virtual {p0}, Loa;->m()Ll1;

    move-result-object p0

    invoke-static {p0}, Lk42;->b(Ll1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "WITHRSAAND"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p0

    invoke-virtual {p0}, Ll1;->B()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lk42;->a:Ljava/util/Map;

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p0

    invoke-virtual {p0}, Ll1;->B()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
