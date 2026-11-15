.class public final Lkotlin/reflect/jvm/internal/impl/util/Checks;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lby6;

.field public final b:Lkotlin/text/Regex;

.field public final c:Ljava/util/Collection;

.field public final d:Le74;

.field public final e:[Lkotlin/reflect/jvm/internal/impl/util/b;


# direct methods
.method public varargs constructor <init>(Lby6;Lkotlin/text/Regex;Ljava/util/Collection;Le74;[Lkotlin/reflect/jvm/internal/impl/util/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->a:Lby6;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->b:Lkotlin/text/Regex;

    .line 4
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->c:Ljava/util/Collection;

    .line 5
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->d:Le74;

    .line 6
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->e:[Lkotlin/reflect/jvm/internal/impl/util/b;

    return-void
.end method

.method public constructor <init>(Lby6;[Lkotlin/reflect/jvm/internal/impl/util/b;Le74;)V
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Lkotlin/reflect/jvm/internal/impl/util/b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lby6;Lkotlin/text/Regex;Ljava/util/Collection;Le74;[Lkotlin/reflect/jvm/internal/impl/util/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lby6;[Lkotlin/reflect/jvm/internal/impl/util/b;Le74;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 7
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/util/Checks$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/Checks$2;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lby6;[Lkotlin/reflect/jvm/internal/impl/util/b;Le74;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/b;Le74;)V
    .locals 6

    const-string v0, "nameList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Lkotlin/reflect/jvm/internal/impl/util/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lby6;Lkotlin/text/Regex;Ljava/util/Collection;Le74;[Lkotlin/reflect/jvm/internal/impl/util/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/b;Le74;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 11
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/util/Checks$4;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/Checks$4;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/b;Le74;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/text/Regex;[Lkotlin/reflect/jvm/internal/impl/util/b;Le74;)V
    .locals 6

    const-string v0, "regex"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Lkotlin/reflect/jvm/internal/impl/util/b;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lby6;Lkotlin/text/Regex;Ljava/util/Collection;Le74;[Lkotlin/reflect/jvm/internal/impl/util/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/text/Regex;[Lkotlin/reflect/jvm/internal/impl/util/b;Le74;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 9
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/util/Checks$3;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/Checks$3;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/text/Regex;[Lkotlin/reflect/jvm/internal/impl/util/b;Le74;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/util/c;
    .locals 4

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->e:[Lkotlin/reflect/jvm/internal/impl/util/b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lkotlin/reflect/jvm/internal/impl/util/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/util/c$b;

    invoke-direct {p0, v3}, Lkotlin/reflect/jvm/internal/impl/util/c$b;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->d:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/util/c$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/util/c$b;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/util/c$c;->b:Lkotlin/reflect/jvm/internal/impl/util/c$c;

    return-object p0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Z
    .locals 3

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->a:Lby6;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->a:Lby6;

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->b:Lkotlin/text/Regex;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v0

    invoke-virtual {v0}, Lby6;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "functionDescriptor.name.asString()"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->b:Lkotlin/text/Regex;

    invoke-virtual {v2, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/Checks;->c:Ljava/util/Collection;

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
