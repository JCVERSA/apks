.class public final Lueb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final a:Lueb;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lueb;

    invoke-direct {v0}, Lueb;-><init>()V

    sput-object v0, Lueb;->a:Lueb;

    sget-object v0, Lcr5;->a:Lcr5;

    invoke-static {v0}, Lqn0;->B(Lcr5;)Lef5;

    move-result-object v0

    const-string v1, "kotlin.ULong"

    invoke-static {v1, v0}, Le05;->a(Ljava/lang/String;Lef5;)Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    sput-object v0, Lueb;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)J
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lueb;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lhu1;->w(Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p0

    invoke-interface {p0}, Lhu1;->h()J

    move-result-wide p0

    invoke-static {p0, p1}, Lqeb;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public b(Lca3;J)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lueb;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->g(Lkotlinx/serialization/descriptors/a;)Lca3;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lca3;->z(J)V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lueb;->a(Lhu1;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lqeb;->a(J)Lqeb;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lueb;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lqeb;

    invoke-virtual {p2}, Lqeb;->g()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lueb;->b(Lca3;J)V

    return-void
.end method
