.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader;


# instance fields
.field public final b:Lpn0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpn0;

    invoke-direct {v0}, Lpn0;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;->b:Lpn0;

    return-void
.end method


# virtual methods
.method public a(Lvx9;Lqq6;Ljava/lang/Iterable;Lv18;Ln8;Z)Lfv7;
    .locals 10

    const-string v0, "storageManager"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtInsModule"

    move-object v3, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDescriptorFactories"

    move-object v5, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object v6, p4

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    move-object v7, p5

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/e;->C:Ljava/util/Set;

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl$createPackageFragmentProvider$1;

    move-object v0, p0

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;->b:Lpn0;

    invoke-direct {v9, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl$createPackageFragmentProvider$1;-><init>(Ljava/lang/Object;)V

    move-object v1, p0

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;->b(Lvx9;Lqq6;Ljava/util/Set;Ljava/lang/Iterable;Lv18;Ln8;ZLe74;)Lfv7;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lvx9;Lqq6;Ljava/util/Set;Ljava/lang/Iterable;Lv18;Ln8;ZLe74;)Lfv7;
    .locals 26

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move-object/from16 v0, p3

    move-object/from16 v6, p8

    const-string v1, "storageManager"

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "module"

    invoke-static {v14, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packageFqNames"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classDescriptorFactories"

    move-object/from16 v15, p4

    invoke-static {v15, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "platformDependentDeclarationFilter"

    move-object/from16 v13, p5

    invoke-static {v13, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "additionalClassPartsProvider"

    move-object/from16 v10, p6

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loadResource"

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo54;

    sget-object v0, Lnl0;->r:Lnl0;

    invoke-virtual {v0, v1}, Lnl0;->r(Lo54;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/io/InputStream;

    if-eqz v4, :cond_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->p:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;->a(Lo54;Lvx9;Lqq6;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource not found in classpath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl;

    move-object v6, v2

    invoke-direct {v2, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderImpl;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    move-object v12, v1

    invoke-direct {v1, v11, v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;-><init>(Lvx9;Lqq6;)V

    new-instance v8, Le92;

    move-object v0, v8

    sget-object v3, Lh92$a;->a:Lh92$a;

    new-instance v5, Lo92;

    move-object v4, v5

    invoke-direct {v5, v2}, Lo92;-><init>(Lfv7;)V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    move-object v5, v7

    move-object/from16 p0, v2

    sget-object v2, Lnl0;->r:Lnl0;

    invoke-direct {v7, v14, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;-><init>(Lqq6;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lrd9;)V

    sget-object v7, Lon5$a;->a:Lon5$a;

    sget-object v1, Led3;->a:Led3;

    move-object/from16 v23, v8

    move-object v8, v1

    move-object/from16 p3, v9

    const-string v9, "DO_NOTHING"

    invoke-static {v1, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lqr5$a;->a:Lqr5$a;

    move-object/from16 v24, p3

    sget-object v1, Lgy3$a;->a:Lgy3$a;

    move-object v10, v1

    sget-object v1, Lzh1;->a:Lzh1$a;

    invoke-virtual {v1}, Lzh1$a;->a()Lzh1;

    move-result-object v1

    move-object v13, v1

    invoke-virtual {v2}, Lrd9;->e()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v16

    new-instance v1, Lf19;

    move-object/from16 v18, v1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-direct {v1, v11, v2}, Lf19;-><init>(Lvx9;Ljava/lang/Iterable;)V

    const/high16 v21, 0xd0000

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object/from16 v25, p0

    move-object/from16 v2, p2

    move-object/from16 v11, p4

    move-object/from16 v14, p6

    move-object/from16 v15, p5

    invoke-direct/range {v0 .. v22}, Le92;-><init>(Lvx9;Lqq6;Lh92;Lpw0;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;Lfv7;Lon5;Led3;Lqr5;Lgy3;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lzh1;Ln8;Lv18;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Le19;Lx18;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedPackageFragmentImpl;->G0(Le92;)V

    goto :goto_1

    :cond_2
    return-object v25
.end method
