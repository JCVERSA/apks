.class public Lqh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Lqh5;

.field public static final c:Lqh5;

.field public static final d:Lqh5;

.field public static e:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lqh5;

    sget-object v1, Lrh5;->f:Lrh5;

    invoke-direct {v0, v1}, Lqh5;-><init>(Lrh5;)V

    sput-object v0, Lqh5;->b:Lqh5;

    new-instance v1, Lqh5;

    sget-object v2, Lrh5;->g:Lrh5;

    invoke-direct {v1, v2}, Lqh5;-><init>(Lrh5;)V

    sput-object v1, Lqh5;->c:Lqh5;

    new-instance v2, Lqh5;

    sget-object v3, Lrh5;->h:Lrh5;

    invoke-direct {v2, v3}, Lqh5;-><init>(Lrh5;)V

    sput-object v2, Lqh5;->d:Lqh5;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lqh5;->e:Ljava/util/Map;

    const-string v4, "kyber512"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lqh5;->e:Ljava/util/Map;

    const-string v3, "kyber768"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lqh5;->e:Ljava/util/Map;

    const-string v1, "kyber1024"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrh5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lrh5;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lqh5;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lqh5;
    .locals 1

    sget-object v0, Lqh5;->e:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqh5;

    return-object p0
.end method
