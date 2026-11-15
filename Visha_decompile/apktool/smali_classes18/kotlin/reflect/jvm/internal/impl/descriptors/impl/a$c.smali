.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lkotlin/reflect/jvm/internal/impl/types/l;

.field public b:Lxt1;

.field public c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field public d:Lc92;

.field public e:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

.field public f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Lro8;

.field public j:Lro8;

.field public k:Leh5;

.field public l:Lby6;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Ljava/util/List;

.field public s:Lmd;

.field public t:Z

.field public u:Ljava/util/Map;

.field public v:Ljava/lang/Boolean;

.field public w:Z

.field public final synthetic x:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;Lkotlin/reflect/jvm/internal/impl/types/l;Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Ljava/util/List;Ljava/util/List;Lro8;Leh5;Lby6;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_1
    if-nez p4, :cond_2

    const/4 v2, 0x2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_2
    if-nez p5, :cond_3

    const/4 v2, 0x3

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_3
    if-nez p6, :cond_4

    const/4 v2, 0x4

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_4
    if-nez p7, :cond_5

    const/4 v2, 0x5

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_5
    if-nez p8, :cond_6

    const/4 v2, 0x6

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_6
    if-nez p10, :cond_7

    const/4 v2, 0x7

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->x:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->C0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;)Lro8;

    move-result-object v3

    iput-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->j:Lro8;

    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->m:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->n:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->o:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->p:Z

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->B0()Z

    move-result v1

    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->q:Z

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->r:Ljava/util/List;

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->s:Lmd;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->P()Z

    move-result p1

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->t:Z

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u:Ljava/util/Map;

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->v:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->w:Z

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->b:Lxt1;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->d:Lc92;

    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    iput-object p7, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->g:Ljava/util/List;

    iput-object p8, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->h:Ljava/util/List;

    iput-object p9, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->i:Lro8;

    iput-object p10, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->k:Leh5;

    iput-object p11, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->l:Lby6;

    return-void
.end method

