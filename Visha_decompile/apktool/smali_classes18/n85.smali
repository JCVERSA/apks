.class public final Ln85;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln85;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln85;

    invoke-direct {v0}, Ln85;-><init>()V

    sput-object v0, Ln85;->a:Ln85;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Ln85;Lo54;Lkotlin/reflect/jvm/internal/impl/builtins/d;Ljava/lang/Integer;ILjava/lang/Object;)Lqw0;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ln85;->e(Lo54;Lkotlin/reflect/jvm/internal/impl/builtins/d;Ljava/lang/Integer;)Lqw0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lqw0;)Lqw0;
    .locals 3

    const-string p0, "mutable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ly82;->m(Lxt1;)Lp54;

    move-result-object v0

    sget-object v1, Lm85;->a:Lm85;

    invoke-virtual {v1, v0}, Lm85;->o(Lp54;)Lo54;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->o(Lo54;)Lqw0;

    move-result-object p0

    const-string p1, "descriptor.builtIns.getB\u2026Name(oppositeClassFqName)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " collection"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lqw0;)Lqw0;
    .locals 2

    const-string p0, "readOnly"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ly82;->m(Lxt1;)Lp54;

    move-result-object p0

    sget-object v0, Lm85;->a:Lm85;

    invoke-virtual {v0, p0}, Lm85;->p(Lp54;)Lo54;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->j(Lxt1;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->o(Lo54;)Lqw0;

    move-result-object p0

    const-string p1, "descriptor.builtIns.getB\u2026Name(oppositeClassFqName)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "read-only"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " collection"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lqw0;)Z
    .locals 0

    const-string p0, "mutable"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lm85;->a:Lm85;

    invoke-static {p1}, Ly82;->m(Lxt1;)Lp54;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm85;->k(Lp54;)Z

    move-result p0

    return p0
.end method

.method public final d(Lqw0;)Z
    .locals 0

    const-string p0, "readOnly"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lm85;->a:Lm85;

    invoke-static {p1}, Ly82;->m(Lxt1;)Lp54;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm85;->l(Lp54;)Z

    move-result p0

    return p0
.end method

.method public final e(Lo54;Lkotlin/reflect/jvm/internal/impl/builtins/d;Ljava/lang/Integer;)Lqw0;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "builtIns"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    sget-object p0, Lm85;->a:Lm85;

    invoke-virtual {p0}, Lm85;->h()Lo54;

    move-result-object p0

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/e;->a(I)Lxw0;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lm85;->a:Lm85;

    invoke-virtual {p0, p1}, Lm85;->m(Lo54;)Lxw0;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lxw0;->b()Lo54;

    move-result-object p0

    invoke-virtual {p2, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->o(Lo54;)Lqw0;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final g(Lo54;Lkotlin/reflect/jvm/internal/impl/builtins/d;)Ljava/util/Collection;
    .locals 7

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtIns"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Ln85;->f(Ln85;Lo54;Lkotlin/reflect/jvm/internal/impl/builtins/d;Ljava/lang/Integer;ILjava/lang/Object;)Lqw0;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_0
    sget-object p1, Lm85;->a:Lm85;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->m(Lxt1;)Lp54;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm85;->p(Lp54;)Lo54;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lxe9;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_1
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->o(Lo54;)Lqw0;

    move-result-object p1

    const-string p2, "builtIns.getBuiltInClass\u2026otlinMutableAnalogFqName)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Lqw0;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const/4 p0, 0x1

    aput-object p1, p2, p0

    invoke-static {p2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
