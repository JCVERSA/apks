.class public Lwi8;
.super Lsi8;
.source "SourceFile"

# interfaces
.implements Lvi8;


# instance fields
.field public n:Leh5;

.field public final o:Lvi8;


# direct methods
.method public constructor <init>(Lti8;Lmd;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lvi8;Lyt9;)V
    .locals 11

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lwi8;->Q(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lwi8;->Q(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lwi8;->Q(I)V

    :cond_2
    if-nez p4, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lwi8;->Q(I)V

    :cond_3
    if-nez p8, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lwi8;->Q(I)V

    :cond_4
    if-nez p10, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Lwi8;->Q(I)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<get-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lgy6;->getName()Lby6;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lby6;->j(Ljava/lang/String;)Lby6;

    move-result-object v5

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lsi8;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;Lti8;Lmd;Lby6;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lyt9;)V

    if-eqz p9, :cond_6

    move-object v1, p0

    move-object/from16 v0, p9

    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, v0

    :goto_0
    iput-object v0, v1, Lwi8;->o:Lvi8;

    return-void
.end method

.method private static synthetic Q(I)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "correspondingProperty"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "modality"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const/4 v7, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v7

    goto :goto_3

    :cond_2
    const-string v6, "getOriginal"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_3
    const-string v6, "getValueParameters"

    aput-object v6, v5, v7

    goto :goto_3

    :cond_4
    const-string v6, "getOverriddenDescriptors"

    aput-object v6, v5, v7

    :goto_3
    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    const-string v6, "<init>"

    aput-object v6, v5, v4

    :cond_5
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public J0()Lvi8;
    .locals 1

    iget-object p0, p0, Lwi8;->o:Lvi8;

    if-nez p0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lwi8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public K0(Leh5;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lsi8;->e0()Lti8;

    move-result-object p1

    invoke-interface {p1}, Lknb;->getType()Leh5;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lwi8;->n:Leh5;

    return-void
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lwi8;->J0()Lvi8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lwi8;->J0()Lvi8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lwi8;->J0()Lvi8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lxt1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwi8;->J0()Lvi8;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/Collection;
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lsi8;->F0(Z)Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lwi8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lwi8;->Q(I)V

    :cond_0
    return-object p0
.end method

.method public getReturnType()Leh5;
    .locals 0

    iget-object p0, p0, Lwi8;->n:Leh5;

    return-object p0
.end method

.method public bridge synthetic l0()Ldu1;
    .locals 0

    invoke-virtual {p0}, Lwi8;->J0()Lvi8;

    move-result-object p0

    return-object p0
.end method

.method public q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lbu1;->g(Lvi8;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
