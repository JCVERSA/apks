.class final Lkotlinx/serialization/json/t$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/descriptors/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final b:Lkotlinx/serialization/json/t$a;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final synthetic a:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/serialization/json/t$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/serialization/json/t$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/serialization/json/t$a;->b:Lkotlinx/serialization/json/t$a;

    .line 7
    .line 8
    const-string v0, "kotlinx.serialization.json.JsonObject"

    .line 9
    .line 10
    sput-object v0, Lkotlinx/serialization/json/t$a;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 5
    .line 6
    invoke-static {v0}, Lry/a;->G(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lry/a;->k(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->c(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public d()Lkotlinx/serialization/descriptors/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g(I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->g(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->getAnnotations()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h(I)Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/json/t$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isInline()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->isInline()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/t$a;->a:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->j(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
