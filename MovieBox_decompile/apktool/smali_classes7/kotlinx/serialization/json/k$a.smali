.class public final Lkotlinx/serialization/json/k$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/descriptors/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/k;->f(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/descriptors/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lkotlinx/serialization/json/k$a;->a:Lkotlin/Lazy;

    .line 9
    .line 10
    return-void
.end method

.method private final a()Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/k$a;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlinx/serialization/descriptors/f;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->c(Lkotlinx/serialization/descriptors/f;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
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
    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->c(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public d()Lkotlinx/serialization/descriptors/h;
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->e()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public g(I)Ljava/util/List;
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->g(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->a(Lkotlinx/serialization/descriptors/f;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h(I)Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isInline()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->b(Lkotlinx/serialization/descriptors/f;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public j(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->j(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
