.class public Ljl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Ljl4;

.field public static final c:Ljl4;

.field public static final d:Ljl4;

.field public static e:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljl4;

    sget-object v1, Lkl4;->p:Lkl4;

    invoke-direct {v0, v1}, Ljl4;-><init>(Lkl4;)V

    sput-object v0, Ljl4;->b:Ljl4;

    new-instance v1, Ljl4;

    sget-object v2, Lkl4;->q:Lkl4;

    invoke-direct {v1, v2}, Ljl4;-><init>(Lkl4;)V

    sput-object v1, Ljl4;->c:Ljl4;

    new-instance v2, Ljl4;

    sget-object v3, Lkl4;->r:Lkl4;

    invoke-direct {v2, v3}, Ljl4;-><init>(Lkl4;)V

    sput-object v2, Ljl4;->d:Ljl4;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Ljl4;->e:Ljava/util/Map;

    const-string v4, "hqc128"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljl4;->e:Ljava/util/Map;

    const-string v3, "hqc192"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljl4;->e:Ljava/util/Map;

    const-string v1, "hqc256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkl4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lkl4;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljl4;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljl4;
    .locals 1

    sget-object v0, Ljl4;->e:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljl4;

    return-object p0
.end method
