.class public final Le92;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvx9;

.field public final b:Lqq6;

.field public final c:Lh92;

.field public final d:Lpw0;

.field public final e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;

.field public final f:Lfv7;

.field public final g:Lon5;

.field public final h:Led3;

.field public final i:Lqr5;

.field public final j:Lgy3;

.field public final k:Ljava/lang/Iterable;

.field public final l:Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

.field public final m:Lzh1;

.field public final n:Ln8;

.field public final o:Lv18;

.field public final p:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field public final q:Lkotlin/reflect/jvm/internal/impl/types/checker/e;

.field public final r:Le19;

.field public final s:Lx18;

.field public final t:Ljava/util/List;

.field public final u:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;


# direct methods
.method public constructor <init>(Lvx9;Lqq6;Lh92;Lpw0;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;Lfv7;Lon5;Led3;Lqr5;Lgy3;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lzh1;Ln8;Lv18;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Le19;Lx18;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDataFinder"

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationAndConstantLoader"

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragmentProvider"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localClassifierTypeSettings"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexibleTypeDeserializer"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fictitiousClassDescriptorFactories"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractDeserializer"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionRegistryLite"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentTypeTransformer"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAttributeTranslators"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Le92;->a:Lvx9;

    .line 3
    iput-object v2, v0, Le92;->b:Lqq6;

    .line 4
    iput-object v3, v0, Le92;->c:Lh92;

    .line 5
    iput-object v4, v0, Le92;->d:Lpw0;

    .line 6
    iput-object v5, v0, Le92;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;

    .line 7
    iput-object v6, v0, Le92;->f:Lfv7;

    .line 8
    iput-object v7, v0, Le92;->g:Lon5;

    .line 9
    iput-object v8, v0, Le92;->h:Led3;

    .line 10
    iput-object v9, v0, Le92;->i:Lqr5;

    .line 11
    iput-object v10, v0, Le92;->j:Lgy3;

    .line 12
    iput-object v11, v0, Le92;->k:Ljava/lang/Iterable;

    .line 13
    iput-object v12, v0, Le92;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    .line 14
    iput-object v13, v0, Le92;->m:Lzh1;

    .line 15
    iput-object v14, v0, Le92;->n:Ln8;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Le92;->o:Lv18;

    .line 17
    iput-object v15, v0, Le92;->p:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 18
    iput-object v1, v0, Le92;->q:Lkotlin/reflect/jvm/internal/impl/types/checker/e;

    .line 19
    iput-object v2, v0, Le92;->r:Le19;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    .line 20
    iput-object v1, v0, Le92;->s:Lx18;

    .line 21
    iput-object v2, v0, Le92;->t:Ljava/util/List;

    .line 22
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;-><init>(Le92;)V

    iput-object v1, v0, Le92;->u:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    return-void
.end method

.method public synthetic constructor <init>(Lvx9;Lqq6;Lh92;Lpw0;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;Lfv7;Lon5;Led3;Lqr5;Lgy3;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lzh1;Ln8;Lv18;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Le19;Lx18;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p21

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    .line 23
    sget-object v1, Ln8$a;->a:Ln8$a;

    move-object/from16 v16, v1

    goto :goto_0

    :cond_0
    move-object/from16 v16, p14

    :goto_0
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_1

    .line 24
    sget-object v1, Lv18$a;->a:Lv18$a;

    move-object/from16 v17, v1

    goto :goto_1

    :cond_1
    move-object/from16 v17, p15

    :goto_1
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 25
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/e;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/e$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/e$a;->a()Lkotlin/reflect/jvm/internal/impl/types/checker/f;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_2

    :cond_2
    move-object/from16 v19, p17

    :goto_2
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 26
    sget-object v1, Lx18$a;->a:Lx18$a;

    move-object/from16 v21, v1

    goto :goto_3

    :cond_3
    move-object/from16 v21, p19

    :goto_3
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 27
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/c;->a:Lkotlin/reflect/jvm/internal/impl/types/c;

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_4

    :cond_4
    move-object/from16 v22, p20

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v18, p16

    move-object/from16 v20, p18

    .line 28
    invoke-direct/range {v2 .. v22}, Le92;-><init>(Lvx9;Lqq6;Lh92;Lpw0;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;Lfv7;Lon5;Led3;Lqr5;Lgy3;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lzh1;Ln8;Lv18;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Le19;Lx18;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Ldv7;Lcy6;Lxcb;Lqob;Lse0;Lp92;)Li92;
    .locals 11

    const-string v0, "descriptor"

    move-object v4, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    move-object v3, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    move-object v5, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    move-object v6, p4

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Li92;

    const/4 v9, 0x0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v10

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Li92;-><init>(Le92;Lcy6;Lxt1;Lxcb;Lqob;Lse0;Lp92;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Lxw0;)Lqw0;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Le92;->u:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->e(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;Lxw0;Low0;ILjava/lang/Object;)Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ln8;
    .locals 0

    iget-object p0, p0, Le92;->n:Ln8;

    return-object p0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;
    .locals 0

    iget-object p0, p0, Le92;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/a;

    return-object p0
.end method

.method public final e()Lpw0;
    .locals 0

    iget-object p0, p0, Le92;->d:Lpw0;

    return-object p0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;
    .locals 0

    iget-object p0, p0, Le92;->u:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    return-object p0
.end method

.method public final g()Lh92;
    .locals 0

    iget-object p0, p0, Le92;->c:Lh92;

    return-object p0
.end method

.method public final h()Lzh1;
    .locals 0

    iget-object p0, p0, Le92;->m:Lzh1;

    return-object p0
.end method

.method public final i()Led3;
    .locals 0

    iget-object p0, p0, Le92;->h:Led3;

    return-object p0
.end method

.method public final j()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    iget-object p0, p0, Le92;->p:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method public final k()Ljava/lang/Iterable;
    .locals 0

    iget-object p0, p0, Le92;->k:Ljava/lang/Iterable;

    return-object p0
.end method

.method public final l()Lgy3;
    .locals 0

    iget-object p0, p0, Le92;->j:Lgy3;

    return-object p0
.end method

.method public final m()Lkotlin/reflect/jvm/internal/impl/types/checker/e;
    .locals 0

    iget-object p0, p0, Le92;->q:Lkotlin/reflect/jvm/internal/impl/types/checker/e;

    return-object p0
.end method

.method public final n()Lon5;
    .locals 0

    iget-object p0, p0, Le92;->g:Lon5;

    return-object p0
.end method

.method public final o()Lqr5;
    .locals 0

    iget-object p0, p0, Le92;->i:Lqr5;

    return-object p0
.end method

.method public final p()Lqq6;
    .locals 0

    iget-object p0, p0, Le92;->b:Lqq6;

    return-object p0
.end method

.method public final q()Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;
    .locals 0

    iget-object p0, p0, Le92;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    return-object p0
.end method

.method public final r()Lfv7;
    .locals 0

    iget-object p0, p0, Le92;->f:Lfv7;

    return-object p0
.end method

.method public final s()Lv18;
    .locals 0

    iget-object p0, p0, Le92;->o:Lv18;

    return-object p0
.end method

.method public final t()Lx18;
    .locals 0

    iget-object p0, p0, Le92;->s:Lx18;

    return-object p0
.end method

.method public final u()Lvx9;
    .locals 0

    iget-object p0, p0, Le92;->a:Lvx9;

    return-object p0
.end method

.method public final v()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Le92;->t:Ljava/util/List;

    return-object p0
.end method
