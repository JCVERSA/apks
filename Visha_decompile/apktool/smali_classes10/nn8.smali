.class public Lnn8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Lnn8;

.field public static final c:Lnn8;

.field public static final d:Lnn8;

.field public static final e:Lnn8;

.field public static final f:Lnn8;

.field public static final g:Lnn8;

.field public static h:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnn8;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/b;->k:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-direct {v0, v1}, Lnn8;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;)V

    sput-object v0, Lnn8;->b:Lnn8;

    new-instance v1, Lnn8;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/b;->l:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-direct {v1, v2}, Lnn8;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;)V

    sput-object v1, Lnn8;->c:Lnn8;

    new-instance v2, Lnn8;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/rainbow/b;->m:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-direct {v2, v3}, Lnn8;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;)V

    sput-object v2, Lnn8;->d:Lnn8;

    new-instance v3, Lnn8;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/rainbow/b;->n:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-direct {v3, v4}, Lnn8;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;)V

    sput-object v3, Lnn8;->e:Lnn8;

    new-instance v4, Lnn8;

    sget-object v5, Lorg/bouncycastle/pqc/crypto/rainbow/b;->o:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-direct {v4, v5}, Lnn8;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;)V

    sput-object v4, Lnn8;->f:Lnn8;

    new-instance v5, Lnn8;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/rainbow/b;->p:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    invoke-direct {v5, v6}, Lnn8;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;)V

    sput-object v5, Lnn8;->g:Lnn8;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lnn8;->h:Ljava/util/Map;

    const-string v7, "rainbow-iii-classic"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lnn8;->h:Ljava/util/Map;

    const-string v6, "rainbow-iii-circumzenithal"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lnn8;->h:Ljava/util/Map;

    const-string v1, "rainbow-iii-compressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lnn8;->h:Ljava/util/Map;

    const-string v1, "rainbow-v-classic"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lnn8;->h:Ljava/util/Map;

    const-string v1, "rainbow-v-circumzenithal"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lnn8;->h:Ljava/util/Map;

    const-string v1, "rainbow-v-compressed"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnn8;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lnn8;
    .locals 1

    sget-object v0, Lnn8;->h:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnn8;

    return-object p0
.end method
