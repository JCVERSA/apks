.class public abstract Lkotlinx/serialization/internal/TaggedDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhu1;
.implements Lfd1;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/TaggedDecoder;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;

    invoke-direct {p2, p0, p3, p4}, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;-><init>(Lkotlinx/serialization/internal/TaggedDecoder;Lk92;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->Y(Ljava/lang/Object;Lc74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract B(Lk92;)Ljava/lang/Object;
.end method

.method public final C(Lkotlinx/serialization/descriptors/a;I)B
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->K(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public final D(Lkotlinx/serialization/descriptors/a;I)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->J(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract E()Z
.end method

.method public final F(Lkotlinx/serialization/descriptors/a;I)S
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->S(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public final G(Lkotlinx/serialization/descriptors/a;I)D
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->M(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public final H()B
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->K(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public I(Lk92;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p2, "deserializer"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->B(Lk92;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract J(Ljava/lang/Object;)Z
.end method

.method public abstract K(Ljava/lang/Object;)B
.end method

.method public abstract L(Ljava/lang/Object;)C
.end method

.method public abstract M(Ljava/lang/Object;)D
.end method

.method public abstract N(Ljava/lang/Object;Lkotlinx/serialization/descriptors/a;)I
.end method

.method public abstract O(Ljava/lang/Object;)F
.end method

.method public P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/a;)Lhu1;
    .locals 1

    const-string v0, "inlineDescriptor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Ljava/lang/Object;)V

    return-object p0
.end method

.method public abstract Q(Ljava/lang/Object;)I
.end method

.method public abstract R(Ljava/lang/Object;)J
.end method

.method public abstract S(Ljava/lang/Object;)S
.end method

.method public abstract T(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public final U()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/TaggedDecoder;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;
.end method

.method public final W()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedDecoder;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ly71;->m(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lkotlinx/serialization/internal/TaggedDecoder;->b:Z

    return-object v0
.end method

.method public final X(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/TaggedDecoder;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final Y(Ljava/lang/Object;Lc74;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Ljava/lang/Object;)V

    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p1

    iget-boolean p2, p0, Lkotlinx/serialization/internal/TaggedDecoder;->b:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lkotlinx/serialization/internal/TaggedDecoder;->b:Z

    return-object p1
.end method

.method public final e(Lkotlinx/serialization/descriptors/a;I)J
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->R(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final f(Lkotlinx/serialization/descriptors/a;I)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->Q(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final g()Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()J
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->R(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->T(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Z
    .locals 0

    invoke-static {p0}, Lfd1$a;->b(Lfd1;)Z

    move-result p0

    return p0
.end method

.method public final k(Lkotlinx/serialization/descriptors/a;I)Lhu1;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p0

    return-object p0
.end method

.method public final l()S
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->S(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public final m()D
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->M(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final n()C
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->L(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->T(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lkotlinx/serialization/descriptors/a;I)C
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->L(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public final q(Lkotlinx/serialization/descriptors/a;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->N(Ljava/lang/Object;Lkotlinx/serialization/descriptors/a;)I

    move-result p0

    return p0
.end method

.method public final r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;

    invoke-direct {p2, p0, p3, p4}, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;-><init>(Lkotlinx/serialization/internal/TaggedDecoder;Lk92;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->Y(Ljava/lang/Object;Lc74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final t()I
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->Q(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public u(Lkotlinx/serialization/descriptors/a;)I
    .locals 0

    invoke-static {p0, p1}, Lfd1$a;->a(Lfd1;Lkotlinx/serialization/descriptors/a;)I

    move-result p0

    return p0
.end method

.method public w(Lkotlinx/serialization/descriptors/a;)Lhu1;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p0

    return-object p0
.end method

.method public final x()F
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->O(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final y(Lkotlinx/serialization/descriptors/a;I)F
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->O(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->J(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
