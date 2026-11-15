.class public final Ly95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly95$a;
    }
.end annotation


# static fields
.field public static final a:Ly95;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly95;

    invoke-direct {v0}, Ly95;-><init>()V

    sput-object v0, Ly95;->a:Ly95;

    sget-object v0, Ly95$a;->b:Ly95$a;

    sput-object v0, Ly95;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)Lkotlinx/serialization/json/a;
    .locals 1

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->b(Lhu1;)V

    new-instance p0, Lkotlinx/serialization/json/a;

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-static {v0}, Lqn0;->h(Lef5;)Lef5;

    move-result-object v0

    invoke-interface {v0, p1}, Lk92;->deserialize(Lhu1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/a;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public b(Lca3;Lkotlinx/serialization/json/a;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lma5;->c(Lca3;)V

    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-static {p0}, Lqn0;->h(Lef5;)Lef5;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lnd9;->serialize(Lca3;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ly95;->a(Lhu1;)Lkotlinx/serialization/json/a;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Ly95;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/a;

    invoke-virtual {p0, p1, p2}, Ly95;->b(Lca3;Lkotlinx/serialization/json/a;)V

    return-void
.end method
