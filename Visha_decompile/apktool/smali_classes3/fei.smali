.class public abstract Lfei;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leii;

.field public static final b:Ljji;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldei;

    invoke-direct {v0}, Ldei;-><init>()V

    sput-object v0, Lfei;->a:Leii;

    new-instance v0, Leei;

    invoke-direct {v0}, Leei;-><init>()V

    const-class v1, Lcei;

    const-class v2, Lq8i;

    invoke-static {v0, v1, v2}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Lfei;->b:Ljji;

    return-void
.end method

.method public static a(Z)V
    .locals 3

    sget-object p0, Lkgi;->a:Leri;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object p0

    invoke-static {p0}, Lkgi;->e(Lqii;)V

    invoke-static {}, Lmii;->b()Lmii;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "XAES_256_GCM_192_BIT_NONCE"

    sget-object v2, Lbei;->g:Lhei;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XAES_256_GCM_192_BIT_NONCE_NO_PREFIX"

    sget-object v2, Lbei;->h:Lhei;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XAES_256_GCM_160_BIT_NONCE_NO_PREFIX"

    sget-object v2, Lbei;->i:Lhei;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X_AES_GCM_8_BYTE_SALT_NO_PREFIX"

    sget-object v2, Lbei;->j:Lhei;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmii;->d(Ljava/util/Map;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object p0

    sget-object v0, Lfei;->b:Ljji;

    invoke-virtual {p0, v0}, Lnii;->c(Ljji;)V

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object p0

    sget-object v0, Lfei;->a:Leii;

    const-class v1, Lhei;

    invoke-virtual {p0, v0, v1}, Lfii;->c(Leii;Ljava/lang/Class;)V

    return-void
.end method
