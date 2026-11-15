.class public abstract Lcom/yandex/div/core/util/mask/BaseInputMask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/util/mask/BaseInputMask$a;,
        Lcom/yandex/div/core/util/mask/BaseInputMask$b;,
        Lcom/yandex/div/core/util/mask/BaseInputMask$c;
    }
.end annotation


# instance fields
.field public a:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

.field public final b:Ljava/util/Map;

.field public c:Ljava/util/List;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/util/mask/BaseInputMask$b;)V
    .locals 3

    const-string v0, "initialMaskData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->a:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->b:Ljava/util/Map;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->z(Lcom/yandex/div/core/util/mask/BaseInputMask;Lcom/yandex/div/core/util/mask/BaseInputMask$b;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/div/core/util/mask/BaseInputMask;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/util/mask/BaseInputMask;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: applyChangeFrom"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic v(Lcom/yandex/div/core/util/mask/BaseInputMask;Ljava/lang/String;ILjava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/util/mask/BaseInputMask;->u(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: replaceChars"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic z(Lcom/yandex/div/core/util/mask/BaseInputMask;Lcom/yandex/div/core/util/mask/BaseInputMask$b;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/util/mask/BaseInputMask;->y(Lcom/yandex/div/core/util/mask/BaseInputMask$b;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateMaskData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "newValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/util/mask/e;->d:Lcom/yandex/div/core/util/mask/e$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/yandex/div/core/util/mask/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/core/util/mask/e;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/yandex/div/core/util/mask/e;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0}, Lcom/yandex/div/core/util/mask/e;->a()I

    move-result v2

    sub-int/2addr p2, v2

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lwn8;->d(II)I

    move-result p2

    invoke-virtual {v0}, Lcom/yandex/div/core/util/mask/e;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/yandex/div/core/util/mask/e;->b()I

    move-result v0

    invoke-direct {v1, p2, v2, v0}, Lcom/yandex/div/core/util/mask/e;-><init>(III)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->t(Lcom/yandex/div/core/util/mask/e;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->e(Lcom/yandex/div/core/util/mask/e;I)V

    return-void
.end method

.method public final c(Lcom/yandex/div/core/util/mask/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result p0

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->a()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Lcom/yandex/div/core/util/mask/e;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->b()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->j(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/yandex/div/core/util/mask/e;I)V
    .locals 1

    const-string v0, "textDiff"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->n()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result p1

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/util/mask/BaseInputMask;->k(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->d:I

    return-void
.end method

.method public final f(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const-string v0, "substring"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput p2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance p2, Lcom/yandex/div/core/util/mask/BaseInputMask$calculateInsertableSubstring$moveToAndGetNextHolderFilter$1;

    invoke-direct {p2, v1, p0}, Lcom/yandex/div/core/util/mask/BaseInputMask$calculateInsertableSubstring$moveToAndGetNextHolderFilter$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/yandex/div/core/util/mask/BaseInputMask;)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/text/Regex;

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "charsCanBeInsertedStringBuilder.toString()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g(Ljava/lang/String;I)I
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v0, p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/util/mask/BaseInputMask;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move v3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    add-int v4, p2, v3

    invoke-virtual {p0, p1, v4}, Lcom/yandex/div/core/util/mask/BaseInputMask;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v3, -0x1

    :goto_2
    invoke-static {v0, v1}, Lwn8;->d(II)I

    move-result p0

    return p0
.end method

.method public final h(Lcom/yandex/div/core/util/mask/e;)V
    .locals 3

    const-string v0, "textDiff"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->a()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/util/mask/BaseInputMask$a;

    instance-of v2, v1, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a()Ljava/lang/Character;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->d(Ljava/lang/Character;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result p1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->i(II)V

    return-void
.end method

.method public final i(II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/util/mask/BaseInputMask$a;

    instance-of v1, v0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->d(Ljava/lang/Character;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/util/mask/BaseInputMask$a;

    instance-of v2, v1, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a()Ljava/lang/Character;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "tailStringBuilder.toString()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final k(I)I
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/util/mask/BaseInputMask$a;

    instance-of v0, v0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->d:I

    return p0
.end method

.method public final m()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->c:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "destructedValue"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()I
    .locals 5

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/core/util/mask/BaseInputMask$a;

    instance-of v4, v2, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    if-eqz v4, :cond_0

    check-cast v2, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    invoke-virtual {v2}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a()Ljava/lang/Character;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-eq v1, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    return v1
.end method

.method public final o()Lcom/yandex/div/core/util/mask/BaseInputMask$b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->a:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->j(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/yandex/div/core/util/mask/BaseInputMask$a;

    instance-of v5, v4, Lcom/yandex/div/core/util/mask/BaseInputMask$a$b;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/yandex/div/core/util/mask/BaseInputMask$a$b;

    invoke-virtual {v4}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$b;->a()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    invoke-virtual {v5}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a()Ljava/lang/Character;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a()Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->a:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    invoke-virtual {v5}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "null cannot be cast to non-null type com.yandex.div.core.util.mask.BaseInputMask.MaskChar.Dynamic"

    invoke-static {v4, v5}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    invoke-virtual {v4}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->c()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "stringBuilder.toString()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract r(Ljava/lang/Exception;)V
.end method

.method public s(Ljava/lang/String;)V
    .locals 8

    const-string v0, "newRawValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->i(II)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/yandex/div/core/util/mask/BaseInputMask;->v(Lcom/yandex/div/core/util/mask/BaseInputMask;Ljava/lang/String;ILjava/lang/Integer;ILjava/lang/Object;)V

    iget p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->d:I

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->d:I

    return-void
.end method

.method public final t(Lcom/yandex/div/core/util/mask/e;Ljava/lang/String;)I
    .locals 6

    const-string v0, "textDiff"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/util/mask/BaseInputMask;->c(Lcom/yandex/div/core/util/mask/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->d(Lcom/yandex/div/core/util/mask/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->h(Lcom/yandex/div/core/util/mask/e;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->n()I

    move-result p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->g(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p2, p1, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->u(Ljava/lang/String;ILjava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->n()I

    move-result p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/core/util/mask/BaseInputMask;->v(Lcom/yandex/div/core/util/mask/BaseInputMask;Ljava/lang/String;ILjava/lang/Integer;ILjava/lang/Object;)V

    return p1
.end method

.method public final u(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 3

    const-string v0, "substring"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/util/mask/BaseInputMask;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p3}, Ll1a;->u1(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p3, v0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/util/mask/BaseInputMask$a;

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    instance-of v2, v0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->d(Ljava/lang/Character;)V

    add-int/lit8 p3, p3, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final w(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->d:I

    return-void
.end method

.method public final x(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->c:Ljava/util/List;

    return-void
.end method

.method public y(Lcom/yandex/div/core/util/mask/BaseInputMask$b;Z)V
    .locals 7

    const-string v0, "newMaskData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->a:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->p()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iput-object p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->a:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    iget-object p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->a:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;->b()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/util/mask/BaseInputMask$c;

    :try_start_0
    invoke-virtual {v0}, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->b()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->r(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->a:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->a:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    invoke-virtual {v4}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;->b()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/yandex/div/core/util/mask/BaseInputMask$c;

    invoke-virtual {v6}, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->b()C

    move-result v6

    if-ne v6, v3, :cond_3

    goto :goto_3

    :cond_4
    move-object v5, v1

    :goto_3
    check-cast v5, Lcom/yandex/div/core/util/mask/BaseInputMask$c;

    if-eqz v5, :cond_5

    new-instance v3, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    iget-object v4, p0, Lcom/yandex/div/core/util/mask/BaseInputMask;->b:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->b()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/text/Regex;

    invoke-virtual {v5}, Lcom/yandex/div/core/util/mask/BaseInputMask$c;->c()C

    move-result v5

    invoke-direct {v3, v1, v4, v5}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;-><init>(Ljava/lang/Character;Lkotlin/text/Regex;C)V

    goto :goto_4

    :cond_5
    new-instance v4, Lcom/yandex/div/core/util/mask/BaseInputMask$a$b;

    invoke-direct {v4, v3}, Lcom/yandex/div/core/util/mask/BaseInputMask$a$b;-><init>(C)V

    move-object v3, v4

    :goto_4
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->x(Ljava/util/List;)V

    if-eqz p2, :cond_7

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/util/mask/BaseInputMask;->s(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
