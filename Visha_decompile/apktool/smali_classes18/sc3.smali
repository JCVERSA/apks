.class public final Lsc3;
.super Ltw0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lby6;)V
    .locals 12

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lid3;->a:Lid3;

    invoke-virtual {v0}, Lid3;->i()Lqq6;

    move-result-object v2

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    sget-object v10, Lyt9;->a:Lyt9;

    const/4 v8, 0x0

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->e:Lvx9;

    move-object v1, p0

    move-object v3, p1

    move-object v7, v10

    invoke-direct/range {v1 .. v9}, Ltw0;-><init>(Lxt1;Lby6;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;Ljava/util/Collection;Lyt9;ZLvx9;)V

    sget-object p1, Lmd;->u1:Lmd$a;

    invoke-virtual {p1}, Lmd$a;->b()Lmd;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v10}, Lnw0;->i1(Lqw0;Lmd;ZLyt9;)Lnw0;

    move-result-object p1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lb92;->d:Lc92;

    invoke-virtual {p1, v1, v2}, Lnw0;->l1(Ljava/util/List;Lc92;)Lnw0;

    const-string v1, "create(this, Annotations\u2026          )\n            }"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->SCOPE_FOR_ERROR_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    invoke-virtual {p1}, Lyt1;->getName()Lby6;

    move-result-object v2

    invoke-virtual {v2}, Lby6;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "errorConstructor.name.toString()"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lid3;->b(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;[Ljava/lang/String;)Lfd3;

    move-result-object v1

    new-instance v2, Lgd3;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->ERROR_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Lid3;->e(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lhd3;

    move-result-object v4

    new-array v9, v3, [Ljava/lang/String;

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    move-object v5, v1

    invoke-direct/range {v3 .. v11}, Lgd3;-><init>(Lsbb;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Z[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->b1(Leh5;)V

    invoke-static {p1}, Lxe9;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Ltw0;->F0(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Ljava/util/Set;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)V

    return-void
.end method


# virtual methods
.method public C0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lqw0;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public Q(Lkotlin/reflect/jvm/internal/impl/types/l;Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1

    const-string v0, "typeSubstitution"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;->SCOPE_FOR_ERROR_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;

    invoke-virtual {p0}, Lo2;->getName()Lby6;

    move-result-object p0

    invoke-virtual {p0}, Lby6;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.toString()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lid3;->b(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorScopeKind;[Ljava/lang/String;)Lfd3;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lzt1;
    .locals 0

    invoke-virtual {p0, p1}, Lsc3;->C0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lqw0;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lo2;->getName()Lby6;

    move-result-object p0

    invoke-virtual {p0}, Lby6;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
