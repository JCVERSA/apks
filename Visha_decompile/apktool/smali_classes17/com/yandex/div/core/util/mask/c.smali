.class public final Lcom/yandex/div/core/util/mask/c;
.super Lcom/yandex/div/core/util/mask/BaseInputMask;
.source "SourceFile"


# instance fields
.field public final e:Le74;


# direct methods
.method public constructor <init>(Le74;)V
    .locals 1

    const-string v0, "onError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/div/core/util/mask/d;->b()Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;-><init>(Lcom/yandex/div/core/util/mask/BaseInputMask$b;)V

    iput-object p1, p0, Lcom/yandex/div/core/util/mask/c;->e:Le74;

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    if-ge v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->m()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->k(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->w(I)V

    return-void
.end method

.method public final B(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/yandex/div/core/util/mask/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->o()Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final C(Ljava/lang/String;)Lzfb;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/c;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/c;->D(Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final D(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    invoke-static {}, Lcom/yandex/div/core/util/mask/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->o()Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;->a()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->y(Lcom/yandex/div/core/util/mask/BaseInputMask$b;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 9

    const-string v0, "newValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/util/mask/e;->d:Lcom/yandex/div/core/util/mask/e$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/yandex/div/core/util/mask/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/core/util/mask/e;

    move-result-object v1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/yandex/div/core/util/mask/e;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/e;->a()I

    move-result v3

    sub-int/2addr p2, v3

    const/4 v3, 0x0

    invoke-static {p2, v3}, Lwn8;->d(II)I

    move-result p2

    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/e;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/yandex/div/core/util/mask/e;->b()I

    move-result v1

    invoke-direct {v2, p2, v3, v1}, Lcom/yandex/div/core/util/mask/e;-><init>(III)V

    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->t(Lcom/yandex/div/core/util/mask/e;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/BaseInputMask;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/yandex/div/core/util/mask/c;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->e(Lcom/yandex/div/core/util/mask/e;I)V

    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/yandex/div/core/util/mask/c;->D(Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Lcom/yandex/div/core/util/mask/BaseInputMask;->v(Lcom/yandex/div/core/util/mask/BaseInputMask;Ljava/lang/String;ILjava/lang/Integer;ILjava/lang/Object;)V

    invoke-virtual {v0, p2, v8}, Lcom/yandex/div/core/util/mask/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/core/util/mask/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result p2

    invoke-virtual {p1}, Lcom/yandex/div/core/util/mask/e;->a()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/util/mask/c;->A(I)V

    return-void
.end method

.method public r(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/util/mask/c;->e:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    const-string v0, "newRawValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/util/mask/c;->C(Ljava/lang/String;)Lzfb;

    invoke-super {p0, p1}, Lcom/yandex/div/core/util/mask/BaseInputMask;->s(Ljava/lang/String;)V

    return-void
.end method
