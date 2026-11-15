.class public Lv64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Lv64;

.field public static final c:Lv64;

.field public static final d:Lv64;

.field public static final e:Lv64;

.field public static final f:Lv64;

.field public static final g:Lv64;

.field public static h:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lv64;

    sget-object v1, Lw64;->k:Lw64;

    invoke-direct {v0, v1}, Lv64;-><init>(Lw64;)V

    sput-object v0, Lv64;->b:Lv64;

    new-instance v1, Lv64;

    sget-object v2, Lw64;->l:Lw64;

    invoke-direct {v1, v2}, Lv64;-><init>(Lw64;)V

    sput-object v1, Lv64;->c:Lv64;

    new-instance v2, Lv64;

    sget-object v3, Lw64;->m:Lw64;

    invoke-direct {v2, v3}, Lv64;-><init>(Lw64;)V

    sput-object v2, Lv64;->d:Lv64;

    new-instance v3, Lv64;

    sget-object v4, Lw64;->n:Lw64;

    invoke-direct {v3, v4}, Lv64;-><init>(Lw64;)V

    sput-object v3, Lv64;->e:Lv64;

    new-instance v4, Lv64;

    sget-object v5, Lw64;->o:Lw64;

    invoke-direct {v4, v5}, Lv64;-><init>(Lw64;)V

    sput-object v4, Lv64;->f:Lv64;

    new-instance v5, Lv64;

    sget-object v6, Lw64;->p:Lw64;

    invoke-direct {v5, v6}, Lv64;-><init>(Lw64;)V

    sput-object v5, Lv64;->g:Lv64;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lv64;->h:Ljava/util/Map;

    const-string v7, "frodokem19888r3"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv64;->h:Ljava/util/Map;

    const-string v7, "frodokem19888shaker3"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv64;->h:Ljava/util/Map;

    const-string v7, "frodokem31296r3"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv64;->h:Ljava/util/Map;

    const-string v7, "frodokem31296shaker3"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv64;->h:Ljava/util/Map;

    const-string v7, "frodokem43088r3"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv64;->h:Ljava/util/Map;

    const-string v7, "frodokem43088shaker3"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv64;->h:Ljava/util/Map;

    const-string v7, "frodokem640aes"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lv64;->h:Ljava/util/Map;

    const-string v6, "frodokem640shake"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lv64;->h:Ljava/util/Map;

    const-string v1, "frodokem976aes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lv64;->h:Ljava/util/Map;

    const-string v1, "frodokem976shake"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lv64;->h:Ljava/util/Map;

    const-string v1, "frodokem1344aes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lv64;->h:Ljava/util/Map;

    const-string v1, "frodokem1344shake"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw64;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lw64;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lv64;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lv64;
    .locals 1

    sget-object v0, Lv64;->h:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv64;

    return-object p0
.end method
