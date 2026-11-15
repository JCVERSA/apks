.class public final Lteb;
.super Ldf8;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final c:Lteb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lteb;

    invoke-direct {v0}, Lteb;-><init>()V

    sput-object v0, Lteb;->c:Lteb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lqeb;->c:Lqeb$a;

    invoke-static {v0}, Lqn0;->G(Lqeb$a;)Lef5;

    move-result-object v0

    invoke-direct {p0, v0}, Ldf8;-><init>(Lef5;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lreb;

    invoke-virtual {p1}, Lreb;->w()[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lteb;->v([J)I

    move-result p0

    return p0
.end method

.method public bridge synthetic h(Lfd1;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lseb;

    invoke-virtual {p0, p1, p2, p3, p4}, Lteb;->x(Lfd1;ILseb;Z)V

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lreb;

    invoke-virtual {p1}, Lreb;->w()[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lteb;->y([J)Lseb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic r()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lteb;->w()[J

    move-result-object p0

    invoke-static {p0}, Lreb;->b([J)Lreb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic u(Lid1;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lreb;

    invoke-virtual {p2}, Lreb;->w()[J

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lteb;->z(Lid1;[JI)V

    return-void
.end method

.method public v([J)I
    .locals 0

    const-string p0, "$this$collectionSize"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lreb;->q([J)I

    move-result p0

    return p0
.end method

.method public w()[J
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lreb;->c(I)[J

    move-result-object p0

    return-object p0
.end method

.method public x(Lfd1;ILseb;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldf8;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lfd1;->k(Lkotlinx/serialization/descriptors/a;I)Lhu1;

    move-result-object p0

    invoke-interface {p0}, Lhu1;->h()J

    move-result-wide p0

    invoke-static {p0, p1}, Lqeb;->b(J)J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lseb;->e(J)V

    return-void
.end method

.method public y([J)Lseb;
    .locals 1

    const-string p0, "$this$toBuilder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lseb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lseb;-><init>([JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public z(Lid1;[JI)V
    .locals 4

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

    invoke-static {p2, v0}, Lreb;->o([JI)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lca3;->z(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
