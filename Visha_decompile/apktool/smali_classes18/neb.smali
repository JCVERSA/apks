.class public final Lneb;
.super Ldf8;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final c:Lneb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lneb;

    invoke-direct {v0}, Lneb;-><init>()V

    sput-object v0, Lneb;->c:Lneb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkeb;->c:Lkeb$a;

    invoke-static {v0}, Lqn0;->F(Lkeb$a;)Lef5;

    move-result-object v0

    invoke-direct {p0, v0}, Ldf8;-><init>(Lef5;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lleb;

    invoke-virtual {p1}, Lleb;->w()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lneb;->v([I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic h(Lfd1;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lmeb;

    invoke-virtual {p0, p1, p2, p3, p4}, Lneb;->x(Lfd1;ILmeb;Z)V

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lleb;

    invoke-virtual {p1}, Lleb;->w()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lneb;->y([I)Lmeb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic r()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lneb;->w()[I

    move-result-object p0

    invoke-static {p0}, Lleb;->b([I)Lleb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic u(Lid1;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lleb;

    invoke-virtual {p2}, Lleb;->w()[I

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lneb;->z(Lid1;[II)V

    return-void
.end method

.method public v([I)I
    .locals 0

    const-string p0, "$this$collectionSize"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lleb;->q([I)I

    move-result p0

    return p0
.end method

.method public w()[I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lleb;->c(I)[I

    move-result-object p0

    return-object p0
.end method

.method public x(Lfd1;ILmeb;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldf8;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lfd1;->k(Lkotlinx/serialization/descriptors/a;I)Lhu1;

    move-result-object p0

    invoke-interface {p0}, Lhu1;->t()I

    move-result p0

    invoke-static {p0}, Lkeb;->b(I)I

    move-result p0

    invoke-virtual {p3, p0}, Lmeb;->e(I)V

    return-void
.end method

.method public y([I)Lmeb;
    .locals 1

    const-string p0, "$this$toBuilder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lmeb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmeb;-><init>([ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public z(Lid1;[II)V
    .locals 3

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0}, Ldf8;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lid1;->w(Lkotlinx/serialization/descriptors/a;I)Lca3;

    move-result-object v1

    invoke-static {p2, v0}, Lleb;->o([II)I

    move-result v2

    invoke-interface {v1, v2}, Lca3;->s(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
