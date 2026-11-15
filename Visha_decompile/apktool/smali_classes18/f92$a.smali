.class public final Lf92$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf92$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf92$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lvg5;Lvg5;Lx65;Ljava/lang/String;Led3;Lj85;)Lf92$a$a;
    .locals 25

    move-object/from16 v0, p4

    const-string v1, "kotlinClassFinder"

    move-object/from16 v14, p1

    invoke-static {v14, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jvmBuiltInsKotlinClassFinder"

    move-object/from16 v15, p2

    invoke-static {v15, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "javaClassFinder"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "moduleName"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errorReporter"

    move-object/from16 v13, p5

    invoke-static {v13, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "javaSourceElementFactory"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v3, "DeserializationComponentsForJava.ModuleData"

    invoke-direct {v1, v3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;->FROM_DEPENDENCIES:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;

    invoke-direct {v12, v1, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;-><init>(Lvx9;Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;)V

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lby6;->j(Ljava/lang/String;)Lby6;

    move-result-object v0

    const-string v3, "special(\"<$moduleName>\")"

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x38

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v12

    invoke-direct/range {v16 .. v24}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;-><init>(Lby6;Lvx9;Lkotlin/reflect/jvm/internal/impl/builtins/d;Lvda;Ljava/util/Map;Lby6;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v12, v11}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->E0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v11, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->J0(Lqq6;Z)V

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-direct {v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;-><init>()V

    new-instance v8, Lhn9;

    invoke-direct {v8}, Lhn9;-><init>()V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    invoke-direct {v7, v1, v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;-><init>(Lvx9;Lqq6;)V

    const/16 v16, 0x200

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v11

    move-object v4, v1

    move-object v5, v7

    move-object/from16 v6, p1

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 p0, v8

    move-object/from16 v8, p5

    move-object/from16 p3, v10

    move-object/from16 v10, p0

    move-object/from16 p4, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v12

    move/from16 v12, v16

    move-object/from16 v13, v17

    invoke-static/range {v2 .. v13}, Lg92;->c(Lx65;Lqq6;Lvx9;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Led3;Lj85;Lnq6;Llv7;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    move-result-object v10

    sget-object v9, Ljd5;->i:Ljd5;

    move-object/from16 v2, p4

    move-object v3, v1

    move-object/from16 v4, v19

    move-object v5, v10

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v9}, Lg92;->a(Lqq6;Lvx9;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Led3;Ljd5;)Lf92;

    move-result-object v12

    move-object/from16 v13, p3

    invoke-virtual {v13, v12}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->n(Lf92;)V

    new-instance v14, Lh75;

    sget-object v2, Ld85;->a:Ld85;

    const-string v3, "EMPTY"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v14, v10, v2}, Lh75;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Ld85;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v14}, Lhn9;->c(Lh75;)V

    new-instance v16, Lcd5;

    invoke-virtual/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->I0()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->I0()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v8

    sget-object v9, Lh92$a;->a:Lh92$a;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/checker/e;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/e$a;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/e$a;->a()Lkotlin/reflect/jvm/internal/impl/types/checker/f;

    move-result-object v10

    new-instance v11, Lf19;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-direct {v11, v1, v2}, Lf19;-><init>(Lvx9;Ljava/lang/Iterable;)V

    move-object/from16 v2, v16

    move-object v3, v1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, v19

    invoke-direct/range {v2 .. v11}, Lcd5;-><init>(Lvx9;Lvg5;Lqq6;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Ln8;Lv18;Lh92;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Le19;)V

    filled-new-array/range {p4 .. p4}, [Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->T0([Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    new-instance v1, Lmd1;

    invoke-virtual {v14}, Lh75;->a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lhv7;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    aput-object v16, v4, v0

    invoke-static {v4}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CompositeProvider@RuntimeModuleData for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lmd1;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->N0(Lfv7;)V

    new-instance v0, Lf92$a$a;

    invoke-direct {v0, v12, v13}, Lf92$a$a;-><init>(Lf92;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;)V

    return-object v0
.end method
