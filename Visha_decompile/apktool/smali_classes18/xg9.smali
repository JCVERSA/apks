.class public final Lxg9;
.super Ldf8;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final c:Lxg9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxg9;

    invoke-direct {v0}, Lxg9;-><init>()V

    sput-object v0, Lxg9;->c:Lxg9;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyg9;->a:Lyg9;

    invoke-static {v0}, Lqn0;->C(Lyg9;)Lef5;

    move-result-object v0

    invoke-direct {p0, v0}, Ldf8;-><init>(Lef5;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lxg9;->v([S)I

    move-result p0

    return p0
.end method

.method public bridge synthetic h(Lfd1;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Lwg9;

    invoke-virtual {p0, p1, p2, p3, p4}, Lxg9;->x(Lfd1;ILwg9;Z)V

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lxg9;->y([S)Lwg9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic r()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lxg9;->w()[S

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic u(Lid1;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, [S

    invoke-virtual {p0, p1, p2, p3}, Lxg9;->z(Lid1;[SI)V

    return-void
.end method

.method public v([S)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public w()[S
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [S

    return-object p0
.end method

.method public x(Lfd1;ILwg9;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldf8;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lfd1;->F(Lkotlinx/serialization/descriptors/a;I)S

    move-result p0

    invoke-virtual {p3, p0}, Lwg9;->e(S)V

    return-void
.end method

.method public y([S)Lwg9;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lwg9;

    invoke-direct {p0, p1}, Lwg9;-><init>([S)V

    return-object p0
.end method

.method public z(Lid1;[SI)V
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

    aget-short v2, p2, v0

    invoke-interface {p1, v1, v0, v2}, Lid1;->t(Lkotlinx/serialization/descriptors/a;IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
