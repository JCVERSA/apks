.class public abstract Lsn6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Map;

.field public static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsn6;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsn6;->b:Ljava/util/Map;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v1, Lyu7;->s2:Ll1;

    const-string v2, "MD2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v1, Lyu7;->t2:Ll1;

    const-string v2, "MD4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v1, Lyu7;->u2:Ll1;

    const-string v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v1, Ln47;->i:Ll1;

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v3, Lcx6;->f:Ll1;

    const-string v4, "SHA-224"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v5, Lcx6;->c:Ll1;

    const-string v6, "SHA-256"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v7, Lcx6;->d:Ll1;

    const-string v8, "SHA-384"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v9, Lcx6;->e:Ll1;

    const-string v10, "SHA-512"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lcx6;->g:Ll1;

    const-string v12, "SHA-512(224)"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lcx6;->h:Ll1;

    const-string v12, "SHA-512(256)"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lnea;->c:Ll1;

    const-string v12, "RIPEMD-128"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lnea;->b:Ll1;

    const-string v13, "RIPEMD-160"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lnea;->d:Ll1;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lyv4;->d:Ll1;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lyv4;->c:Ll1;

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lwl1;->b:Ll1;

    const-string v12, "GOST3411"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lga4;->g:Ll1;

    const-string v12, "Tiger"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lyv4;->e:Ll1;

    const-string v12, "Whirlpool"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v11, Lcx6;->i:Ll1;

    const-string v12, "SHA3-224"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v13, Lcx6;->j:Ll1;

    const-string v14, "SHA3-256"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v15, Lcx6;->k:Ll1;

    move-object/from16 v16, v14

    const-string v14, "SHA3-384"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    move-object/from16 v17, v14

    sget-object v14, Lcx6;->l:Ll1;

    move-object/from16 v18, v15

    const-string v15, "SHA3-512"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    move-object/from16 v19, v15

    sget-object v15, Lcx6;->m:Ll1;

    move-object/from16 v20, v14

    const-string v14, "SHAKE128"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v14, Lcx6;->n:Ll1;

    const-string v15, "SHAKE256"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v14, Lca4;->d0:Ll1;

    const-string v15, "SM3"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->a:Ljava/util/Map;

    sget-object v14, Lvp6;->N:Ll1;

    const-string v15, "BLAKE3-256"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    move-object/from16 v21, v15

    new-instance v15, Loa;

    move-object/from16 v22, v14

    sget-object v14, Lup1;->c:Lup1;

    invoke-direct {v15, v1, v14}, Loa;-><init>(Ll1;Lx0;)V

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    invoke-direct {v1, v3}, Loa;-><init>(Ll1;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    invoke-direct {v1, v3}, Loa;-><init>(Ll1;)V

    const-string v2, "SHA224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    invoke-direct {v1, v5}, Loa;-><init>(Ll1;)V

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    invoke-direct {v1, v5}, Loa;-><init>(Ll1;)V

    const-string v2, "SHA256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    invoke-direct {v1, v7}, Loa;-><init>(Ll1;)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    invoke-direct {v1, v7}, Loa;-><init>(Ll1;)V

    const-string v2, "SHA384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    invoke-direct {v1, v9}, Loa;-><init>(Ll1;)V

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    invoke-direct {v1, v9}, Loa;-><init>(Ll1;)V

    const-string v2, "SHA512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    invoke-direct {v1, v11}, Loa;-><init>(Ll1;)V

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    invoke-direct {v1, v13}, Loa;-><init>(Ll1;)V

    move-object/from16 v2, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Loa;-><init>(Ll1;)V

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Loa;-><init>(Ll1;)V

    move-object/from16 v2, v19

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    new-instance v1, Loa;

    move-object/from16 v2, v22

    invoke-direct {v1, v2}, Loa;-><init>(Ll1;)V

    move-object/from16 v2, v21

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Loa;
    .locals 3

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsn6;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loa;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ll1;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lsn6;->a:Ljava/util/Map;

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
