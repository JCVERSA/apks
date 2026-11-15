.class public abstract Ljd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo54;

.field public static final b:Lo54;

.field public static final c:Lo54;

.field public static final d:Lo54;

.field public static final e:Ljava/util/List;

.field public static final f:Ljava/util/Map;

.field public static final g:Ljava/util/Map;

.field public static final h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lo54;

    const-string v1, "javax.annotation.meta.TypeQualifierNickname"

    invoke-direct {v0, v1}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljd;->a:Lo54;

    new-instance v0, Lo54;

    const-string v1, "javax.annotation.meta.TypeQualifier"

    invoke-direct {v0, v1}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljd;->b:Lo54;

    new-instance v0, Lo54;

    const-string v1, "javax.annotation.meta.TypeQualifierDefault"

    invoke-direct {v0, v1}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljd;->c:Lo54;

    new-instance v0, Lo54;

    const-string v1, "kotlin.annotations.jvm.UnderMigration"

    invoke-direct {v0, v1}, Lo54;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljd;->d:Lo54;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->FIELD:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->METHOD_RETURN_TYPE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_USE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljd;->e:Ljava/util/List;

    invoke-static {}, Lzc5;->l()Lo54;

    move-result-object v1

    new-instance v3, Lg75;

    new-instance v4, Lm37;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lm37;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v3, v4, v9, v6}, Lg75;-><init>(Lm37;Ljava/util/Collection;Z)V

    invoke-static {v1, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {}, Lzc5;->i()Lo54;

    move-result-object v3

    new-instance v4, Lg75;

    new-instance v9, Lm37;

    invoke-direct {v9, v5, v6, v7, v8}, Lm37;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v4, v9, v0, v6}, Lg75;-><init>(Lm37;Ljava/util/Collection;Z)V

    invoke-static {v3, v4}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v1, v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljd;->f:Ljava/util/Map;

    new-instance v1, Lo54;

    const-string v3, "javax.annotation.ParametersAreNullableByDefault"

    invoke-direct {v1, v3}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v3, Lg75;

    new-instance v10, Lm37;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v10, v4, v6, v7, v8}, Lm37;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/util/Collection;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lg75;-><init>(Lm37;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    new-instance v3, Lo54;

    const-string v4, "javax.annotation.ParametersAreNonnullByDefault"

    invoke-direct {v3, v4}, Lo54;-><init>(Ljava/lang/String;)V

    new-instance v4, Lg75;

    new-instance v10, Lm37;

    invoke-direct {v10, v5, v6, v7, v8}, Lm37;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/util/Collection;

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Lg75;-><init>(Lm37;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, v4}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    filled-new-array {v1, v2}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/collections/a;->s(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljd;->g:Ljava/util/Map;

    invoke-static {}, Lzc5;->f()Lo54;

    move-result-object v0

    invoke-static {}, Lzc5;->e()Lo54;

    move-result-object v1

    filled-new-array {v0, v1}, [Lo54;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljd;->h:Ljava/util/Set;

    return-void
.end method

.method public static final a()Ljava/util/Map;
    .locals 1

    sget-object v0, Ljd;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static final b()Ljava/util/Set;
    .locals 1

    sget-object v0, Ljd;->h:Ljava/util/Set;

    return-object v0
.end method

.method public static final c()Ljava/util/Map;
    .locals 1

    sget-object v0, Ljd;->f:Ljava/util/Map;

    return-object v0
.end method

.method public static final d()Lo54;
    .locals 1

    sget-object v0, Ljd;->d:Lo54;

    return-object v0
.end method

.method public static final e()Lo54;
    .locals 1

    sget-object v0, Ljd;->c:Lo54;

    return-object v0
.end method

.method public static final f()Lo54;
    .locals 1

    sget-object v0, Ljd;->b:Lo54;

    return-object v0
.end method

.method public static final g()Lo54;
    .locals 1

    sget-object v0, Ljd;->a:Lo54;

    return-object v0
.end method
