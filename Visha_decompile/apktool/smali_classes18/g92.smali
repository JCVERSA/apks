.class public abstract Lg92;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lqq6;Lvx9;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Led3;Ljd5;)Lf92;
    .locals 15

    move-object v2, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v0, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const-string v5, "module"

    invoke-static {p0, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "storageManager"

    invoke-static {v1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "notFoundClasses"

    invoke-static {v7, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "lazyJavaPackageFragmentProvider"

    move-object/from16 v6, p3

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "reflectKotlinClassFinder"

    invoke-static {v0, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "deserializedDescriptorResolver"

    invoke-static {v3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "errorReporter"

    move-object/from16 v8, p6

    invoke-static {v8, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "jvmMetadataVersion"

    invoke-static {v4, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lu65;

    invoke-direct {v5, v0, v3}, Lu65;-><init>(Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;)V

    invoke-static {p0, v7, v1, v0, v4}, Lqe0;->a(Lqq6;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lvx9;Lvg5;Ljd5;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;

    move-result-object v9

    new-instance v13, Lf92;

    sget-object v3, Lh92$a;->a:Lh92$a;

    sget-object v10, Lqr5$a;->a:Lqr5$a;

    sget-object v0, Lzh1;->a:Lzh1$a;

    invoke-virtual {v0}, Lzh1$a;->a()Lzh1;

    move-result-object v11

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/e;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/e$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/e$a;->a()Lkotlin/reflect/jvm/internal/impl/types/checker/f;

    move-result-object v12

    new-instance v14, Lkbb;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/c;->a:Lkotlin/reflect/jvm/internal/impl/types/c;

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v14, v0}, Lkbb;-><init>(Ljava/util/List;)V

    move-object v0, v13

    move-object v4, v5

    move-object v5, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v14

    invoke-direct/range {v0 .. v12}, Lf92;-><init>(Lvx9;Lqq6;Lh92;Lu65;Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Led3;Lqr5;Lzh1;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Lkbb;)V

    return-object v13
.end method

.method public static final b(Lx65;Lqq6;Lvx9;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Led3;Lj85;Lnq6;Llv7;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;
    .locals 31

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v9, p3

    move-object/from16 v2, p0

    move-object/from16 v15, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    const-string v0, "javaClassFinder"

    move-object/from16 v5, p0

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectKotlinClassFinder"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaSourceElementFactory"

    move-object/from16 v5, p7

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleModuleClassResolver"

    move-object/from16 v5, p8

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagePartProvider"

    move-object/from16 v5, p9

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Le85;

    move-object v0, v8

    sget-object v7, Laj9;->a:Laj9;

    move-object v5, v7

    move-object/from16 p0, v8

    const-string v8, "DO_NOTHING"

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ld85;->a:Ld85;

    move-object v7, v8

    const-string v9, "EMPTY"

    invoke-static {v8, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lb85$a;->a:Lb85$a;

    move-object/from16 v9, p0

    new-instance v14, Lf19;

    move-object/from16 p0, v0

    move-object/from16 v27, v9

    move-object/from16 v0, p3

    move-object v9, v14

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v16

    move-object/from16 v28, v1

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/Iterable;

    invoke-direct {v14, v13, v1}, Lf19;-><init>(Lvx9;Ljava/lang/Iterable;)V

    sget-object v13, Lt6a$a;->a:Lt6a$a;

    sget-object v14, Lqr5$a;->a:Lqr5$a;

    move-object/from16 v1, p1

    move-object/from16 v29, v2

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v16, v2

    invoke-direct {v2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;-><init>(Lqq6;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;)V

    new-instance v0, Lkd;

    move-object/from16 v17, v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->d:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-result-object v2

    invoke-direct {v0, v2}, Lkd;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

    move-object/from16 v18, v0

    new-instance v2, Lr85;

    move-object/from16 v30, v3

    sget-object v3, Lf85$a;->a:Lf85$a;

    move-object/from16 v20, v3

    invoke-direct {v2, v3}, Lr85;-><init>(Lf85;)V

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;-><init>(Lr85;)V

    sget-object v19, Lz65$a;->a:Lz65$a;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/e;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/e$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/e$a;->a()Lkotlin/reflect/jvm/internal/impl/types/checker/f;

    move-result-object v21

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$a;->a()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-result-object v22

    new-instance v0, Lg92$a;

    move-object/from16 v23, v0

    invoke-direct {v0}, Lg92$a;-><init>()V

    const/high16 v25, 0x800000

    const/16 v26, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct/range {v0 .. v26}, Le85;-><init>(Lvx9;Lx65;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Laj9;Led3;Ld85;Lb85;Le19;Lj85;Lnq6;Llv7;Lt6a;Lqr5;Lqq6;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkd;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lz65;Lf85;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lu75;Li8a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;-><init>(Le85;)V

    return-object v0
.end method

.method public static synthetic c(Lx65;Lqq6;Lvx9;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Led3;Lj85;Lnq6;Llv7;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    sget-object v0, Llv7$a;->a:Llv7$a;

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p9

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v10}, Lg92;->b(Lx65;Lqq6;Lvx9;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Led3;Lj85;Lnq6;Llv7;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    move-result-object v0

    return-object v0
.end method
