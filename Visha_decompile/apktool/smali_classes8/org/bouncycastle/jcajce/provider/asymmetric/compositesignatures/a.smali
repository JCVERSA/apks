.class public Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;
.super Lza0;
.source "SourceFile"


# static fields
.field public static final a:Loa;

.field public static final b:Loa;

.field public static final c:Loa;

.field public static final d:Loa;

.field public static final e:Loa;

.field public static final f:Loa;

.field public static final g:Loa;

.field public static final h:Loa;

.field public static final i:Loa;

.field public static final j:Loa;

.field public static final k:Loa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Loa;

    sget-object v1, Lb40;->u1:Ll1;

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->a:Loa;

    new-instance v0, Loa;

    sget-object v1, Lb40;->v1:Ll1;

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->b:Loa;

    new-instance v0, Loa;

    sget-object v1, Lb40;->w1:Ll1;

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->c:Loa;

    new-instance v0, Loa;

    sget-object v1, Lb40;->r1:Ll1;

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->d:Loa;

    new-instance v0, Loa;

    sget-object v1, Lg63;->d:Ll1;

    invoke-direct {v0, v1}, Loa;-><init>(Ll1;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->e:Loa;

    new-instance v0, Loa;

    sget-object v1, Lwqc;->m5:Ll1;

    new-instance v2, Loqc;

    sget-object v3, Lsx8;->H:Ll1;

    invoke-direct {v2, v3}, Loqc;-><init>(Ll1;)V

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->f:Loa;

    new-instance v0, Loa;

    new-instance v2, Loqc;

    sget-object v3, Lnea;->u:Ll1;

    invoke-direct {v2, v3}, Loqc;-><init>(Ll1;)V

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->g:Loa;

    new-instance v0, Loa;

    sget-object v2, Lyu7;->F1:Ll1;

    invoke-direct {v0, v2}, Loa;-><init>(Ll1;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->h:Loa;

    new-instance v0, Loa;

    sget-object v2, Lg63;->e:Ll1;

    invoke-direct {v0, v2}, Loa;-><init>(Ll1;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->i:Loa;

    new-instance v0, Loa;

    new-instance v2, Loqc;

    sget-object v3, Lsx8;->A:Ll1;

    invoke-direct {v2, v3}, Loqc;-><init>(Ll1;)V

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->j:Loa;

    new-instance v0, Loa;

    new-instance v2, Loqc;

    sget-object v3, Lnea;->y:Ll1;

    invoke-direct {v2, v3}, Loqc;-><init>(Ll1;)V

    invoke-direct {v0, v1, v2}, Loa;-><init>(Ll1;Lx0;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->k:Loa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lza0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1a;)Ljava/security/PublicKey;
    .locals 7

    invoke-virtual {p1}, Ls1a;->o()Ls0;

    move-result-object v0

    invoke-virtual {v0}, Ls0;->x()[B

    move-result-object v0

    invoke-static {v0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v0

    invoke-virtual {p1}, Ls1a;->m()Loa;

    move-result-object p1

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->c(Ll1;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ls1;->size()I

    move-result v2

    new-array v2, v2, [Ls0;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ls1;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Ls1;->A(I)Lx0;

    move-result-object v5

    instance-of v5, v5, Lwp1;

    if-eqz v5, :cond_0

    new-instance v5, Lnp1;

    invoke-virtual {v0, v4}, Ls1;->A(I)Lx0;

    move-result-object v6

    check-cast v6, Lwp1;

    invoke-virtual {v6}, Lm1;->z()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lnp1;-><init>([B)V

    aput-object v5, v2, v4

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-virtual {v0, v4}, Ls1;->A(I)Lx0;

    move-result-object v5

    check-cast v5, Lnp1;

    aput-object v5, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->d(Ll1;[Ls0;)[Ljava/security/spec/X509EncodedKeySpec;

    move-result-object p0

    invoke-virtual {v0}, Ls1;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/PublicKey;

    :goto_2
    invoke-virtual {v0}, Ls1;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/KeyFactory;

    aget-object v5, p0, v3

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Lorg/bouncycastle/jcajce/CompositePublicKey;

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/jcajce/CompositePublicKey;-><init>(Ll1;[Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lqe3;->c(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public b(Log8;)Ljava/security/PrivateKey;
    .locals 5

    invoke-virtual {p1}, Log8;->u()Lx0;

    move-result-object v0

    invoke-static {v0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v0

    invoke-virtual {p1}, Log8;->p()Loa;

    move-result-object p1

    invoke-virtual {p1}, Loa;->m()Ll1;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->c(Ll1;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Ls1;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/PrivateKey;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ls1;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0, v2}, Ls1;->A(I)Lx0;

    move-result-object v4

    invoke-static {v4}, Log8;->n(Ljava/lang/Object;)Log8;

    move-result-object v4

    invoke-virtual {v4}, Lj1;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/KeyFactory;

    invoke-virtual {v4, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/bouncycastle/jcajce/CompositePrivateKey;

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jcajce/CompositePrivateKey;-><init>(Ll1;[Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lqe3;->c(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final c(Ll1;)Ljava/util/List;
    .locals 5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a$a;->a:[I

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const-string v1, "Ed25519"

    const-string v2, "ECDSA"

    const-string v3, "Falcon"

    const-string v4, "Dilithium"

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create KeyFactories. Unsupported algorithm identifier."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "RSA"

    :goto_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Ed448"

    goto :goto_2

    :pswitch_5
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :goto_3
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "BC"

    invoke-static {p1, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ll1;[Ls0;)[Ljava/security/spec/X509EncodedKeySpec;
    .locals 5

    array-length p0, p2

    new-array p0, p0, [Ljava/security/spec/X509EncodedKeySpec;

    array-length v0, p2

    new-array v0, v0, [Ls1a;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a$a;->a:[I

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create key specs. Unsupported algorithm identifier."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->d:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->g:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->d:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->f:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->d:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->e:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->c:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->k:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto/16 :goto_0

    :pswitch_4
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->c:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->j:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->b:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->g:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto/16 :goto_0

    :pswitch_6
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->b:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->f:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto/16 :goto_0

    :pswitch_7
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->a:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->g:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto/16 :goto_0

    :pswitch_8
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->a:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->f:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_9
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->b:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->h:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_a
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->a:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->h:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_b
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->c:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->i:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_c
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->b:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->e:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    goto :goto_0

    :pswitch_d
    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->a:Loa;

    aget-object v4, p2, v2

    invoke-direct {p1, v3, v4}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v2

    new-instance p1, Ls1a;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->e:Loa;

    aget-object p2, p2, v1

    invoke-direct {p1, v3, p2}, Ls1a;-><init>(Loa;Ls0;)V

    aput-object p1, v0, v1

    :goto_0
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    aget-object p2, v0, v2

    invoke-virtual {p2}, Lj1;->getEncoded()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    aput-object p1, p0, v2

    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    aget-object p2, v0, v1

    invoke-virtual {p2}, Lj1;->getEncoded()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    aput-object p1, p0, v1

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2

    :try_start_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Log8;->n(Ljava/lang/Object;)Log8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->b(Log8;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Ls1a;->n(Ljava/lang/Object;)Ls1a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/a;->a(Ls1a;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Key not recognized"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key could not be parsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
