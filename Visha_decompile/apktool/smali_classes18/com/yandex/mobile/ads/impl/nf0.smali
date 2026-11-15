.class public final Lcom/yandex/mobile/ads/impl/nf0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/nf0$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lqv0;->g:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/yandex/mobile/ads/impl/nf0;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static final a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/vh0;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4
    const-string v0, "httpHeader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vh0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final a(Ljava/util/Map;)Ljava/nio/charset/Charset;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/nio/charset/Charset;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 31
    sget-object p0, Lcom/yandex/mobile/ads/impl/nf0;->a:Ljava/nio/charset/Charset;

    return-object p0

    .line 32
    :cond_0
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_c

    .line 33
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, ";"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 35
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p0, v0}, Li81;->U0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 40
    :cond_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    .line 41
    :goto_1
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 42
    check-cast p0, [Ljava/lang/String;

    .line 43
    array-length v0, p0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_c

    .line 44
    aget-object v4, p0, v3

    .line 45
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v2

    move v6, v1

    move v7, v6

    :goto_3
    if-gt v6, v5, :cond_8

    if-nez v7, :cond_3

    move v8, v6

    goto :goto_4

    :cond_3
    move v8, v5

    .line 46
    :goto_4
    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    .line 47
    invoke-static {v8, v9}, Ly45;->l(II)I

    move-result v8

    if-gtz v8, :cond_4

    move v8, v2

    goto :goto_5

    :cond_4
    move v8, v1

    :goto_5
    if-nez v7, :cond_6

    if-nez v8, :cond_5

    move v7, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    if-nez v8, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 48
    invoke-interface {v4, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lkotlin/text/Regex;

    .line 50
    const-string v6, "="

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v4

    .line 51
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 52
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 53
    :goto_7
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 54
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 55
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_9

    goto :goto_7

    .line 56
    :cond_9
    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Li81;->U0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    goto :goto_8

    .line 57
    :cond_a
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v4

    .line 58
    :goto_8
    new-array v5, v1, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 59
    check-cast v4, [Ljava/lang/String;

    .line 60
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    aget-object v5, v4, v1

    const-string v6, "charset"

    invoke-static {v5, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    aget-object p0, v4, v2

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    const-string v0, "forName(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 61
    :cond_c
    sget-object p0, Lcom/yandex/mobile/ads/impl/nf0;->a:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static final a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;Lcom/yandex/mobile/ads/impl/nf0$a;)Ljava/util/ArrayList;
    .locals 10

    const/4 v0, 0x1

    .line 6
    const-string v1, "responseHeaders"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "header"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "parser"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_a

    .line 10
    :cond_0
    new-instance p1, Lkotlin/text/Regex;

    const-string v2, ","

    invoke-direct {p1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p0, p1}, Li81;->U0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    .line 18
    :goto_1
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 19
    check-cast p0, [Ljava/lang/String;

    .line 20
    array-length p1, p0

    move v3, v2

    :goto_2
    if-ge v3, p1, :cond_a

    aget-object v4, p0, v3

    .line 21
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    move v6, v2

    move v7, v6

    :goto_3
    if-gt v6, v5, :cond_8

    if-nez v7, :cond_3

    move v8, v6

    goto :goto_4

    :cond_3
    move v8, v5

    .line 23
    :goto_4
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    .line 24
    invoke-static {v8, v9}, Ly45;->l(II)I

    move-result v8

    if-gtz v8, :cond_4

    move v8, v0

    goto :goto_5

    :cond_4
    move v8, v2

    :goto_5
    if-nez v7, :cond_6

    if-nez v8, :cond_5

    move v7, v0

    goto :goto_3

    :cond_5
    add-int/2addr v6, v0

    goto :goto_3

    :cond_6
    if-nez v8, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_8

    :cond_8
    :goto_6
    add-int/2addr v5, v0

    .line 25
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p2, v4}, Lcom/yandex/mobile/ads/impl/nf0$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 29
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    .line 30
    :goto_7
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :goto_8
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v4}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/2addr v3, v0

    goto :goto_2

    :cond_a
    :goto_a
    return-object v1
.end method

.method public static final a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/vh0;",
            "Z)Z"
        }
    .end annotation

    .line 1
    const-string v0, "responseHeaders"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpHeader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)I
    .locals 1

    const-string v0, "httpHeader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/yandex/mobile/ads/impl/oa;->b:I

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "responseHeaders"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/of0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/of0;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/nf0;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/vh0;Lcom/yandex/mobile/ads/impl/nf0$a;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
