.class public Lpx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Lpx6;

.field public static final c:Lpx6;

.field public static final d:Lpx6;

.field public static final e:Lpx6;

.field public static final f:Lpx6;

.field public static final g:Lpx6;

.field public static h:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lpx6;

    sget-object v1, Lqx6;->o:Lqx6;

    invoke-direct {v0, v1}, Lpx6;-><init>(Lqx6;)V

    sput-object v0, Lpx6;->b:Lpx6;

    new-instance v1, Lpx6;

    sget-object v2, Lqx6;->p:Lqx6;

    invoke-direct {v1, v2}, Lpx6;-><init>(Lqx6;)V

    sput-object v1, Lpx6;->c:Lpx6;

    new-instance v2, Lpx6;

    sget-object v3, Lqx6;->q:Lqx6;

    invoke-direct {v2, v3}, Lpx6;-><init>(Lqx6;)V

    sput-object v2, Lpx6;->d:Lpx6;

    new-instance v3, Lpx6;

    sget-object v4, Lqx6;->r:Lqx6;

    invoke-direct {v3, v4}, Lpx6;-><init>(Lqx6;)V

    sput-object v3, Lpx6;->e:Lpx6;

    new-instance v4, Lpx6;

    sget-object v5, Lqx6;->s:Lqx6;

    invoke-direct {v4, v5}, Lpx6;-><init>(Lqx6;)V

    sput-object v4, Lpx6;->f:Lpx6;

    new-instance v5, Lpx6;

    sget-object v6, Lqx6;->t:Lqx6;

    invoke-direct {v5, v6}, Lpx6;-><init>(Lqx6;)V

    sput-object v5, Lpx6;->g:Lpx6;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lpx6;->h:Ljava/util/Map;

    const-string v7, "ntrulpr653"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lpx6;->h:Ljava/util/Map;

    const-string v6, "ntrulpr761"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lpx6;->h:Ljava/util/Map;

    const-string v1, "ntrulpr857"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lpx6;->h:Ljava/util/Map;

    const-string v1, "ntrulpr953"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lpx6;->h:Ljava/util/Map;

    const-string v1, "ntrulpr1013"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lpx6;->h:Ljava/util/Map;

    const-string v1, "ntrulpr1277"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lqx6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lqx6;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpx6;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lpx6;
    .locals 1

    sget-object v0, Lpx6;->h:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpx6;

    return-object p0
.end method
