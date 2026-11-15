.class public Lu40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Lu40;

.field public static final c:Lu40;

.field public static final d:Lu40;

.field public static e:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lu40;

    sget-object v1, Lv40;->k:Lv40;

    invoke-direct {v0, v1}, Lu40;-><init>(Lv40;)V

    sput-object v0, Lu40;->b:Lu40;

    new-instance v1, Lu40;

    sget-object v2, Lv40;->l:Lv40;

    invoke-direct {v1, v2}, Lu40;-><init>(Lv40;)V

    sput-object v1, Lu40;->c:Lu40;

    new-instance v2, Lu40;

    sget-object v3, Lv40;->m:Lv40;

    invoke-direct {v2, v3}, Lu40;-><init>(Lv40;)V

    sput-object v2, Lu40;->d:Lu40;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lu40;->e:Ljava/util/Map;

    const-string v4, "bike128"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu40;->e:Ljava/util/Map;

    const-string v3, "bike192"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu40;->e:Ljava/util/Map;

    const-string v1, "bike256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lv40;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu40;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lu40;
    .locals 1

    sget-object v0, Lu40;->e:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu40;

    return-object p0
.end method
