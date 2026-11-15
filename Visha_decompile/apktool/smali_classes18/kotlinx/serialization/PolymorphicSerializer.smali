.class public final Lkotlinx/serialization/PolymorphicSerializer;
.super Lp3;
.source "SourceFile"


# instance fields
.field public final a:Lde5;

.field public b:Ljava/util/List;

.field public final c:Lyi5;


# direct methods
.method public constructor <init>(Lde5;)V
    .locals 1

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lp3;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/PolymorphicSerializer;->a:Lde5;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/PolymorphicSerializer;->b:Ljava/util/List;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;

    invoke-direct {v0, p0}, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;-><init>(Lkotlinx/serialization/PolymorphicSerializer;)V

    invoke-static {p1, v0}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/PolymorphicSerializer;->c:Lyi5;

    return-void
.end method

.method public static final synthetic f(Lkotlinx/serialization/PolymorphicSerializer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/PolymorphicSerializer;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public e()Lde5;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/PolymorphicSerializer;->a:Lde5;

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/PolymorphicSerializer;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kotlinx.serialization.PolymorphicSerializer(baseClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/PolymorphicSerializer;->e()Lde5;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
