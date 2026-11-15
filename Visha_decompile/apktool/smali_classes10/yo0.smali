.class public Lyo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Lyo0;

.field public static final c:Lyo0;

.field public static final d:Lyo0;

.field public static final e:Lyo0;

.field public static final f:Lyo0;

.field public static final g:Lyo0;

.field public static final h:Lyo0;

.field public static final i:Lyo0;

.field public static final j:Lyo0;

.field public static final k:Lyo0;

.field public static l:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lyo0;

    sget-object v1, Lzo0;->n:Lzo0;

    invoke-direct {v0, v1}, Lyo0;-><init>(Lzo0;)V

    sput-object v0, Lyo0;->b:Lyo0;

    new-instance v1, Lyo0;

    sget-object v2, Lzo0;->o:Lzo0;

    invoke-direct {v1, v2}, Lyo0;-><init>(Lzo0;)V

    sput-object v1, Lyo0;->c:Lyo0;

    new-instance v2, Lyo0;

    sget-object v3, Lzo0;->p:Lzo0;

    invoke-direct {v2, v3}, Lyo0;-><init>(Lzo0;)V

    sput-object v2, Lyo0;->d:Lyo0;

    new-instance v3, Lyo0;

    sget-object v4, Lzo0;->q:Lzo0;

    invoke-direct {v3, v4}, Lyo0;-><init>(Lzo0;)V

    sput-object v3, Lyo0;->e:Lyo0;

    new-instance v4, Lyo0;

    sget-object v5, Lzo0;->r:Lzo0;

    invoke-direct {v4, v5}, Lyo0;-><init>(Lzo0;)V

    sput-object v4, Lyo0;->f:Lyo0;

    new-instance v5, Lyo0;

    sget-object v6, Lzo0;->s:Lzo0;

    invoke-direct {v5, v6}, Lyo0;-><init>(Lzo0;)V

    sput-object v5, Lyo0;->g:Lyo0;

    new-instance v6, Lyo0;

    sget-object v7, Lzo0;->t:Lzo0;

    invoke-direct {v6, v7}, Lyo0;-><init>(Lzo0;)V

    sput-object v6, Lyo0;->h:Lyo0;

    new-instance v7, Lyo0;

    sget-object v8, Lzo0;->u:Lzo0;

    invoke-direct {v7, v8}, Lyo0;-><init>(Lzo0;)V

    sput-object v7, Lyo0;->i:Lyo0;

    new-instance v8, Lyo0;

    sget-object v9, Lzo0;->v:Lzo0;

    invoke-direct {v8, v9}, Lyo0;-><init>(Lzo0;)V

    sput-object v8, Lyo0;->j:Lyo0;

    new-instance v9, Lyo0;

    sget-object v10, Lzo0;->w:Lzo0;

    invoke-direct {v9, v10}, Lyo0;-><init>(Lzo0;)V

    sput-object v9, Lyo0;->k:Lyo0;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lyo0;->l:Ljava/util/Map;

    const-string v11, "mceliece348864"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyo0;->l:Ljava/util/Map;

    const-string v10, "mceliece348864f"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyo0;->l:Ljava/util/Map;

    const-string v1, "mceliece460896"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyo0;->l:Ljava/util/Map;

    const-string v1, "mceliece460896f"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyo0;->l:Ljava/util/Map;

    const-string v1, "mceliece6688128"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyo0;->l:Ljava/util/Map;

    const-string v1, "mceliece6688128f"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyo0;->l:Ljava/util/Map;

    const-string v1, "mceliece6960119"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyo0;->l:Ljava/util/Map;

    const-string v1, "mceliece6960119f"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyo0;->l:Ljava/util/Map;

    const-string v1, "mceliece8192128"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyo0;->l:Ljava/util/Map;

    const-string v1, "mceliece8192128f"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lzo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lzo0;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyo0;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lyo0;
    .locals 1

    sget-object v0, Lyo0;->l:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyo0;

    return-object p0
.end method
