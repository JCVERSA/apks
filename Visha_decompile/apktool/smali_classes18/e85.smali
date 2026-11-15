.class public final Le85;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvx9;

.field public final b:Lx65;

.field public final c:Lvg5;

.field public final d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

.field public final e:Laj9;

.field public final f:Led3;

.field public final g:Ld85;

.field public final h:Lb85;

.field public final i:Le19;

.field public final j:Lj85;

.field public final k:Lnq6;

.field public final l:Llv7;

.field public final m:Lt6a;

.field public final n:Lqr5;

.field public final o:Lqq6;

.field public final p:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

.field public final q:Lkd;

.field public final r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

.field public final s:Lz65;

.field public final t:Lf85;

.field public final u:Lkotlin/reflect/jvm/internal/impl/types/checker/e;

.field public final v:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

.field public final w:Lu75;

.field public final x:Li8a;


# direct methods
.method public constructor <init>(Lvx9;Lx65;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Laj9;Led3;Ld85;Lb85;Le19;Lj85;Lnq6;Llv7;Lt6a;Lqr5;Lqq6;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkd;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lz65;Lf85;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lu75;Li8a;)V
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

    const-string v0, "finder"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signaturePropagator"

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaResolverCache"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaPropertyInitializerEvaluator"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElementFactory"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleClassResolver"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagePartProvider"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supertypeLoopChecker"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reflectionTypes"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationTypeQualifierResolver"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatureEnhancement"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClassesTracker"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaModuleResolver"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntheticPartsProvider"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Le85;->a:Lvx9;

    .line 3
    iput-object v2, v0, Le85;->b:Lx65;

    .line 4
    iput-object v3, v0, Le85;->c:Lvg5;

    .line 5
    iput-object v4, v0, Le85;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    .line 6
    iput-object v5, v0, Le85;->e:Laj9;

    .line 7
    iput-object v6, v0, Le85;->f:Led3;

    .line 8
    iput-object v7, v0, Le85;->g:Ld85;

    .line 9
    iput-object v8, v0, Le85;->h:Lb85;

    .line 10
    iput-object v9, v0, Le85;->i:Le19;

    .line 11
    iput-object v10, v0, Le85;->j:Lj85;

    .line 12
    iput-object v11, v0, Le85;->k:Lnq6;

    .line 13
    iput-object v12, v0, Le85;->l:Llv7;

    .line 14
    iput-object v13, v0, Le85;->m:Lt6a;

    .line 15
    iput-object v14, v0, Le85;->n:Lqr5;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Le85;->o:Lqq6;

    .line 17
    iput-object v15, v0, Le85;->p:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 18
    iput-object v1, v0, Le85;->q:Lkd;

    .line 19
    iput-object v2, v0, Le85;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    .line 20
    iput-object v1, v0, Le85;->s:Lz65;

    .line 21
    iput-object v2, v0, Le85;->t:Lf85;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    .line 22
    iput-object v1, v0, Le85;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/e;

    .line 23
    iput-object v2, v0, Le85;->v:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-object/from16 v1, p23

    move-object/from16 v2, p24

    .line 24
    iput-object v1, v0, Le85;->w:Lu75;

    .line 25
    iput-object v2, v0, Le85;->x:Li8a;

    return-void
.end method

