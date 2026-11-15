.class public final Lsh1;
.super Lt3;
.source "SourceFile"

# interfaces
.implements Lxy4;


# instance fields
.field public final c:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

.field public final d:Lby6;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Leh5;Lby6;Lto8;)V
    .locals 1

    const-string v0, "declarationDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiverType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lt3;-><init>(Leh5;Lto8;)V

    iput-object p1, p0, Lsh1;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    iput-object p3, p0, Lsh1;->d:Lby6;

    return-void
.end method


# virtual methods
.method public a()Lby6;
    .locals 0

    iget-object p0, p0, Lsh1;->d:Lby6;

    return-object p0
.end method

.method public c()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 0

    iget-object p0, p0, Lsh1;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cxt { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsh1;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
