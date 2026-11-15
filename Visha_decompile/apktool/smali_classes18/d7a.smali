.class public abstract Ld7a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lgw6;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v8, Lgw6;

    new-instance v1, Lt93;

    sget-object v0, Lid3;->a:Lid3;

    invoke-virtual {v0}, Lid3;->i()Lqq6;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/e;->n:Lo54;

    invoke-direct {v1, v0, v2}, Lt93;-><init>(Lqq6;Lo54;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e;->q:Lo54;

    invoke-virtual {v0}, Lo54;->g()Lby6;

    move-result-object v5

    sget-object v6, Lyt9;->a:Lyt9;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->e:Lvx9;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lgw6;-><init>(Lxt1;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;ZZLby6;Lyt9;Lvx9;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    invoke-virtual {v8, v0}, Lgw6;->H0(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)V

    sget-object v0, Lb92;->e:Lc92;

    invoke-virtual {v8, v0}, Lgw6;->J0(Lc92;)V

    sget-object v0, Lmd;->u1:Lmd$a;

    invoke-virtual {v0}, Lmd$a;->b()Lmd;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const-string v0, "T"

    invoke-static {v0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Licb;->M0(Lxt1;Lmd;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lby6;ILvx9;)Lhcb;

    move-result-object v0

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lgw6;->I0(Ljava/util/List;)V

    invoke-virtual {v8}, Lgw6;->F0()V

    sput-object v8, Ld7a;->a:Lgw6;

    return-void
.end method

.method public static final a(Leh5;)Lsm9;
    .locals 13

    const-string v0, "suspendFunType"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->q(Leh5;)Z

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->i(Leh5;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v1

    invoke-virtual {p0}, Leh5;->getAnnotations()Lmd;

    move-result-object v2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->j(Leh5;)Leh5;

    move-result-object v3

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->e(Leh5;)Ljava/util/List;

    move-result-object v4

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->l(Leh5;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmcb;

    invoke-interface {v6}, Lmcb;->getType()Leh5;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/j;->c:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->h()Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v6

    sget-object v0, Ld7a;->a:Lgw6;

    invoke-virtual {v0}, Lgw6;->m()Lsbb;

    move-result-object v7

    const-string v0, "FAKE_CONTINUATION_CLASS_DESCRIPTOR.typeConstructor"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->k(Leh5;)Leh5;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->a(Leh5;)Lmcb;

    move-result-object v0

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->j(Lkotlin/reflect/jvm/internal/impl/types/j;Lsbb;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/c;ILjava/lang/Object;)Lsm9;

    move-result-object v0

    invoke-static {v5, v0}, Li81;->K0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->i(Leh5;)Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->I()Lsm9;

    move-result-object v7

    const-string v0, "suspendFunType.builtIns.nullableAnyType"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x80

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lkotlin/reflect/jvm/internal/impl/builtins/c;->c(Lkotlin/reflect/jvm/internal/impl/builtins/d;Lmd;Leh5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Leh5;ZILjava/lang/Object;)Lsm9;

    move-result-object v0

    invoke-virtual {p0}, Leh5;->J0()Z

    move-result p0

    invoke-virtual {v0, p0}, Lsm9;->P0(Z)Lsm9;

    move-result-object p0

    return-object p0
.end method
