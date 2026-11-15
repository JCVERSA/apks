.class public final Lffb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final a:Lffb;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lffb;

    invoke-direct {v0}, Lffb;-><init>()V

    sput-object v0, Lffb;->a:Lffb;

    sget-object v0, Lyg9;->a:Lyg9;

    invoke-static {v0}, Lqn0;->C(Lyg9;)Lef5;

    move-result-object v0

    const-string v1, "kotlin.UShort"

    invoke-static {v1, v0}, Le05;->a(Ljava/lang/String;Lef5;)Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    sput-object v0, Lffb;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)S
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lffb;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lhu1;->w(Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p0

    invoke-interface {p0}, Lhu1;->l()S

    move-result p0

    invoke-static {p0}, Lbfb;->b(S)S

    move-result p0

    return p0
.end method

.method public b(Lca3;S)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lffb;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->g(Lkotlinx/serialization/descriptors/a;)Lca3;

    move-result-object p0

    invoke-interface {p0, p2}, Lca3;->k(S)V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lffb;->a(Lhu1;)S

    move-result p0

    invoke-static {p0}, Lbfb;->a(S)Lbfb;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lffb;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lbfb;

    invoke-virtual {p2}, Lbfb;->g()S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lffb;->b(Lca3;S)V

    return-void
.end method
