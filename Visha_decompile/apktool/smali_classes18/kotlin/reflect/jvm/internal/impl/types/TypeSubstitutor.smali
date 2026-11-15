.class public Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;,
        Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
    }
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/types/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/l;->b:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->g(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->b:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/l;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 13

    const/16 v0, 0x25

    const/16 v1, 0x22

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p0, v3, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v6, v4

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_8

    :pswitch_2
    const-string v9, "substitution"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_3
    const-string v9, "projectionKind"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_4
    const-string v9, "typeParameterVariance"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_5
    const-string v9, "annotations"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_6
    const-string v9, "substituted"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_7
    const-string v9, "originalType"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_8
    const-string v9, "originalProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_9
    const-string v9, "typeProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_a
    const-string v9, "howThisTypeIsUsed"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_b
    const-string v9, "type"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_c
    const-string v9, "context"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_d
    const-string v9, "substitutionContext"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_e
    const-string v9, "second"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_f
    const-string v9, "first"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_10
    aput-object v7, v6, v8

    :goto_2
    const-string v8, "safeSubstitute"

    const-string v9, "unsafeSubstitute"

    const-string v10, "projectedTypeForConflictedTypeWithUnsafeVariance"

    const-string v11, "filterOutUnsafeVariance"

    const-string v12, "combine"

    if-eq p0, v3, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    packed-switch p0, :pswitch_data_b

    packed-switch p0, :pswitch_data_c

    aput-object v7, v6, v3

    goto :goto_3

    :pswitch_11
    aput-object v10, v6, v3

    goto :goto_3

    :pswitch_12
    aput-object v9, v6, v3

    goto :goto_3

    :pswitch_13
    aput-object v8, v6, v3

    goto :goto_3

    :cond_2
    :pswitch_14
    aput-object v12, v6, v3

    goto :goto_3

    :cond_3
    aput-object v11, v6, v3

    goto :goto_3

    :cond_4
    const-string v7, "getSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_5
    const-string v7, "replaceWithContravariantApproximatingSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_6
    const-string v7, "replaceWithNonApproximatingSubstitution"

    aput-object v7, v6, v3

    :goto_3
    packed-switch p0, :pswitch_data_d

    :pswitch_15
    const-string v7, "create"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_16
    aput-object v12, v6, v4

    goto :goto_4

    :pswitch_17
    aput-object v11, v6, v4

    goto :goto_4

    :pswitch_18
    aput-object v10, v6, v4

    goto :goto_4

    :pswitch_19
    aput-object v9, v6, v4

    goto :goto_4

    :pswitch_1a
    const-string v7, "substituteWithoutApproximation"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1b
    const-string v7, "substitute"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1c
    aput-object v8, v6, v4

    goto :goto_4

    :pswitch_1d
    const-string v7, "<init>"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1e
    const-string v7, "createChainedSubstitutor"

    aput-object v7, v6, v4

    :goto_4
    :pswitch_1f
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v3, :cond_7

    if-eq p0, v4, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_e

    packed-switch p0, :pswitch_data_f

    packed-switch p0, :pswitch_data_10

    packed-switch p0, :pswitch_data_11

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :pswitch_20
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_9
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xb
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1d
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x28
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_17
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0xb
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x13
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1d
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x28
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static b(ILmcb;Lkotlin/reflect/jvm/internal/impl/types/l;)V
    .locals 2

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recursion too deep. Most likely infinite loop while substituting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; substitution: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lmcb;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x23

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x24

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_1
    invoke-interface {p1}, Lmcb;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-nez p0, :cond_2

    const/16 p1, 0x25

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_2
    return-object p0

    :cond_3
    invoke-interface {p1}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->d(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 3

    if-nez p0, :cond_0

    const/16 v0, 0x26

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x27

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v0, :cond_3

    if-nez p1, :cond_2

    const/16 p0, 0x28

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_2
    return-object p1

    :cond_3
    if-ne p1, v0, :cond_5

    if-nez p0, :cond_4

    const/16 p1, 0x29

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_4
    return-object p0

    :cond_5
    if-ne p0, p1, :cond_7

    if-nez p1, :cond_6

    const/16 p0, 0x2a

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_6
    return-object p1

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variance conflict: type parameter variance \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' and projection kind \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be combined"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static e(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;
    .locals 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v0, :cond_0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v1, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->OUT_IN_IN_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object p0

    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v1, :cond_1

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->IN_IN_OUT_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->NO_CONFLICT:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object p0
.end method

.method public static f(Leh5;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object v0

    invoke-virtual {p0}, Leh5;->G0()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/k;->i(Lsbb;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->g(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/l;)V

    return-object v0
.end method

.method public static h(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/d;->i(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->g(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lmd;)Lmd;
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0x21

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->Q:Lo54;

    invoke-interface {p0, v0}, Lmd;->h(Lo54;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Llv3;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$a;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$a;-><init>()V

    invoke-direct {v0, p0, v1}, Llv3;-><init>(Lmd;Le74;)V

    return-object v0
.end method

.method public static l(Leh5;Lmcb;Lhcb;Lmcb;)Lmcb;
    .locals 2

    if-nez p0, :cond_0

    const/16 v0, 0x1a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x1b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_1
    if-nez p3, :cond_2

    const/16 v0, 0x1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_2
    invoke-virtual {p0}, Leh5;->getAnnotations()Lmd;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->Q:Lo54;

    invoke-interface {p0, v0}, Lmd;->h(Lo54;)Z

    move-result p0

    if-nez p0, :cond_4

    if-nez p1, :cond_3

    const/16 p0, 0x1d

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_3
    return-object p1

    :cond_4
    invoke-interface {p1}, Lmcb;->getType()Leh5;

    move-result-object p0

    invoke-virtual {p0}, Leh5;->I0()Lsbb;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;->b()Lmcb;

    move-result-object p0

    invoke-interface {p0}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    invoke-interface {p3}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->e(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object p3

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->OUT_IN_IN_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    if-ne p3, v1, :cond_6

    new-instance p1, Locb;

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    invoke-direct {p1, p0}, Locb;-><init>(Leh5;)V

    return-object p1

    :cond_6
    if-nez p2, :cond_7

    return-object p1

    :cond_7
    invoke-interface {p2}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->e(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object p2

    if-ne p2, v1, :cond_8

    new-instance p1, Locb;

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    invoke-direct {p1, p0}, Locb;-><init>(Leh5;)V

    :cond_8
    return-object p1
.end method

.method public static o(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lpe3;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Exception while computing toString(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public j()Lkotlin/reflect/jvm/internal/impl/types/l;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    if-nez p0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;->f()Z

    move-result p0

    return p0
.end method

.method public m()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    instance-of v1, v0, Llz4;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    new-instance v1, Llz4;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    check-cast v2, Llz4;

    invoke-virtual {v2}, Llz4;->j()[Lhcb;

    move-result-object v2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    check-cast p0, Llz4;

    invoke-virtual {p0}, Llz4;->i()[Lmcb;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Llz4;-><init>([Lhcb;[Lmcb;Z)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/l;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public n(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    const/16 p0, 0xb

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_2
    return-object p1

    :cond_3
    :try_start_0
    new-instance v0, Locb;

    invoke-direct {v0, p2, p1}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lmcb;Lhcb;I)Lmcb;

    move-result-object p0

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    const/16 p1, 0xc

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_4
    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNABLE_TO_SUBSTITUTE_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lid3;->d(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lgd3;

    move-result-object p0

    if-nez p0, :cond_5

    const/16 p1, 0xd

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_5
    return-object p0
.end method

.method public p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_1
    new-instance v0, Locb;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->j()Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/l;->g(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->q(Lmcb;)Lmcb;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public q(Lmcb;)Lmcb;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->t(Lmcb;)Lmcb;

    move-result-object p1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/l;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;->b()Z

    move-result p0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->c(Lmcb;Z)Lmcb;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lmcb;I)Lmcb;
    .locals 4

    invoke-interface {p1}, Lmcb;->getType()Leh5;

    move-result-object v0

    invoke-interface {p1}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v2

    invoke-interface {v2}, Lsbb;->c()Lpx0;

    move-result-object v2

    instance-of v2, v2, Lhcb;

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    invoke-static {v0}, Ltu9;->b(Leh5;)Lsm9;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->m()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v2, p1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Leh5;->I0()Lsbb;

    move-result-object v2

    invoke-interface {v2}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Leh5;->G0()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->s(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {v0}, Leh5;->getAnnotations()Lmd;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/l;->d(Lmd;)Lmd;

    move-result-object p0

    invoke-static {v0, p2, p0}, Lscb;->b(Leh5;Ljava/util/List;Lmd;)Leh5;

    move-result-object p0

    instance-of p2, p0, Lsm9;

    if-eqz p2, :cond_2

    instance-of p2, p1, Lsm9;

    if-eqz p2, :cond_2

    check-cast p0, Lsm9;

    check-cast p1, Lsm9;

    invoke-static {p0, p1}, Ltu9;->j(Lsm9;Lsm9;)Lsm9;

    move-result-object p0

    :cond_2
    new-instance p1, Locb;

    invoke-direct {p1, v1, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p1
.end method

.method public final s(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhcb;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmcb;

    const/4 v5, 0x1

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {p0, v4, v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lmcb;Lhcb;I)Lmcb;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$b;->a:[I

    invoke-interface {v3}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v8

    invoke-interface {v6}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->e(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_1

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq v3, v7, :cond_2

    invoke-interface {v6}, Lmcb;->b()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Locb;

    invoke-interface {v6}, Lmcb;->getType()Leh5;

    move-result-object v6

    invoke-direct {v3, v7, v6}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    move-object v6, v3

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/n;->s(Lhcb;)Lmcb;

    move-result-object v6

    :cond_2
    :goto_1
    if-eq v6, v4, :cond_3

    move v2, v5

    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    return-object p2

    :cond_5
    return-object v0
.end method

.method public t(Lmcb;)Lmcb;
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lmcb;Lhcb;I)Lmcb;

    move-result-object p0
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public final u(Lmcb;Lhcb;I)Lmcb;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/16 v2, 0x12

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-static {p3, p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->b(ILmcb;Lkotlin/reflect/jvm/internal/impl/types/l;)V

    invoke-interface {p1}, Lmcb;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Lmcb;->getType()Leh5;

    move-result-object v2

    instance-of v3, v2, Lcdb;

    if-eqz v3, :cond_3

    check-cast v2, Lcdb;

    invoke-interface {v2}, Lcdb;->Q()Lmgb;

    move-result-object v0

    invoke-interface {v2}, Lcdb;->l0()Leh5;

    move-result-object v2

    new-instance v3, Locb;

    invoke-interface {p1}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    add-int/2addr p3, v1

    invoke-virtual {p0, v3, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lmcb;Lhcb;I)Lmcb;

    move-result-object p2

    invoke-interface {p2}, Lmcb;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    return-object p2

    :cond_2
    invoke-interface {p1}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object p0

    invoke-interface {p2}, Lmcb;->getType()Leh5;

    move-result-object p1

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p1

    invoke-static {p1, p0}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object p0

    new-instance p1, Locb;

    invoke-interface {p2}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p1

    :cond_3
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/e;->a(Leh5;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v2}, Leh5;->L0()Lmgb;

    move-result-object v3

    instance-of v3, v3, Lco8;

    if-eqz v3, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/l;->e(Leh5;)Lmcb;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v2, v3, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->l(Leh5;Lmcb;Lhcb;Lmcb;)Lmcb;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    if-nez v3, :cond_7

    invoke-static {v2}, Lky3;->b(Leh5;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v2}, Lmbb;->b(Leh5;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v2}, Lky3;->a(Leh5;)Lfy3;

    move-result-object v0

    new-instance v2, Locb;

    invoke-virtual {v0}, Lfy3;->Q0()Lsm9;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    add-int/2addr p3, v1

    invoke-virtual {p0, v2, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lmcb;Lhcb;I)Lmcb;

    move-result-object v1

    new-instance v2, Locb;

    invoke-virtual {v0}, Lfy3;->R0()Lsm9;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    invoke-virtual {p0, v2, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lmcb;Lhcb;I)Lmcb;

    move-result-object p0

    invoke-interface {v1}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p2

    invoke-interface {v1}, Lmcb;->getType()Leh5;

    move-result-object p3

    invoke-virtual {v0}, Lfy3;->Q0()Lsm9;

    move-result-object v2

    if-ne p3, v2, :cond_6

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p3

    invoke-virtual {v0}, Lfy3;->R0()Lsm9;

    move-result-object v0

    if-ne p3, v0, :cond_6

    return-object p1

    :cond_6
    invoke-interface {v1}, Lmcb;->getType()Leh5;

    move-result-object p1

    invoke-static {p1}, Lscb;->a(Leh5;)Lsm9;

    move-result-object p1

    invoke-interface {p0}, Lmcb;->getType()Leh5;

    move-result-object p0

    invoke-static {p0}, Lscb;->a(Leh5;)Lsm9;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p0

    new-instance p1, Locb;

    invoke-direct {p1, p2, p0}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p1

    :cond_7
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->n0(Leh5;)Z

    move-result p2

    if-nez p2, :cond_12

    invoke-static {v2}, Lfh5;->a(Leh5;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto/16 :goto_3

    :cond_8
    if-eqz v3, :cond_10

    invoke-interface {v3}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->e(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object p1

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;->d(Leh5;)Z

    move-result p2

    if-nez p2, :cond_b

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, v1, :cond_a

    if-eq p2, v0, :cond_9

    goto :goto_1

    :cond_9
    new-instance p0, Locb;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v2}, Leh5;->I0()Lsbb;

    move-result-object p2

    invoke-interface {p2}, Lsbb;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->I()Lsm9;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p0

    :cond_a
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;

    const-string p1, "Out-projection in in-position"

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_1
    invoke-static {v2}, Lmbb;->a(Leh5;)Lzo1;

    move-result-object p2

    invoke-interface {v3}, Lmcb;->b()Z

    move-result p3

    if-eqz p3, :cond_c

    return-object v3

    :cond_c
    if-eqz p2, :cond_d

    invoke-interface {v3}, Lmcb;->getType()Leh5;

    move-result-object p3

    invoke-interface {p2, p3}, Lzo1;->d0(Leh5;)Leh5;

    move-result-object p2

    goto :goto_2

    :cond_d
    invoke-interface {v3}, Lmcb;->getType()Leh5;

    move-result-object p2

    invoke-virtual {v2}, Leh5;->J0()Z

    move-result p3

    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/n;->q(Leh5;Z)Leh5;

    move-result-object p2

    :goto_2
    invoke-virtual {v2}, Leh5;->getAnnotations()Lmd;

    move-result-object p3

    invoke-interface {p3}, Lmd;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_e

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    invoke-virtual {v2}, Leh5;->getAnnotations()Lmd;

    move-result-object p3

    invoke-virtual {p0, p3}, Lkotlin/reflect/jvm/internal/impl/types/l;->d(Lmd;)Lmd;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->i(Lmd;)Lmd;

    move-result-object p0

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;

    invoke-virtual {p2}, Leh5;->getAnnotations()Lmd;

    move-result-object v2

    new-array v0, v0, [Lmd;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    aput-object p0, v0, v1

    invoke-direct {p3, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;-><init>([Lmd;)V

    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->x(Leh5;Lmd;)Leh5;

    move-result-object p2

    :cond_e
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->NO_CONFLICT:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    if-ne p1, p0, :cond_f

    invoke-interface {v3}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    invoke-static {v4, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->d(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    :cond_f
    new-instance p0, Locb;

    invoke-direct {p0, v4, p2}, Locb;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Leh5;)V

    return-object p0

    :cond_10
    invoke-virtual {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->r(Lmcb;I)Lmcb;

    move-result-object p0

    if-nez p0, :cond_11

    const/16 p1, 0x19

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    :cond_11
    return-object p0

    :cond_12
    :goto_3
    return-object p1
.end method
