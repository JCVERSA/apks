.class public Lgw6;
.super Lrw0;
.source "SourceFile"


# instance fields
.field public final j:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

.field public final k:Z

.field public l:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field public m:Lc92;

.field public n:Lsbb;

.field public o:Ljava/util/List;

.field public final p:Ljava/util/Collection;

.field public final q:Lvx9;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;ZZLby6;Lyt9;Lvx9;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_1
    if-nez p5, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_2
    if-nez p6, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_3
    if-nez p7, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_4
    move-object v0, p0

    move-object v1, p7

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lrw0;-><init>(Lvx9;Lxt1;Lby6;Lyt9;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lgw6;->p:Ljava/util/Collection;

    iput-object p7, p0, Lgw6;->q:Lvx9;

    iput-object p2, p0, Lgw6;->j:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    iput-boolean p3, p0, Lgw6;->k:Z

    return-void
.end method

.method private static synthetic l0(I)V
    .locals 6

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

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "kotlinTypeRefiner"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "typeParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "supertype"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_d
    const-string v5, "kind"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "getUnsubstitutedMemberScope"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_e
    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_f
    const-string v3, "getSealedSubclasses"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_10
    const-string v3, "getStaticScope"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_11
    aput-object v4, v2, v5

    goto :goto_3

    :pswitch_12
    const-string v3, "getDeclaredTypeParameters"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_13
    const-string v3, "getConstructors"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_14
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_15
    const-string v3, "getVisibility"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_16
    const-string v3, "getKind"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_17
    const-string v3, "getModality"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_18
    const-string v3, "getAnnotations"

    aput-object v3, v2, v5

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_19
    aput-object v4, v2, v1

    goto :goto_4

    :pswitch_1a
    const-string v3, "setTypeParameterDescriptors"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_1b
    const-string v3, "addSupertype"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_1c
    const-string v3, "setVisibility"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_1d
    const-string v3, "setModality"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_1e
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_20
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
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
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_3
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
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_18
        :pswitch_e
        :pswitch_17
        :pswitch_16
        :pswitch_e
        :pswitch_15
        :pswitch_14
        :pswitch_e
        :pswitch_13
        :pswitch_e
        :pswitch_12
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_1e
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1e
        :pswitch_1e
        :pswitch_1b
        :pswitch_1e
        :pswitch_1a
        :pswitch_1e
        :pswitch_19
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x5
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public E0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public F0()V
    .locals 4

    new-instance v0, Lfx0;

    iget-object v1, p0, Lgw6;->o:Ljava/util/List;

    iget-object v2, p0, Lgw6;->p:Ljava/util/Collection;

    iget-object v3, p0, Lgw6;->q:Lvx9;

    invoke-direct {v0, p0, v1, v2, v3}, Lfx0;-><init>(Lqw0;Ljava/util/List;Ljava/util/Collection;Lvx9;)V

    iput-object v0, p0, Lgw6;->n:Lsbb;

    invoke-virtual {p0}, Lgw6;->G0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    check-cast v1, Lnw0;

    invoke-virtual {p0}, Lo2;->q()Lsm9;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->b1(Leh5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G0()Ljava/util/Set;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0xd

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public H0(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    iput-object p1, p0, Lgw6;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-void
.end method

.method public I0(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0xe

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    iget-object v0, p0, Lgw6;->o:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lgw6;->o:Ljava/util/List;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type parameters are already set for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo2;->getName()Lby6;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J0(Lc92;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x9

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    iput-object p1, p0, Lgw6;->m:Lc92;

    return-void
.end method

.method public T()Ljava/util/Collection;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 v0, 0x13

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public c0()Linb;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public d0(Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    if-nez p1, :cond_0

    const/16 p0, 0x10

    invoke-static {p0}, Lgw6;->l0(I)V

    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;->b:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;

    if-nez p0, :cond_1

    const/16 p1, 0x11

    invoke-static {p1}, Lgw6;->l0(I)V

    :cond_1
    return-object p0
.end method

.method public f0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lgw6;->k:Z

    return p0
.end method

.method public getAnnotations()Lmd;
    .locals 1

    sget-object p0, Lmd;->u1:Lmd$a;

    invoke-virtual {p0}, Lmd$a;->b()Lmd;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;
    .locals 1

    iget-object p0, p0, Lgw6;->j:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-nez p0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public getVisibility()Lc92;
    .locals 1

    iget-object p0, p0, Lgw6;->m:Lc92;

    if-nez p0, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public h0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 1

    iget-object p0, p0, Lgw6;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-nez p0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public m()Lsbb;
    .locals 1

    iget-object p0, p0, Lgw6;->n:Lsbb;

    if-nez p0, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public m0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic n()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lgw6;->G0()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public n0()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;->b:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;

    if-nez p0, :cond_0

    const/16 v0, 0x12

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public o0()Lqw0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public r()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lgw6;->o:Ljava/util/List;

    if-nez p0, :cond_0

    const/16 v0, 0xf

    invoke-static {v0}, Lgw6;->l0(I)V

    :cond_0
    return-object p0
.end method

.method public s()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lyt1;->d0(Lxt1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w()Lkotlin/reflect/jvm/internal/impl/descriptors/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
