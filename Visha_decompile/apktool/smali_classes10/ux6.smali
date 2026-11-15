.class public Lux6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Lux6;

.field public static final c:Lux6;

.field public static final d:Lux6;

.field public static final e:Lux6;

.field public static final f:Lux6;

.field public static final g:Lux6;

.field public static h:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lux6;

    sget-object v1, Lvx6;->d:Lvx6;

    invoke-direct {v0, v1}, Lux6;-><init>(Lvx6;)V

    sput-object v0, Lux6;->b:Lux6;

    new-instance v1, Lux6;

    sget-object v2, Lvx6;->e:Lvx6;

    invoke-direct {v1, v2}, Lux6;-><init>(Lvx6;)V

    sput-object v1, Lux6;->c:Lux6;

    new-instance v2, Lux6;

    sget-object v3, Lvx6;->f:Lvx6;

    invoke-direct {v2, v3}, Lux6;-><init>(Lvx6;)V

    sput-object v2, Lux6;->d:Lux6;

    new-instance v3, Lux6;

    sget-object v4, Lvx6;->g:Lvx6;

    invoke-direct {v3, v4}, Lux6;-><init>(Lvx6;)V

    sput-object v3, Lux6;->e:Lux6;

    new-instance v4, Lux6;

    sget-object v5, Lvx6;->h:Lvx6;

    invoke-direct {v4, v5}, Lux6;-><init>(Lvx6;)V

    sput-object v4, Lux6;->f:Lux6;

    new-instance v5, Lux6;

    sget-object v6, Lvx6;->i:Lvx6;

    invoke-direct {v5, v6}, Lux6;-><init>(Lvx6;)V

    sput-object v5, Lux6;->g:Lux6;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lux6;->h:Ljava/util/Map;

    const-string v7, "ntruhps2048509"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lux6;->h:Ljava/util/Map;

    const-string v6, "ntruhps2048677"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lux6;->h:Ljava/util/Map;

    const-string v1, "ntruhps4096821"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lux6;->h:Ljava/util/Map;

    const-string v1, "ntruhps40961229"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lux6;->h:Ljava/util/Map;

    const-string v1, "ntruhrss701"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lux6;->h:Ljava/util/Map;

    const-string v1, "ntruhrss1373"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lvx6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lvx6;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lux6;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lux6;
    .locals 1

    sget-object v0, Lux6;->h:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lux6;

    return-object p0
.end method
