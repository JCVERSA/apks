.class public final Lma5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lma5;->f(Lc74;)Lkotlinx/serialization/descriptors/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Lyi5;


# direct methods
.method public constructor <init>(Lc74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lma5$a;->a:Lyi5;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lma5$a;->a:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public b()Z
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/a$a;->c(Lkotlinx/serialization/descriptors/a;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lma5$a;->a()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public d(I)Lkotlinx/serialization/descriptors/a;
    .locals 0

    invoke-virtual {p0}, Lma5$a;->a()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    return-object p0
.end method

.method public e()I
    .locals 0

    invoke-virtual {p0}, Lma5$a;->a()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result p0

    return p0
.end method

.method public f(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lma5$a;->a()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(I)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lma5$a;->a()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->g(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/a$a;->a(Lkotlinx/serialization/descriptors/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getKind()Lid9;
    .locals 0

    invoke-virtual {p0}, Lma5$a;->a()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lma5$a;->a()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i(I)Z
    .locals 0

    invoke-virtual {p0}, Lma5$a;->a()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->i(I)Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/a$a;->b(Lkotlinx/serialization/descriptors/a;)Z

    move-result p0

    return p0
.end method
