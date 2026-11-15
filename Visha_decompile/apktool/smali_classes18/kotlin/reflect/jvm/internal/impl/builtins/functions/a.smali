.class public final Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsw0;


# instance fields
.field public final a:Lvx9;

.field public final b:Lqq6;


# direct methods
.method public constructor <init>(Lvx9;Lqq6;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;->a:Lvx9;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;->b:Lqq6;

    return-void
.end method


# virtual methods
.method public a(Lo54;Lby6;)Z
    .locals 3

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lby6;->b()Ljava/lang/String;

    move-result-object p0

    const-string p2, "name.asString()"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Function"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p2, v0, v1, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "KFunction"

    invoke-static {p0, p2, v0, v1, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "SuspendFunction"

    invoke-static {p0, p2, v0, v1, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "KSuspendFunction"

    invoke-static {p0, p2, v0, v1, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;

    invoke-virtual {p2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;->c(Ljava/lang/String;Lo54;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a$a;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public b(Lxw0;)Lqw0;
    .locals 5

    const-string v0, "classId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxw0;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lxw0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lxw0;->i()Lo54;

    move-result-object v0

    invoke-virtual {v0}, Lo54;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classId.relativeClassName.asString()"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Function"

    invoke-static {v0, v4, v2, v3, v1}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lxw0;->h()Lo54;

    move-result-object p1

    const-string v2, "classId.packageFqName"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;

    invoke-virtual {v2, v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a;->c(Ljava/lang/String;Lo54;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a$a;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a$a;->a()Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind$a$a;->b()I

    move-result v0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;->b:Lqq6;

    invoke-interface {v2, p1}, Lqq6;->C(Lo54;)Lpv7;

    move-result-object p1

    invoke-interface {p1}, Lpv7;->H()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lnn0;

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v2}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnn0;

    new-instance v2, Lh84;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/a;->a:Lvx9;

    invoke-direct {v2, p0, p1, v1, v0}, Lh84;-><init>(Lvx9;Ldv7;Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;I)V

    return-object v2

    :cond_6
    :goto_2
    return-object v1
.end method

.method public c(Lo54;)Ljava/util/Collection;
    .locals 0

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