.method public synthetic constructor <init>(Lvx9;Lx65;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Laj9;Led3;Ld85;Lb85;Le19;Lj85;Lnq6;Llv7;Lt6a;Lqr5;Lqq6;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkd;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lz65;Lf85;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lu75;Li8a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 26

    const/high16 v0, 0x800000

    and-int v0, p25, v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Li8a;->a:Li8a$a;

    invoke-virtual {v0}, Li8a$a;->a()Lpd1;

    move-result-object v0

    move-object/from16 v25, v0

    goto :goto_0

    :cond_0
    move-object/from16 v25, p24

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    .line 27
    invoke-direct/range {v1 .. v25}, Le85;-><init>(Lvx9;Lx65;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Laj9;Led3;Ld85;Lb85;Le19;Lj85;Lnq6;Llv7;Lt6a;Lqr5;Lqq6;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkd;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lz65;Lf85;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lu75;Li8a;)V

    return-void
.end method


# virtual methods
.method public final a()Lkd;
    .locals 0

    iget-object p0, p0, Le85;->q:Lkd;

    return-object p0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;
    .locals 0

    iget-object p0, p0, Le85;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    return-object p0
.end method

.method public final c()Led3;
    .locals 0

    iget-object p0, p0, Le85;->f:Led3;

    return-object p0
.end method

.method public final d()Lx65;
    .locals 0

    iget-object p0, p0, Le85;->b:Lx65;

    return-object p0
.end method

.method public final e()Lz65;
    .locals 0

    iget-object p0, p0, Le85;->s:Lz65;

    return-object p0
.end method

.method public final f()Lu75;
    .locals 0

    iget-object p0, p0, Le85;->w:Lu75;

    return-object p0
.end method

.method public final g()Lb85;
    .locals 0

    iget-object p0, p0, Le85;->h:Lb85;

    return-object p0
.end method

.method public final h()Ld85;
    .locals 0

    iget-object p0, p0, Le85;->g:Ld85;

    return-object p0
.end method

.method public final i()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;
    .locals 0

    iget-object p0, p0, Le85;->v:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    return-object p0
.end method

.method public final j()Lvg5;
    .locals 0

    iget-object p0, p0, Le85;->c:Lvg5;

    return-object p0
.end method

.method public final k()Lkotlin/reflect/jvm/internal/impl/types/checker/e;
    .locals 0

    iget-object p0, p0, Le85;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/e;

    return-object p0
.end method

.method public final l()Lqr5;
    .locals 0

    iget-object p0, p0, Le85;->n:Lqr5;

    return-object p0
.end method

.method public final m()Lqq6;
    .locals 0

    iget-object p0, p0, Le85;->o:Lqq6;

    return-object p0
.end method

.method public final n()Lnq6;
    .locals 0

    iget-object p0, p0, Le85;->k:Lnq6;

    return-object p0
.end method

.method public final o()Llv7;
    .locals 0

    iget-object p0, p0, Le85;->l:Llv7;

    return-object p0
.end method

.method public final p()Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;
    .locals 0

    iget-object p0, p0, Le85;->p:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    return-object p0
.end method

.method public final q()Lf85;
    .locals 0

    iget-object p0, p0, Le85;->t:Lf85;

    return-object p0
.end method

.method public final r()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;
    .locals 0

    iget-object p0, p0, Le85;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

    return-object p0
.end method

.method public final s()Laj9;
    .locals 0

    iget-object p0, p0, Le85;->e:Laj9;

    return-object p0
.end method

.method public final t()Lj85;
    .locals 0

    iget-object p0, p0, Le85;->j:Lj85;

    return-object p0
.end method

.method public final u()Lvx9;
    .locals 0

    iget-object p0, p0, Le85;->a:Lvx9;

    return-object p0
.end method

.method public final v()Lt6a;
    .locals 0

    iget-object p0, p0, Le85;->m:Lt6a;

    return-object p0
.end method

.method public final w()Li8a;
    .locals 0

    iget-object p0, p0, Le85;->x:Li8a;

    return-object p0
.end method

.method public final x(Ld85;)Le85;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v1, "javaResolverCache"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v28, Le85;

    move-object/from16 v1, v28

    iget-object v2, v0, Le85;->a:Lvx9;

    iget-object v3, v0, Le85;->b:Lx65;

    iget-object v4, v0, Le85;->c:Lvg5;

    iget-object v5, v0, Le85;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    iget-object v6, v0, Le85;->e:Laj9;

    iget-object v7, v0, Le85;->f:Led3;

    iget-object v9, v0, Le85;->h:Lb85;

    iget-object v10, v0, Le85;->i:Le19;

    iget-object v11, v0, Le85;->j:Lj85;

    iget-object v12, v0, Le85;->k:Lnq6;

    iget-object v13, v0, Le85;->l:Llv7;

    iget-object v14, v0, Le85;->m:Lt6a;

    iget-object v15, v0, Le85;->n:Lqr5;

    move-object/from16 p1, v1

    iget-object v1, v0, Le85;->o:Lqq6;

    move-object/from16 v16, v1

    iget-object v1, v0, Le85;->p:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v17, v1

    iget-object v1, v0, Le85;->q:Lkd;

    move-object/from16 v18, v1

    iget-object v1, v0, Le85;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;

    move-object/from16 v19, v1

    iget-object v1, v0, Le85;->s:Lz65;

    move-object/from16 v20, v1

    iget-object v1, v0, Le85;->t:Lf85;

    move-object/from16 v21, v1

    iget-object v1, v0, Le85;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/e;

    move-object/from16 v22, v1

    iget-object v1, v0, Le85;->v:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-object/from16 v23, v1

    iget-object v0, v0, Le85;->w:Lu75;

    move-object/from16 v24, v0

    const/high16 v26, 0x800000

    const/16 v27, 0x0

    const/16 v25, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v27}, Le85;-><init>(Lvx9;Lx65;Lvg5;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Laj9;Led3;Ld85;Lb85;Le19;Lj85;Lnq6;Llv7;Lt6a;Lqr5;Lqq6;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkd;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement;Lz65;Lf85;Lkotlin/reflect/jvm/internal/impl/types/checker/e;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lu75;Li8a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v28
.end method
