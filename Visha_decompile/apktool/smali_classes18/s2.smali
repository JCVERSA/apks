.class public abstract Ls2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    return-void
.end method

.method public static synthetic i(Ls2;Lfd1;ILjava/lang/Object;ZILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ls2;->h(Lfd1;ILjava/lang/Object;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: readElement"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract b(Ljava/lang/Object;)I
.end method

.method public abstract c(Ljava/lang/Object;I)V
.end method

.method public abstract d(Ljava/lang/Object;)Ljava/util/Iterator;
.end method

.method public deserialize(Lhu1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ls2;->f(Lhu1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract e(Ljava/lang/Object;)I
.end method

.method public final f(Lhu1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ls2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Ls2;->a()Ljava/lang/Object;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p2}, Ls2;->b(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lhu1;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object p1

    invoke-interface {p1}, Lfd1;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Ls2;->j(Lfd1;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v7, v0}, Ls2;->g(Lfd1;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    add-int v2, v7, v0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Ls2;->i(Ls2;Lfd1;ILjava/lang/Object;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    invoke-virtual {p0, p2}, Ls2;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract g(Lfd1;Ljava/lang/Object;II)V
.end method

.method public abstract h(Lfd1;ILjava/lang/Object;Z)V
.end method

.method public final j(Lfd1;Ljava/lang/Object;)I
    .locals 1

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lfd1;->u(Lkotlinx/serialization/descriptors/a;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Ls2;->c(Ljava/lang/Object;I)V

    return p1
.end method

.method public abstract k(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract l(Ljava/lang/Object;)Ljava/lang/Object;
.end method
