.class public final Ldeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final a:Ldeb;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldeb;

    invoke-direct {v0}, Ldeb;-><init>()V

    sput-object v0, Ldeb;->a:Ldeb;

    sget-object v0, Lko0;->a:Lko0;

    invoke-static {v0}, Lqn0;->v(Lko0;)Lef5;

    move-result-object v0

    const-string v1, "kotlin.UByte"

    invoke-static {v1, v0}, Le05;->a(Ljava/lang/String;Lef5;)Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    sput-object v0, Ldeb;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)B
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldeb;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lhu1;->w(Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p0

    invoke-interface {p0}, Lhu1;->H()B

    move-result p0

    invoke-static {p0}, Lzdb;->b(B)B

    move-result p0

    return p0
.end method

.method public b(Lca3;B)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldeb;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->g(Lkotlinx/serialization/descriptors/a;)Lca3;

    move-result-object p0

    invoke-interface {p0, p2}, Lca3;->e(B)V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ldeb;->a(Lhu1;)B

    move-result p0

    invoke-static {p0}, Lzdb;->a(B)Lzdb;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Ldeb;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lzdb;

    invoke-virtual {p2}, Lzdb;->g()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Ldeb;->b(Lca3;B)V

    return-void
.end method
