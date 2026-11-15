.class public Lto3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Lto3;

.field public static final c:Lto3;

.field public static d:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lto3;

    sget-object v1, Luo3;->e:Luo3;

    invoke-direct {v0, v1}, Lto3;-><init>(Luo3;)V

    sput-object v0, Lto3;->b:Lto3;

    new-instance v1, Lto3;

    sget-object v2, Luo3;->f:Luo3;

    invoke-direct {v1, v2}, Lto3;-><init>(Luo3;)V

    sput-object v1, Lto3;->c:Lto3;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lto3;->d:Ljava/util/Map;

    const-string v3, "falcon-512"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lto3;->d:Ljava/util/Map;

    const-string v2, "falcon-1024"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Luo3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Luo3;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu0a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lto3;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lto3;
    .locals 1

    sget-object v0, Lto3;->d:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lto3;

    return-object p0
.end method
