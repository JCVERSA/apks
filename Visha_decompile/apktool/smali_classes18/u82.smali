.class public final Lu82;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu82$a;
    }
.end annotation


# static fields
.field public static final c:Lu82$a;

.field public static d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:Lu82;

.field public static final p:Lu82;

.field public static final q:Lu82;

.field public static final r:Lu82;

.field public static final s:Lu82;

.field public static final t:Lu82;

.field public static final u:Lu82;

.field public static final v:Lu82;

.field public static final w:Lu82;

.field public static final x:Lu82;

.field public static final y:Ljava/util/List;

.field public static final z:Ljava/util/List;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lu82$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu82$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu82;->c:Lu82$a;

    const/4 v2, 0x1

    sput v2, Lu82;->d:I

    invoke-static {v0}, Lu82$a;->a(Lu82$a;)I

    move-result v3

    sput v3, Lu82;->e:I

    invoke-static {v0}, Lu82$a;->a(Lu82$a;)I

    move-result v4

    sput v4, Lu82;->f:I

    invoke-static {v0}, Lu82$a;->a(Lu82$a;)I

    move-result v5

    sput v5, Lu82;->g:I

    invoke-static {v0}, Lu82$a;->a(Lu82$a;)I

    move-result v6

    sput v6, Lu82;->h:I

    invoke-static {v0}, Lu82$a;->a(Lu82$a;)I

    move-result v7

    sput v7, Lu82;->i:I

    invoke-static {v0}, Lu82$a;->a(Lu82$a;)I

    move-result v8

    sput v8, Lu82;->j:I

    invoke-static {v0}, Lu82$a;->a(Lu82$a;)I

    move-result v0

    sub-int/2addr v0, v2

    sput v0, Lu82;->k:I

    or-int v2, v3, v4

    or-int/2addr v2, v5

    sput v2, Lu82;->l:I

    or-int v9, v4, v7

    or-int/2addr v9, v8

    sput v9, Lu82;->m:I

    or-int v10, v7, v8

    sput v10, Lu82;->n:I

    new-instance v11, Lu82;

    const/4 v12, 0x2

    invoke-direct {v11, v0, v1, v12, v1}, Lu82;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v11, Lu82;->o:Lu82;

    new-instance v0, Lu82;

    invoke-direct {v0, v10, v1, v12, v1}, Lu82;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu82;->p:Lu82;

    new-instance v0, Lu82;

    invoke-direct {v0, v3, v1, v12, v1}, Lu82;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu82;->q:Lu82;

    new-instance v0, Lu82;

    invoke-direct {v0, v4, v1, v12, v1}, Lu82;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu82;->r:Lu82;

    new-instance v0, Lu82;

    invoke-direct {v0, v5, v1, v12, v1}, Lu82;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu82;->s:Lu82;

    new-instance v0, Lu82;

    invoke-direct {v0, v2, v1, v12, v1}, Lu82;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu82;->t:Lu82;

    new-instance v0, Lu82;

    invoke-direct {v0, v6, v1, v12, v1}, Lu82;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu82;->u:Lu82;

    new-instance v0, Lu82;

    invoke-direct {v0, v7, v1, v12, v1}, Lu82;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu82;->v:Lu82;

    new-instance v0, Lu82;

    invoke-direct {v0, v8, v1, v12, v1}, Lu82;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu82;->w:Lu82;

    new-instance v0, Lu82;

    invoke-direct {v0, v9, v1, v12, v1}, Lu82;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu82;->x:Lu82;

    const-class v0, Lu82;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "T::class.java.fields"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v7, "field.name"

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lu82;

    if-eqz v9, :cond_3

    check-cast v8, Lu82;

    goto :goto_2

    :cond_3
    move-object v8, v1

    :goto_2
    if-eqz v8, :cond_4

    new-instance v9, Lu82$a$a;

    iget v8, v8, Lu82;->b:I

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v8, v5}, Lu82$a$a;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v9, v1

    :goto_3
    if-eqz v9, :cond_2

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sput-object v2, Lu82;->y:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    :goto_4
    if-ge v6, v3, :cond_7

    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v4, v5}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    neg-int v5, v4

    and-int/2addr v5, v4

    if-ne v4, v5, :cond_b

    new-instance v5, Lu82$a$a;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4, v3}, Lu82$a$a;-><init>(ILjava/lang/String;)V

    goto :goto_7

    :cond_b
    move-object v5, v1

    :goto_7
    if-eqz v5, :cond_a

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    sput-object v2, Lu82;->z:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1

    const-string v0, "excludes"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lu82;->a:Ljava/util/List;

    .line 3
    check-cast p2, Ljava/lang/Iterable;

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt82;

    .line 5
    invoke-virtual {v0}, Lt82;->a()I

    move-result v0

    not-int v0, v0

    and-int/2addr p1, v0

    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lu82;->b:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 7
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lu82;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Lu82;->k:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Lu82;->l:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, Lu82;->i:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    sget v0, Lu82;->e:I

    return v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, Lu82;->d:I

    return v0
.end method

.method public static final synthetic g()I
    .locals 1

    sget v0, Lu82;->h:I

    return v0
.end method

.method public static final synthetic h()I
    .locals 1

    sget v0, Lu82;->f:I

    return v0
.end method

.method public static final synthetic i()I
    .locals 1

    sget v0, Lu82;->g:I

    return v0
.end method

.method public static final synthetic j()I
    .locals 1

    sget v0, Lu82;->j:I

    return v0
.end method

.method public static final synthetic k(I)V
    .locals 0

    sput p0, Lu82;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    iget p0, p0, Lu82;->b:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lu82;

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.DescriptorKindFilter"

    invoke-static {p1, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lu82;

    iget-object v1, p0, Lu82;->a:Ljava/util/List;

    iget-object v3, p1, Lu82;->a:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lu82;->b:I

    iget p1, p1, Lu82;->b:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lu82;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lu82;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final l()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lu82;->a:Ljava/util/List;

    return-object p0
.end method

.method public final m()I
    .locals 0

    iget p0, p0, Lu82;->b:I

    return p0
.end method

.method public final n(I)Lu82;
    .locals 1

    iget v0, p0, Lu82;->b:I

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lu82;

    iget-object p0, p0, Lu82;->a:Ljava/util/List;

    invoke-direct {v0, p1, p0}, Lu82;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    sget-object v0, Lu82;->y:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lu82$a$a;

    invoke-virtual {v3}, Lu82$a$a;->a()I

    move-result v3

    iget v4, p0, Lu82;->b:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lu82$a$a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lu82$a$a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_6

    sget-object v0, Lu82;->z:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu82$a$a;

    invoke-virtual {v1}, Lu82$a$a;->a()I

    move-result v4

    invoke-virtual {p0, v4}, Lu82;->a(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lu82$a$a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, " | "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DescriptorKindFilter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu82;->a:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
