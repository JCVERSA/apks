.class public final Ljb5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljb5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Ljb5$a;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljb5$a;

    invoke-direct {v0}, Ljb5$a;-><init>()V

    sput-object v0, Ljb5$a;->b:Ljb5$a;

    const-string v0, "kotlinx.serialization.json.JsonObject"

    sput-object v0, Ljb5$a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lhz9;->a:Lhz9;

    invoke-static {v0}, Lqn0;->D(Lhz9;)Lef5;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-static {v0, v1}, Lqn0;->k(Lef5;Lef5;)Lef5;

    move-result-object v0

    invoke-interface {v0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    iput-object v0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-object p0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->b()Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public d(I)Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    return-object p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result p0

    return p0
.end method

.method public f(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->g(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getKind()Lid9;
    .locals 0

    iget-object p0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    sget-object p0, Ljb5$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public i(I)Z
    .locals 0

    iget-object p0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->i(I)Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .locals 0

    iget-object p0, p0, Ljb5$a;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->isInline()Z

    move-result p0

    return p0
.end method
