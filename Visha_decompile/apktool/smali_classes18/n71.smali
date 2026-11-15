.class public abstract Ln71;
.super Ls2;
.source "SourceFile"


# instance fields
.field public final a:Lef5;


# direct methods
.method public constructor <init>(Lef5;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ls2;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Ln71;->a:Lef5;

    return-void
.end method

.method public synthetic constructor <init>(Lef5;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln71;-><init>(Lef5;)V

    return-void
.end method

.method public static final synthetic m(Ln71;)Lef5;
    .locals 0

    iget-object p0, p0, Ln71;->a:Lef5;

    return-object p0
.end method


# virtual methods
.method public final g(Lfd1;Ljava/lang/Object;II)V
    .locals 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p4, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    add-int v2, p3, v1

    invoke-virtual {p0, p1, v2, p2, v0}, Ln71;->h(Lfd1;ILjava/lang/Object;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be known in advance when using READ_ALL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getDescriptor()Lkotlinx/serialization/descriptors/a;
.end method

.method public h(Lfd1;ILjava/lang/Object;Z)V
    .locals 7

    const-string p4, "decoder"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln71;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v1

    iget-object v3, p0, Ln71;->a:Lef5;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Ln71;->n(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public abstract n(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public serialize(Lca3;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ls2;->e(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Ln71;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lca3;->y(Lkotlinx/serialization/descriptors/a;I)Lid1;

    move-result-object p1

    invoke-virtual {p0, p2}, Ls2;->d(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Ln71;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v3

    invoke-static {p0}, Ln71;->m(Ln71;)Lef5;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v3, v2, v4, v5}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lid1;->c(Lkotlinx/serialization/descriptors/a;)V

    return-void
.end method
