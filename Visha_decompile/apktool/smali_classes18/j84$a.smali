.class public final Lj84$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj84;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lj84$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lh84;Z)Lj84;
    .locals 10

    const-string p0, "functionClass"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lh84;->r()Ljava/util/List;

    move-result-object p0

    new-instance v9, Lj84;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v9

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lj84;-><init>(Lxt1;Lj84;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lo2;->R()Lro8;

    move-result-object v2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v4

    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lhcb;

    invoke-interface {v1}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v1, v5, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Li81;->j1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance v5, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmz4;

    sget-object v0, Lj84;->F:Lj84$a;

    invoke-virtual {p2}, Lmz4;->c()I

    move-result v1

    invoke-virtual {p2}, Lmz4;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhcb;

    invoke-virtual {v0, v9, v1, p2}, Lj84$a;->b(Lj84;ILhcb;)Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    move-result-object p2

    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhcb;

    invoke-interface {p0}, Lpx0;->q()Lsm9;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v8, Lb92;->e:Lc92;

    const/4 v1, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Lbm9;->i1(Lro8;Lro8;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lc92;)Lbm9;

    const/4 p0, 0x1

    invoke-virtual {v9, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->U0(Z)V

    return-object v9
.end method

.method public final b(Lj84;ILhcb;)Lkotlin/reflect/jvm/internal/impl/descriptors/h;
    .locals 14

    invoke-interface/range {p3 .. p3}, Lgy6;->getName()Lby6;

    move-result-object v0

    invoke-virtual {v0}, Lby6;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "typeParameter.name.asString()"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "T"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "instance"

    goto :goto_0

    :cond_0
    const-string v1, "E"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "receiver"

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    sget-object v1, Lmd;->u1:Lmd$a;

    invoke-virtual {v1}, Lmd$a;->b()Lmd;

    move-result-object v5

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v6

    const-string v0, "identifier(name)"

    invoke-static {v6, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lpx0;->q()Lsm9;

    move-result-object v7

    const-string v0, "typeParameter.defaultType"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lyt9;->a:Lyt9;

    const-string v0, "NO_SOURCE"

    invoke-static {v12, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v13

    move-object v2, p1

    move/from16 v4, p2

    invoke-direct/range {v1 .. v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/h;ILmd;Lby6;Leh5;ZZZLeh5;Lyt9;)V

    return-object v13
.end method
