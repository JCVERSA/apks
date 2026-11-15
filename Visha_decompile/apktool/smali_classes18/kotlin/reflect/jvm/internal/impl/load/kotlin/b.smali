.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$a;
    }
.end annotation


# instance fields
.field public final c:Lqq6;

.field public final d:Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

.field public final e:Lid;

.field public f:Ljd5;


# direct methods
.method public constructor <init>(Lqq6;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lvx9;Lvg5;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader;-><init>(Lvx9;Lvg5;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->c:Lqq6;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    new-instance p3, Lid;

    invoke-direct {p3, p1, p2}, Lid;-><init>(Lqq6;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->e:Lid;

    sget-object p1, Ljd5;->i:Ljd5;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->f:Ljd5;

    return-void
.end method

.method public static final synthetic I(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Lby6;Ljava/lang/Object;)Lpf1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->J(Lby6;Ljava/lang/Object;)Lpf1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic F(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->K(Ljava/lang/String;Ljava/lang/Object;)Lpf1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic H(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lpf1;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->O(Lpf1;)Lpf1;

    move-result-object p0

    return-object p0
.end method

.method public final J(Lby6;Ljava/lang/Object;)Lpf1;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->c:Lqq6;

    invoke-virtual {v0, p2, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->c(Ljava/lang/Object;Lqq6;)Lpf1;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljd3;->b:Ljd3$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported annotation argument: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljd3$a;->a(Ljava/lang/String;)Ljd3;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public K(Ljava/lang/String;Ljava/lang/Object;)Lpf1;
    .locals 4

    const-string v0, "desc"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "ZBCS"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v0, v1}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_3

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2

    const/16 v1, 0x53

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_4

    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    int-to-short p1, p2

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    int-to-char p1, p2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    int-to-byte p1, p2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_5
    :goto_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->c:Lqq6;

    invoke-virtual {p1, p2, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->c(Ljava/lang/Object;Lqq6;)Lpf1;

    move-result-object p0

    return-object p0
.end method

.method public L(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lcy6;)Lgd;
    .locals 1

    const-string v0, "proto"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->e:Lid;

    invoke-virtual {p0, p1, p2}, Lid;->a(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lcy6;)Lgd;

    move-result-object p0

    return-object p0
.end method

.method public final M(Lxw0;)Lqw0;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->c:Lqq6;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    invoke-static {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->c(Lqq6;Lxw0;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;)Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public N(Ljd5;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->f:Ljd5;

    return-void
.end method

.method public O(Lpf1;)Lpf1;
    .locals 2

    const-string p0, "constant"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lqo0;

    if-eqz p0, :cond_0

    new-instance p0, Leeb;

    check-cast p1, Lqo0;

    invoke-virtual {p1}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-direct {p0, p1}, Leeb;-><init>(B)V

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_0
    instance-of p0, p1, Lei9;

    if-eqz p0, :cond_1

    new-instance p0, Lgfb;

    check-cast p1, Lei9;

    invoke-virtual {p1}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-direct {p0, p1}, Lgfb;-><init>(S)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lx15;

    if-eqz p0, :cond_2

    new-instance p0, Lpeb;

    check-cast p1, Lx15;

    invoke-virtual {p1}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lpeb;-><init>(I)V

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lnr5;

    if-eqz p0, :cond_3

    new-instance p0, Lveb;

    check-cast p1, Lnr5;

    invoke-virtual {p1}, Lpf1;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lveb;-><init>(J)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public t()Ljd5;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->f:Ljd5;

    return-object p0
.end method

.method public w(Lxw0;Lyt9;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;
    .locals 7

    const-string v0, "annotationClassId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->M(Lxw0;)Lqw0;

    move-result-object v3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Lqw0;Lxw0;Ljava/util/List;Lyt9;)V

    return-object v0
.end method

.method public bridge synthetic z(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lcy6;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->L(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lcy6;)Lgd;

    move-result-object p0

    return-object p0
.end method
