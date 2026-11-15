.class public final Lcd5;
.super Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcd5$a;
    }
.end annotation


# static fields
.field public static final f:Lcd5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcd5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcd5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcd5;->f:Lcd5$a;

    return-void
.end method

.method public constructor <init>(Lvx9;Lvg5;Lqq6;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Ln8;Lv18;Lh92;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Le19;)V
    .locals 25

    move-object/from16 v13, p0

    move-object/from16 v11, p1

    move-object/from16 v10, p3

    move-object/from16 v7, p4

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v3, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    const-string v0, "storageManager"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializationConfiguration"

    move-object/from16 v5, p7

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v5, p8

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    move-object/from16 v5, p9

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;-><init>(Lvx9;Ldh5;Lqq6;)V

    new-instance v9, Le92;

    move-object v0, v9

    new-instance v5, Lo92;

    move-object v4, v5

    invoke-direct {v5, v13}, Lo92;-><init>(Lfv7;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    move-object v5, v8

    move-object/from16 p2, v0

    sget-object v0, Lnl0;->r:Lnl0;

    invoke-direct {v8, v10, v7, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;-><init>(Lqq6;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lrd9;)V

    sget-object v7, Lon5$a;->a:Lon5$a;

    sget-object v8, Led3;->a:Led3;

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    const-string v9, "DO_NOTHING"

    move-object/from16 v10, p4

    invoke-static {v10, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lqr5$a;->a:Lqr5$a;

    move-object/from16 v10, p5

    sget-object v16, Lgy3$a;->a:Lgy3$a;

    move-object/from16 v13, p3

    move-object/from16 v23, v10

    move-object/from16 v10, v16

    move-object/from16 v24, v1

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;

    invoke-direct {v1, v11, v13}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;-><init>(Lvx9;Lqq6;)V

    new-instance v16, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 p4, v16

    move-object/from16 p5, p1

    move-object/from16 p6, p3

    move-object/from16 p7, v21

    move/from16 p8, v19

    move-object/from16 p9, v20

    invoke-direct/range {p4 .. p9}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;-><init>(Lvx9;Lqq6;Le74;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x2

    new-array v11, v11, [Lsw0;

    const/4 v13, 0x0

    aput-object v1, v11, v13

    const/4 v1, 0x1

    aput-object v16, v11, v1

    invoke-static {v11}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Iterable;

    sget-object v1, Lzh1;->a:Lzh1$a;

    invoke-virtual {v1}, Lzh1$a;->a()Lzh1;

    move-result-object v13

    move-object/from16 v1, p0

    invoke-virtual {v0}, Lrd9;->e()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v16

    const/high16 v21, 0xc0000

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-direct/range {v0 .. v22}, Le92;-><init>(Lvx9;Lqq6;Lh92;Lpw0;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;Lfv7;Lon5;Led3;Lqr5;Lgy3;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lzh1;Ln8;Lv18;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Le19;Lx18;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->j(Le92;)V

    return-void
.end method


# virtual methods
.method public d(Lo54;)Lr92;
    .locals 7

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->f()Ldh5;

    move-result-object v0

    invoke-interface {v0, p1}, Ldh5;->a(Lo54;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->p:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->h()Lvx9;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->g()Lqq6;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;->a(Lo54;Lvx9;Lqq6;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