.method public static synthetic A(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic u(I)V
    .locals 17

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    :pswitch_4
    const-string v5, "substitution"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "userDataKey"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "additionalAnnotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "contextReceiverParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "type"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "parameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_d
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_e
    const-string v5, "owner"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_f
    const-string v5, "newReturnType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_10
    const-string v5, "newContextReceiverParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_11
    const-string v5, "newValueParameterDescriptors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_12
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_13
    const-string v5, "newVisibility"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_14
    const-string v5, "newModality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_15
    const-string v5, "newOwner"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "setOwner"

    const-string v5, "setModality"

    const-string v6, "setVisibility"

    const-string v7, "setKind"

    const-string v8, "setName"

    const-string v9, "setValueParameters"

    const-string v10, "setTypeParameters"

    const-string v11, "setReturnType"

    const-string v12, "setContextReceiverParameters"

    const-string v13, "setAdditionalAnnotations"

    const-string v14, "setSubstitution"

    const-string v15, "putUserData"

    const/16 v16, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_16
    aput-object v3, v2, v16

    goto/16 :goto_3

    :pswitch_17
    const-string v3, "setJustForTypeSubstitution"

    aput-object v3, v2, v16

    goto/16 :goto_3

    :pswitch_18
    const-string v3, "getSubstitution"

    aput-object v3, v2, v16

    goto :goto_3

    :pswitch_19
    aput-object v15, v2, v16

    goto :goto_3

    :pswitch_1a
    aput-object v14, v2, v16

    goto :goto_3

    :pswitch_1b
    aput-object v13, v2, v16

    goto :goto_3

    :pswitch_1c
    const-string v3, "setHiddenForResolutionEverywhereBesideSupercalls"

    aput-object v3, v2, v16

    goto :goto_3

    :pswitch_1d
    const-string v3, "setHiddenToOvercomeSignatureClash"

    aput-object v3, v2, v16

    goto :goto_3

    :pswitch_1e
    const-string v3, "setDropOriginalInContainingParts"

    aput-object v3, v2, v16

    goto :goto_3

    :pswitch_1f
    const-string v3, "setPreserveSourceElement"

    aput-object v3, v2, v16

    goto :goto_3

    :pswitch_20
    const-string v3, "setSignatureChange"

    aput-object v3, v2, v16

    goto :goto_3

    :pswitch_21
    const-string v3, "setOriginal"

    aput-object v3, v2, v16

    goto :goto_3

    :pswitch_22
    const-string v3, "setDispatchReceiverParameter"

    aput-object v3, v2, v16

    goto :goto_3

    :pswitch_23
    const-string v3, "setExtensionReceiverParameter"

    aput-object v3, v2, v16

    goto :goto_3

    :pswitch_24
    aput-object v12, v2, v16

    goto :goto_3

    :pswitch_25
    aput-object v11, v2, v16

    goto :goto_3

    :pswitch_26
    aput-object v10, v2, v16

    goto :goto_3

    :pswitch_27
    aput-object v9, v2, v16

    goto :goto_3

    :pswitch_28
    aput-object v8, v2, v16

    goto :goto_3

    :pswitch_29
    const-string v3, "setCopyOverrides"

    aput-object v3, v2, v16

    goto :goto_3

    :pswitch_2a
    aput-object v7, v2, v16

    goto :goto_3

    :pswitch_2b
    aput-object v6, v2, v16

    goto :goto_3

    :pswitch_2c
    aput-object v5, v2, v16

    goto :goto_3

    :pswitch_2d
    aput-object v4, v2, v16

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_2e
    aput-object v15, v2, v1

    goto :goto_4

    :pswitch_2f
    aput-object v14, v2, v1

    goto :goto_4

    :pswitch_30
    aput-object v13, v2, v1

    goto :goto_4

    :pswitch_31
    aput-object v12, v2, v1

    goto :goto_4

    :pswitch_32
    aput-object v11, v2, v1

    goto :goto_4

    :pswitch_33
    aput-object v10, v2, v1

    goto :goto_4

    :pswitch_34
    aput-object v9, v2, v1

    goto :goto_4

    :pswitch_35
    aput-object v8, v2, v1

    goto :goto_4

    :pswitch_36
    aput-object v7, v2, v1

    goto :goto_4

    :pswitch_37
    aput-object v6, v2, v1

    goto :goto_4

    :pswitch_38
    aput-object v5, v2, v1

    goto :goto_4

    :pswitch_39
    aput-object v4, v2, v1

    :goto_4
    :pswitch_3a
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_3c
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_12
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_d
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_6
        :pswitch_d
        :pswitch_4
        :pswitch_d
        :pswitch_5
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_2d
        :pswitch_16
        :pswitch_2c
        :pswitch_16
        :pswitch_2b
        :pswitch_16
        :pswitch_2a
        :pswitch_29
        :pswitch_16
        :pswitch_28
        :pswitch_16
        :pswitch_27
        :pswitch_16
        :pswitch_26
        :pswitch_16
        :pswitch_25
        :pswitch_16
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_16
        :pswitch_1b
        :pswitch_16
        :pswitch_1a
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_39
        :pswitch_3a
        :pswitch_38
        :pswitch_3a
        :pswitch_37
        :pswitch_3a
        :pswitch_36
        :pswitch_3a
        :pswitch_3a
        :pswitch_35
        :pswitch_3a
        :pswitch_34
        :pswitch_3a
        :pswitch_33
        :pswitch_3a
        :pswitch_32
        :pswitch_3a
        :pswitch_31
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_30
        :pswitch_3a
        :pswitch_2f
        :pswitch_3a
        :pswitch_2e
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x9
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method public static synthetic v(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Lmd;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->s:Lmd;

    return-object p0
.end method

.method public static synthetic w(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->r:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic x(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->q:Z

    return p0
.end method

.method public static synthetic y(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->t:Z

    return p0
.end method

.method public static synthetic z(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->v:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public B(Lmd;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x23

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->s:Lmd;

    return-object p0
.end method

.method public C(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->m:Z

    return-object p0
.end method

.method public D(Lro8;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->j:Lro8;

    return-object p0
.end method

.method public E()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->p:Z

    return-object p0
.end method

.method public F(Lro8;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->i:Lro8;

    return-object p0
.end method

.method public G(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->v:Ljava/lang/Boolean;

    return-object p0
.end method

.method public H()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->t:Z

    return-object p0
.end method

.method public I()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->q:Z

    return-object p0
.end method

.method public J(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 0

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->w:Z

    return-object p0
.end method

.method public K(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0
.end method

.method public L(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method

.method public M(Lby6;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->l:Lby6;

    return-object p0
.end method

.method public N(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0
.end method

.method public O(Lxt1;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->b:Lxt1;

    return-object p0
.end method

.method public P()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->o:Z

    return-object p0
.end method

.method public Q(Leh5;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x17

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->k:Leh5;

    return-object p0
.end method

.method public R()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->n:Z

    return-object p0
.end method

.method public S(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x25

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->a:Lkotlin/reflect/jvm/internal/impl/types/l;

    return-object p0
.end method

.method public T(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x15

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->r:Ljava/util/List;

    return-object p0
.end method

.method public U(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x13

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->g:Ljava/util/List;

    return-object p0
.end method

.method public V(Lc92;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->d:Lc92;

    return-object p0
.end method

.method public bridge synthetic a(Lro8;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->F(Lro8;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lro8;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->D(Lro8;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public build()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->x:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->H0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->S(Lkotlin/reflect/jvm/internal/impl/types/l;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x27

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u(I)V

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->u:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic e()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->I()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->P()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->N(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic h(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->C(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic i(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->T(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic j(Leh5;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->Q(Leh5;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic k(Lby6;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->M(Lby6;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic l()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->E()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic m(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->U(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic n(Lc92;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->V(Lc92;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic o()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->H()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic p(Lmd;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->B(Lmd;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic q(Lxt1;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->O(Lxt1;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic r(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->L(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic s(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->K(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic t()Lkotlin/reflect/jvm/internal/impl/descriptors/e$a;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;->R()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$c;

    move-result-object p0

    return-object p0
.end method
