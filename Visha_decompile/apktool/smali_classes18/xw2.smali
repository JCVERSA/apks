.class public final Lxw2;
.super Ldf8;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final c:Lxw2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxw2;

    invoke-direct {v0}, Lxw2;-><init>()V

    sput-object v0, Lxw2;->c:Lxw2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lbx2;->a:Lbx2;

    invoke-static {v0}, Lqn0;->x(Lbx2;)Lef5;

    move-result-object v0

    invoke-direct {p0, v0}, Ldf8;-><init>(Lef5;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lxw2;->v([D)I

    move-result p0

    return p0
.end method

.method public bridge synthetic h(Lfd1;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lww2;

    invoke-virtual {p0, p1, p2, p3, p4}, Lxw2;->x(Lfd1;ILww2;Z)V

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lxw2;->y([D)Lww2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic r()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lxw2;->w()[D

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic u(Lid1;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, [D

    invoke-virtual {p0, p1, p2, p3}, Lxw2;->z(Lid1;[DI)V

    return-void
.end method

.method public v([D)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public w()[D
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [D

    return-object p0
.end method

.method public x(Lfd1;ILww2;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldf8;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lfd1;->G(Lkotlinx/serialization/descriptors/a;I)D

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lww2;->e(D)V

    return-void
.end method

.method public y([D)Lww2;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lww2;

    invoke-direct {p0, p1}, Lww2;-><init>([D)V

    return-object p0
.end method

.method public z(Lid1;[DI)V
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

    aget-wide v2, p2, v0

    invoke-interface {p1, v1, v0, v2, v3}, Lid1;->F(Lkotlinx/serialization/descriptors/a;ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
