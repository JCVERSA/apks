.class public Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$b;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$d;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;
    }
.end annotation


# static fields
.field public static final j:Z

.field public static final k:Ljava/util/Map;


# instance fields
.field public a:[I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

.field public i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlin.ignore.old.metadata"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->j:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->k:Ljava/util/Map;

    new-instance v1, Lo54;

    const-string v2, "kotlin.jvm.internal.KotlinClass"

    invoke-direct {v1, v2}, Lo54;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lo54;

    const-string v2, "kotlin.jvm.internal.KotlinFileFacade"

    invoke-direct {v1, v2}, Lo54;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lo54;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClass"

    invoke-direct {v1, v2}, Lo54;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->MULTIFILE_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lo54;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClassPart"

    invoke-direct {v1, v2}, Lo54;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lo54;

    const-string v2, "kotlin.jvm.internal.KotlinSyntheticClass"

    invoke-direct {v1, v2}, Lo54;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->SYNTHETIC_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->a:[I

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->c:I

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->e:[Ljava/lang/String;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->g:[Ljava/lang/String;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->h:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->i:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic c(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "classId"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "source"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "visitAnnotation"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic d(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->i:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->h:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    return-object p1
.end method

.method public static synthetic f(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;[I)[I
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->a:[I

    return-object p1
.end method

.method public static synthetic g(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic h(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;I)I
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->c:I

    return p1
.end method

.method public static synthetic i(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic j(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->e:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic k(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->f:[Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Lxw0;Lyt9;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/c$a;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->c(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->c(I)V

    :cond_1
    invoke-virtual {p1}, Lxw0;->b()Lo54;

    move-result-object p2

    sget-object v0, Lyc5;->a:Lo54;

    invoke-virtual {p2, v0}, Lo54;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;

    invoke-direct {p1, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$a;)V

    return-object p1

    :cond_2
    sget-object v0, Lyc5;->s:Lo54;

    invoke-virtual {p2, v0}, Lo54;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$d;

    invoke-direct {p1, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$a;)V

    return-object p1

    :cond_3
    sget-boolean p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->j:Z

    if-eqz p2, :cond_4

    return-object v1

    :cond_4
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->h:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eqz p2, :cond_5

    return-object v1

    :cond_5
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->k:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eqz p1, :cond_6

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->h:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e;

    invoke-direct {p1, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a$a;)V

    return-object p1

    :cond_6
    return-object v1
.end method

.method public l(Ljd5;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;
    .locals 12

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->h:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->a:[I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v4, Ljd5;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->a:[I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->c:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v4, v0, v2}, Ljd5;-><init>([IZ)V

    invoke-virtual {v4, p1}, Ljd5;->h(Ljd5;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->e:[Ljava/lang/String;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->g:[Ljava/lang/String;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->e:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->e:[Ljava/lang/String;

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->i:[Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lxe0;->e([Ljava/lang/String;)[B

    move-result-object v1

    :cond_4
    move-object v11, v1

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->h:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->e:[Ljava/lang/String;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->g:[Ljava/lang/String;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->f:[Ljava/lang/String;

    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->b:Ljava/lang/String;

    iget v9, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->c:I

    iget-object v10, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->d:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;Ljd5;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)V

    return-object p1

    :cond_5
    :goto_2
    return-object v1
.end method

.method public m()Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;
    .locals 1

    sget-object v0, Ljd5;->i:Ljd5;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->l(Ljd5;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    move-result-object p0

    return-object p0
.end method

.method public final n()Z
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/a;->h:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method
