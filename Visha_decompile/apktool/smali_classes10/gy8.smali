.class public Lgy8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Lgy8;

.field public static final c:Lgy8;

.field public static final d:Lgy8;

.field public static final e:Lgy8;

.field public static final f:Lgy8;

.field public static final g:Lgy8;

.field public static h:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lgy8;

    sget-object v1, Lhy8;->k:Lhy8;

    invoke-direct {v0, v1}, Lgy8;-><init>(Lhy8;)V

    sput-object v0, Lgy8;->b:Lgy8;

    new-instance v1, Lgy8;

    sget-object v2, Lhy8;->l:Lhy8;

    invoke-direct {v1, v2}, Lgy8;-><init>(Lhy8;)V

    sput-object v1, Lgy8;->c:Lgy8;

    new-instance v2, Lgy8;

    sget-object v3, Lhy8;->m:Lhy8;

    invoke-direct {v2, v3}, Lgy8;-><init>(Lhy8;)V

    sput-object v2, Lgy8;->d:Lgy8;

    new-instance v3, Lgy8;

    sget-object v4, Lhy8;->n:Lhy8;

    invoke-direct {v3, v4}, Lgy8;-><init>(Lhy8;)V

    sput-object v3, Lgy8;->e:Lgy8;

    new-instance v4, Lgy8;

    sget-object v5, Lhy8;->o:Lhy8;

    invoke-direct {v4, v5}, Lgy8;-><init>(Lhy8;)V

    sput-object v4, Lgy8;->f:Lgy8;

    new-instance v5, Lgy8;

    sget-object v6, Lhy8;->p:Lhy8;

    invoke-direct {v5, v6}, Lgy8;-><init>(Lhy8;)V

    sput-object v5, Lgy8;->g:Lgy8;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lgy8;->h:Ljava/util/Map;

    const-string v7, "sntrup653"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lgy8;->h:Ljava/util/Map;

    const-string v6, "sntrup761"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lgy8;->h:Ljava/util/Map;

    const-string v1, "sntrup857"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lgy8;->h:Ljava/util/Map;

    const-string v1, "sntrup953"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lgy8;->h:Ljava/util/Map;

    const-string v1, "sntrup1013"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lgy8;->h:Ljava/util/Map;

    const-string v1, "sntrup1277"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhy8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lhy8;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgy8;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lgy8;
    .locals 1

    sget-object v0, Lgy8;->h:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgy8;

    return-object p0
.end method
