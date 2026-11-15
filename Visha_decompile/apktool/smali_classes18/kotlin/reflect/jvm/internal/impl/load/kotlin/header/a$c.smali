.class public Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;)V

    return-void
.end method

.method public static synthetic f(I)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v4, :cond_1

    if-eq p0, v0, :cond_0

    const-string v5, "classLiteralValue"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_0
    const-string v5, "classId"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_1
    const-string v5, "enumEntryName"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_2
    const-string v5, "enumClassId"

    aput-object v5, v1, v3

    :goto_0
    const-string v3, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor"

    aput-object v3, v1, v2

    if-eq p0, v2, :cond_4

    if-eq p0, v4, :cond_4

    if-eq p0, v0, :cond_3

    const-string p0, "visitClassLiteral"

    aput-object p0, v1, v4

    goto :goto_1

    :cond_3
    const-string p0, "visitAnnotation"

    aput-object p0, v1, v4

    goto :goto_1

    :cond_4
    const-string p0, "visitEnum"

    aput-object p0, v1, v4

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lby6;Lxw0;Lby6;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->f(I)V

    :cond_0
    if-nez p3, :cond_1

    const/4 p0, 0x2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->f(I)V

    :cond_1
    return-void
.end method

.method public b(Lby6;Lxw0;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x3

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->f(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Lby6;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lby6;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "k"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->getById(I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->e(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    goto :goto_0

    :cond_1
    const-string v0, "mv"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of p1, p2, [I

    if-eqz p1, :cond_5

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;

    check-cast p2, [I

    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->f(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;[I)[I

    goto :goto_0

    :cond_2
    const-string v0, "xs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_5

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;

    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->g(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "xi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->h(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;I)I

    goto :goto_0

    :cond_4
    const-string v0, "pn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_5

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;

    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->i(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method public d(Lby6;Lzw0;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->f(I)V

    :cond_0
    return-void
.end method

.method public e(Lby6;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lby6;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "d1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->g()Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "d2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;->h()Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c$a;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;)V

    return-object v0
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$b;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method
