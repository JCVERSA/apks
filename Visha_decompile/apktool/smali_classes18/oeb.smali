.class public final Loeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final a:Loeb;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loeb;

    invoke-direct {v0}, Loeb;-><init>()V

    sput-object v0, Loeb;->a:Loeb;

    sget-object v0, Lp15;->a:Lp15;

    invoke-static {v0}, Lqn0;->A(Lp15;)Lef5;

    move-result-object v0

    const-string v1, "kotlin.UInt"

    invoke-static {v1, v0}, Le05;->a(Ljava/lang/String;Lef5;)Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    sput-object v0, Loeb;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)I
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Loeb;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lhu1;->w(Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p0

    invoke-interface {p0}, Lhu1;->t()I

    move-result p0

    invoke-static {p0}, Lkeb;->b(I)I

    move-result p0

    return p0
.end method

.method public b(Lca3;I)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Loeb;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->g(Lkotlinx/serialization/descriptors/a;)Lca3;

    move-result-object p0

    invoke-interface {p0, p2}, Lca3;->s(I)V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Loeb;->a(Lhu1;)I

    move-result p0

    invoke-static {p0}, Lkeb;->a(I)Lkeb;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Loeb;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkeb;

    invoke-virtual {p2}, Lkeb;->g()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Loeb;->b(Lca3;I)V

    return-void
.end method
