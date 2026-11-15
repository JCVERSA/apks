.class public Lzb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Lzb2;

.field public static final c:Lzb2;

.field public static final d:Lzb2;

.field public static e:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lzb2;

    sget-object v1, Lac2;->d:Lac2;

    invoke-direct {v0, v1}, Lzb2;-><init>(Lac2;)V

    sput-object v0, Lzb2;->b:Lzb2;

    new-instance v1, Lzb2;

    sget-object v2, Lac2;->e:Lac2;

    invoke-direct {v1, v2}, Lzb2;-><init>(Lac2;)V

    sput-object v1, Lzb2;->c:Lzb2;

    new-instance v2, Lzb2;

    sget-object v3, Lac2;->f:Lac2;

    invoke-direct {v2, v3}, Lzb2;-><init>(Lac2;)V

    sput-object v2, Lzb2;->d:Lzb2;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lzb2;->e:Ljava/util/Map;

    const-string v4, "dilithium2"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lzb2;->e:Ljava/util/Map;

    const-string v3, "dilithium3"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lzb2;->e:Ljava/util/Map;

    const-string v1, "dilithium5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lac2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lac2;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzb2;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lzb2;
    .locals 1

    sget-object v0, Lzb2;->e:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzb2;

    return-object p0
.end method
