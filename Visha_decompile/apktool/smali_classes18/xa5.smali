.class public final Lxa5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final a:Lxa5;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxa5;

    invoke-direct {v0}, Lxa5;-><init>()V

    sput-object v0, Lxa5;->a:Lxa5;

    const-string v0, "kotlinx.serialization.json.JsonLiteral"

    sget-object v1, Lef8$i;->a:Lef8$i;

    invoke-static {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->a(Ljava/lang/String;Lef8;)Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    sput-object v0, Lxa5;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)Lwa5;
    .locals 1

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->d(Lhu1;)Lia5;

    move-result-object p0

    invoke-interface {p0}, Lia5;->s()Lkotlinx/serialization/json/b;

    move-result-object p0

    instance-of p1, p0, Lwa5;

    if-eqz p1, :cond_0

    check-cast p0, Lwa5;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected JSON element, expected JsonLiteral, had "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Loa5;->e(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public b(Lca3;Lwa5;)V
    .locals 2

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->c(Lca3;)V

    invoke-virtual {p2}, Lwa5;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lwa5;->b()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lwa5;->c()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lwa5;->c()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->g(Lkotlinx/serialization/descriptors/a;)Lca3;

    move-result-object p0

    invoke-virtual {p2}, Lwa5;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lca3;->v(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p2}, Lla5;->n(Lkotlinx/serialization/json/c;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lca3;->z(J)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lwa5;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lhfb;->h(Ljava/lang/String;)Lqeb;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lqeb;->g()J

    move-result-wide v0

    sget-object p0, Lqeb;->c:Lqeb$a;

    invoke-static {p0}, Lqn0;->G(Lqeb$a;)Lef5;

    move-result-object p0

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->g(Lkotlinx/serialization/descriptors/a;)Lca3;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lca3;->z(J)V

    return-void

    :cond_3
    invoke-static {p2}, Lla5;->h(Lkotlinx/serialization/json/c;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lca3;->x(D)V

    return-void

    :cond_4
    invoke-static {p2}, Lla5;->e(Lkotlinx/serialization/json/c;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lca3;->l(Z)V

    return-void

    :cond_5
    invoke-virtual {p2}, Lwa5;->b()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->v(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lxa5;->a(Lhu1;)Lwa5;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lxa5;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lwa5;

    invoke-virtual {p0, p1, p2}, Lxa5;->b(Lca3;Lwa5;)V

    return-void
.end method
