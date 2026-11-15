.class public final Ln65;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln65;

.field public static final b:Lby6;

.field public static final c:Lby6;

.field public static final d:Lby6;

.field public static final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln65;

    invoke-direct {v0}, Ln65;-><init>()V

    sput-object v0, Ln65;->a:Ln65;

    const-string v0, "message"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "identifier(\"message\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ln65;->b:Lby6;

    const-string v0, "allowedTargets"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "identifier(\"allowedTargets\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ln65;->c:Lby6;

    const-string v0, "value"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v1, "identifier(\"value\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ln65;->d:Lby6;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->H:Lo54;

    sget-object v1, Lyc5;->d:Lo54;

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->L:Lo54;

    sget-object v2, Lyc5;->f:Lo54;

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->P:Lo54;

    sget-object v3, Lyc5;->i:Lo54;

    invoke-static {v2, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ln65;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Ln65;Lk65;Lgj5;ZILjava/lang/Object;)Lgd;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ln65;->e(Lk65;Lgj5;Z)Lgd;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lo54;Lo65;Lgj5;)Lgd;
    .locals 6

    const-string p0, "kotlinName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "annotationOwner"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->y:Lo54;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lyc5;->h:Lo54;

    const-string v0, "DEPRECATED_ANNOTATION"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lo65;->a(Lo54;)Lk65;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p2}, Lo65;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaDeprecatedAnnotationDescriptor;

    invoke-direct {p1, p0, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaDeprecatedAnnotationDescriptor;-><init>(Lk65;Lgj5;)V

    return-object p1

    :cond_1
    sget-object p0, Ln65;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo54;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p2, p0}, Lo65;->a(Lo54;)Lk65;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v0, Ln65;->a:Ln65;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Ln65;->f(Ln65;Lk65;Lgj5;ZILjava/lang/Object;)Lgd;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final b()Lby6;
    .locals 0

    sget-object p0, Ln65;->b:Lby6;

    return-object p0
.end method

.method public final c()Lby6;
    .locals 0

    sget-object p0, Ln65;->d:Lby6;

    return-object p0
.end method

.method public final d()Lby6;
    .locals 0

    sget-object p0, Ln65;->c:Lby6;

    return-object p0
.end method

.method public final e(Lk65;Lgj5;Z)Lgd;
    .locals 1

    const-string p0, "annotation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lk65;->c()Lxw0;

    move-result-object p0

    sget-object v0, Lyc5;->d:Lo54;

    invoke-static {v0}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaTargetAnnotationDescriptor;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaTargetAnnotationDescriptor;-><init>(Lk65;Lgj5;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lyc5;->f:Lo54;

    invoke-static {v0}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaRetentionAnnotationDescriptor;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaRetentionAnnotationDescriptor;-><init>(Lk65;Lgj5;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lyc5;->i:Lo54;

    invoke-static {v0}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationDescriptor;

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->P:Lo54;

    invoke-direct {p0, p2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationDescriptor;-><init>(Lgj5;Lk65;Lo54;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lyc5;->h:Lo54;

    invoke-static {v0}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    invoke-direct {p0, p2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;-><init>(Lgj5;Lk65;Z)V

    :goto_0
    return-object p0
.end method
