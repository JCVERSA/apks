.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lby6;

.field public static final b:Lby6;

.field public static final c:Lby6;

.field public static final d:Lby6;

.field public static final e:Lby6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "message"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "identifier(\"message\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->a:Lby6;

    const-string v0, "replaceWith"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "identifier(\"replaceWith\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->b:Lby6;

    const-string v0, "level"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "identifier(\"level\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->c:Lby6;

    const-string v0, "expression"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "identifier(\"expression\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->d:Lby6;

    const-string v0, "imports"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "identifier(\"imports\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->e:Lby6;

    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/builtins/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgd;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replaceWith"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->B:Lo54;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->d:Lby6;

    new-instance v3, Ls0a;

    invoke-direct {v3, p2}, Ls0a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->e:Lby6;

    new-instance v3, Lvh;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt$createDeprecatedAnnotation$replaceWithAnnotation$1;

    invoke-direct {v5, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt$createDeprecatedAnnotation$replaceWithAnnotation$1;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/d;)V

    invoke-direct {v3, v4, v5}, Lvh;-><init>(Ljava/util/List;Le74;)V

    invoke-static {v2, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    filled-new-array {p2, v2}, [Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/d;Lo54;Ljava/util/Map;)V

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->y:Lo54;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->a:Lby6;

    new-instance v3, Ls0a;

    invoke-direct {v3, p1}, Ls0a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->b:Lby6;

    new-instance v3, Lld;

    invoke-direct {v3, v0}, Lld;-><init>(Lgd;)V

    invoke-static {v2, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->c:Lby6;

    new-instance v3, Lfb3;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->A:Lo54;

    invoke-static {v4}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v4

    const-string v5, "topLevel(StandardNames.FqNames.deprecationLevel)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p3

    const-string v5, "identifier(level)"

    invoke-static {p3, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, p3}, Lfb3;-><init>(Lxw0;Lby6;)V

    invoke-static {v2, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    filled-new-array {p1, v0, p3}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p2, p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/BuiltInAnnotationDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/d;Lo54;Ljava/util/Map;)V

    return-object p2
.end method

.method public static synthetic b(Lkotlin/reflect/jvm/internal/impl/builtins/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lgd;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, ""

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, "WARNING"

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->a(Lkotlin/reflect/jvm/internal/impl/builtins/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgd;

    move-result-object p0

    return-object p0
.end method
