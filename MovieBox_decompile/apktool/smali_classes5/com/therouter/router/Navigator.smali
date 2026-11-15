.class public Lcom/therouter/router/Navigator;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Intent;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Landroid/os/Bundle;

.field private final f:Ljava/util/HashMap;

.field private g:Landroid/os/Bundle;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/net/Uri;

.field private k:Landroid/content/ClipData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/therouter/router/Navigator;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/therouter/router/Navigator;->b:Landroid/content/Intent;

    .line 2
    iput-object p1, p0, Lcom/therouter/router/Navigator;->c:Ljava/lang/String;

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 6
    iget-object p2, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v0, "Navigator"

    const-string v1, "Navigator constructor parameter url is empty"

    invoke-static {p2, v0, v1}, Lcom/therouter/TheRouterKt;->h(ZLjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/d;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    if-nez p2, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, p2

    .line 11
    :goto_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/therouter/router/Navigator;->c(Lcom/therouter/router/Navigator;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/therouter/router/Navigator;->c(Lcom/therouter/router/Navigator;Ljava/lang/String;)V

    return-void
.end method

.method private static final a(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "="

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_6

    .line 26
    .line 27
    const/4 v5, 0x6

    .line 28
    const/4 v6, 0x0

    .line 29
    const-string v2, "="

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    move-object v1, p1

    .line 34
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, -0x1

    .line 39
    const-string v2, ""

    .line 40
    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    const-string v3, "substring(...)"

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    add-int/2addr v0, v1

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    move-object v7, v2

    .line 65
    move-object v2, p1

    .line 66
    move-object p1, v7

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 77
    .line 78
    invoke-static {p2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const/4 v0, 0x0

    .line 88
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_5

    .line 114
    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-nez p2, :cond_6

    .line 120
    .line 121
    :cond_5
    iget-object p0, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_3
    return-void
.end method

.method static synthetic b(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x4

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const-string p2, ""

    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/therouter/router/Navigator;->a(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: _init_$parser"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private static final c(Lcom/therouter/router/Navigator;Ljava/lang/String;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const/16 v4, 0x3f

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    invoke-static {p1, v4, v0, v5, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-ne v4, v1, :cond_1

    .line 15
    .line 16
    const/4 v9, 0x6

    .line 17
    const/4 v10, 0x0

    .line 18
    const/16 v6, 0x3f

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    move-object v5, p1

    .line 23
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->n0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, -0x1

    .line 28
    if-le v4, v5, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const-string v5, "substring(...)"

    .line 35
    .line 36
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    add-int/2addr v4, v1

    .line 40
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-array v7, v1, [C

    .line 48
    .line 49
    const/16 v4, 0x26

    .line 50
    .line 51
    aput-char v4, v7, v0

    .line 52
    .line 53
    const/4 v10, 0x6

    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->R0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move-object v5, v4

    .line 62
    check-cast v5, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_2

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    :goto_0
    if-ge v0, v5, :cond_2

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    sub-int/2addr v6, v1

    .line 81
    if-ne v0, v6, :cond_0

    .line 82
    .line 83
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p0, v6, p1}, Lcom/therouter/router/Navigator;->a(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {p0, v6, v3, v2, v3}, Lcom/therouter/router/Navigator;->b(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    add-int/2addr v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    if-eqz p1, :cond_2

    .line 105
    .line 106
    const-string v0, "&"

    .line 107
    .line 108
    filled-new-array {v0}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const/4 v8, 0x6

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    move-object v4, p1

    .line 117
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    check-cast p1, Ljava/lang/Iterable;

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {p0, v0, v3, v2, v3}, Lcom/therouter/router/Navigator;->b(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    return-void
.end method

.method public static final synthetic d(Lcom/therouter/router/Navigator;)Landroid/content/ClipData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/therouter/router/Navigator;->k:Landroid/content/ClipData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/therouter/router/Navigator;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/therouter/router/Navigator;->j:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/therouter/router/Navigator;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/therouter/router/Navigator;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/therouter/router/Navigator;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/therouter/router/Navigator;->g:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/therouter/router/Navigator;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/therouter/router/Navigator;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic w(Lcom/therouter/router/Navigator;Landroid/content/Context;ILmf/c;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/therouter/router/Navigator;->s(Landroid/content/Context;ILmf/c;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: navigation"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/therouter/c;->c()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/therouter/router/Navigator;->u(Landroid/content/Context;Lmf/c;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string p1, "Super calls with default arguments not supported in this target, function: navigation"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public static synthetic y(Lcom/therouter/router/Navigator;Landroidx/fragment/app/Fragment;ILmf/c;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/therouter/router/Navigator;->v(Landroidx/fragment/app/Fragment;ILmf/c;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: navigation"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Landroid/os/Bundle;)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final B(Ljava/lang/String;B)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final C(Ljava/lang/String;C)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final D(Ljava/lang/String;D)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final E(Ljava/lang/String;F)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final G(Ljava/lang/String;J)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final H(Ljava/lang/String;Ljava/lang/Object;)Lcom/therouter/router/Navigator;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->j()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 16
    .line 17
    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public final I(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final i(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/therouter/router/action/ActionManager;->a:Lcom/therouter/router/action/ActionManager;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/therouter/router/action/ActionManager;->d(Lcom/therouter/router/Navigator;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, p1, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final j(I)Lcom/therouter/router/Navigator;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "therouter_intent_flags"

    .line 5
    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    or-int/2addr p1, v1

    .line 11
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final k()Landroidx/fragment/app/Fragment;
    .locals 9

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "begin navigate "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "Navigator::navigationFragment"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x4

    .line 31
    invoke-static {v2, v1, v3, v4, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->e()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lmf/e;

    .line 57
    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    invoke-virtual {v6, v1}, Lmf/e;->c(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_0

    .line 65
    .line 66
    invoke-virtual {v6, v1}, Lmf/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v6, "path replace to "

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v2, v5, v3, v4, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lcom/therouter/router/RouteMapKt;->k(Ljava/lang/String;)Lcom/therouter/router/RouteItem;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    iget-object v6, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    iget-object v6, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    const-string v7, "<get-keys>(...)"

    .line 115
    .line 116
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    check-cast v6, Ljava/lang/Iterable;

    .line 120
    .line 121
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_3

    .line 130
    .line 131
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-nez v8, :cond_2

    .line 142
    .line 143
    iget-object v8, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    check-cast v8, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    if-eqz v1, :cond_4

    .line 156
    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v6, "match route "

    .line 163
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-static {v2, v5, v3, v4, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->g()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-eqz v6, :cond_6

    .line 190
    .line 191
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    check-cast v6, Lmf/g;

    .line 196
    .line 197
    if-eqz v6, :cond_5

    .line 198
    .line 199
    invoke-virtual {v6, v1}, Lmf/g;->b(Lcom/therouter/router/RouteItem;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_5

    .line 204
    .line 205
    invoke-virtual {v6, v1}, Lmf/g;->a(Lcom/therouter/router/RouteItem;)Lcom/therouter/router/RouteItem;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    goto :goto_2

    .line 210
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v6, "route replace to "

    .line 216
    .line 217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-static {v2, v5, v3, v4, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    if-eqz v1, :cond_7

    .line 231
    .line 232
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->f()Lkotlin/jvm/functions/Function2;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    new-instance v3, Lcom/therouter/router/Navigator$createFragment$5$1;

    .line 237
    .line 238
    invoke-direct {v3, v0, p0}, Lcom/therouter/router/Navigator$createFragment$5$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/therouter/router/Navigator;)V

    .line 239
    .line 240
    .line 241
    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    :cond_7
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 247
    .line 248
    return-object v0
.end method

.method public final l(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "begin navigate "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Navigator::createIntent"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x4

    .line 26
    invoke-static {v1, v0, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/therouter/c;->c()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->e()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lmf/e;

    .line 58
    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    invoke-virtual {v5, v0}, Lmf/e;->c(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    invoke-virtual {v5, v0}, Lmf/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, " replace to "

    .line 80
    .line 81
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v1, v0, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object v0, v5

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->k(Ljava/lang/String;)Lcom/therouter/router/RouteItem;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    iget-object v5, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    iget-object v5, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const-string v6, "<get-keys>(...)"

    .line 120
    .line 121
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    check-cast v5, Ljava/lang/Iterable;

    .line 125
    .line 126
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_4

    .line 135
    .line 136
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-nez v7, :cond_3

    .line 147
    .line 148
    iget-object v7, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    check-cast v7, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    if-eqz v0, :cond_5

    .line 161
    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v5, "match route "

    .line 168
    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-static {v1, v4, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->g()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_7

    .line 195
    .line 196
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Lmf/g;

    .line 201
    .line 202
    if-eqz v5, :cond_6

    .line 203
    .line 204
    invoke-virtual {v5, v0}, Lmf/g;->b(Lcom/therouter/router/RouteItem;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-eqz v6, :cond_6

    .line 209
    .line 210
    invoke-virtual {v5, v0}, Lmf/g;->a(Lcom/therouter/router/RouteItem;)Lcom/therouter/router/RouteItem;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-eqz v0, :cond_6

    .line 215
    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v6, "route replace to "

    .line 222
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-static {v1, v5, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_7
    iget-object v1, p0, Lcom/therouter/router/Navigator;->b:Landroid/content/Intent;

    .line 238
    .line 239
    if-nez v1, :cond_8

    .line 240
    .line 241
    new-instance v1, Landroid/content/Intent;

    .line 242
    .line 243
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 244
    .line 245
    .line 246
    :cond_8
    if-eqz v0, :cond_9

    .line 247
    .line 248
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->f()Lkotlin/jvm/functions/Function2;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    new-instance v3, Lcom/therouter/router/Navigator$createIntent$5;

    .line 253
    .line 254
    invoke-direct {v3, p0, v1, p1}, Lcom/therouter/router/Navigator$createIntent$5;-><init>(Lcom/therouter/router/Navigator;Landroid/content/Intent;Landroid/content/Context;)V

    .line 255
    .line 256
    .line 257
    invoke-interface {v2, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    :cond_9
    return-object v1
.end method

.method public final m()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->b:Landroid/content/Intent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "?"

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    invoke-static {v0, v3, v7, v1, v2}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v5, 0x6

    .line 19
    const/4 v6, 0x0

    .line 20
    const/16 v2, 0x3f

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, v0

    .line 25
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->n0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "substring(...)"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/router/Navigator$getUrlWithParams$1;->INSTANCE:Lcom/therouter/router/Navigator$getUrlWithParams$1;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/therouter/router/Navigator;->q(Lkotlin/jvm/functions/Function2;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final q(Lkotlin/jvm/functions/Function2;)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "handle"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v3, v0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/16 v6, 0x26

    .line 31
    .line 32
    const-string v7, ""

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    if-eqz v5, :cond_6

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Ljava/lang/String;

    .line 42
    .line 43
    iget-object v9, v0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-nez v9, :cond_0

    .line 50
    .line 51
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v9, v0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-virtual {v9, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    if-eqz v9, :cond_1

    .line 61
    .line 62
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    if-nez v9, :cond_2

    .line 67
    .line 68
    :cond_1
    move-object v9, v7

    .line 69
    :cond_2
    invoke-interface {v1, v5, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    check-cast v9, Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-nez v10, :cond_0

    .line 80
    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move v4, v8

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v6, v0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 92
    .line 93
    invoke-virtual {v6, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-eqz v6, :cond_5

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-nez v6, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    move-object v7, v6

    .line 107
    :cond_5
    :goto_1
    invoke-interface {v1, v5, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-nez v3, :cond_7

    .line 128
    .line 129
    move-object v10, v7

    .line 130
    goto :goto_2

    .line 131
    :cond_7
    move-object v10, v3

    .line 132
    :goto_2
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-nez v1, :cond_8

    .line 137
    .line 138
    move-object v12, v7

    .line 139
    goto :goto_3

    .line 140
    :cond_8
    move-object v12, v1

    .line 141
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_9

    .line 146
    .line 147
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 148
    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :cond_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    const/4 v3, 0x0

    .line 156
    const/4 v4, 0x2

    .line 157
    if-nez v1, :cond_b

    .line 158
    .line 159
    invoke-static {v10, v6, v8, v4, v3}, Lkotlin/text/StringsKt;->V0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_a

    .line 164
    .line 165
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    :cond_a
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v9, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    const-string v1, "toString(...)"

    .line 178
    .line 179
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const/4 v13, 0x4

    .line 183
    const/4 v14, 0x0

    .line 184
    const/4 v12, 0x0

    .line 185
    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    goto/16 :goto_4

    .line 190
    .line 191
    :cond_b
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    const/16 v5, 0x3f

    .line 196
    .line 197
    const-string v6, "?"

    .line 198
    .line 199
    if-nez v1, :cond_e

    .line 200
    .line 201
    iget-object v11, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 202
    .line 203
    const/4 v15, 0x6

    .line 204
    const/16 v16, 0x0

    .line 205
    .line 206
    const/4 v13, 0x0

    .line 207
    const/4 v14, 0x0

    .line 208
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    const/4 v7, -0x1

    .line 213
    if-le v1, v7, :cond_d

    .line 214
    .line 215
    iget-object v7, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const-string v7, "substring(...)"

    .line 222
    .line 223
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v1, v5, v8, v4, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_c

    .line 231
    .line 232
    iget-object v7, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 233
    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    const/4 v11, 0x4

    .line 250
    const/4 v12, 0x0

    .line 251
    const-string v8, "?"

    .line 252
    .line 253
    const/4 v10, 0x0

    .line 254
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    goto :goto_4

    .line 259
    :cond_c
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 260
    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v2, "#"

    .line 273
    .line 274
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    const/4 v6, 0x4

    .line 282
    const/4 v7, 0x0

    .line 283
    const-string v3, "#"

    .line 284
    .line 285
    const/4 v5, 0x0

    .line 286
    move-object v2, v1

    .line 287
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    goto :goto_4

    .line 292
    :cond_d
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_e
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v1, v5, v8, v4, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-eqz v1, :cond_f

    .line 302
    .line 303
    iget-object v7, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 304
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    const/4 v11, 0x4

    .line 321
    const/4 v12, 0x0

    .line 322
    const-string v8, "?"

    .line 323
    .line 324
    const/4 v10, 0x0

    .line 325
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    goto :goto_4

    .line 330
    :cond_f
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    .line 331
    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    :goto_4
    iget-object v2, v0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    const-string v3, "<get-keys>(...)"

    .line 357
    .line 358
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    check-cast v2, Ljava/lang/Iterable;

    .line 362
    .line 363
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    :goto_5
    move-object v3, v1

    .line 368
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-eqz v1, :cond_11

    .line 373
    .line 374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    check-cast v1, Ljava/lang/String;

    .line 379
    .line 380
    iget-object v4, v0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 381
    .line 382
    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    if-eqz v4, :cond_10

    .line 387
    .line 388
    iget-object v4, v0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 389
    .line 390
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v6, "="

    .line 403
    .line 404
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    iget-object v5, v0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 415
    .line 416
    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    new-instance v7, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    const/4 v7, 0x4

    .line 439
    const/4 v8, 0x0

    .line 440
    const/4 v6, 0x0

    .line 441
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    goto :goto_5

    .line 446
    :cond_11
    return-object v3
.end method

.method public final r(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {p0, p1, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s(Landroid/content/Context;ILmf/c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/therouter/router/Navigator;->t(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILmf/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final t(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILmf/c;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/therouter/router/RouteMapKt;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const-string v2, "Navigator::navigation"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_11

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/therouter/router/Navigator;->h:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v5, "begin navigate "

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v2, v0, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object p1, v3

    .line 51
    :goto_0
    if-eqz p1, :cond_3

    .line 52
    .line 53
    :cond_2
    :goto_1
    move-object v6, p1

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-static {}, Lcom/therouter/c;->c()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    if-nez p4, :cond_4

    .line 61
    .line 62
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->b()Lmf/c;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    :cond_4
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->e()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_6

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lmf/e;

    .line 89
    .line 90
    if-eqz v4, :cond_5

    .line 91
    .line 92
    invoke-virtual {v4, p1}, Lmf/e;->c(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_5

    .line 97
    .line 98
    invoke-virtual {v4, p1}, Lmf/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, " replace to "

    .line 111
    .line 112
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v2, p1, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    move-object p1, v4

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    invoke-static {p1}, Lcom/therouter/router/RouteMapKt;->k(Ljava/lang/String;)Lcom/therouter/router/RouteItem;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget-object v0, Lcom/therouter/router/action/ActionManager;->a:Lcom/therouter/router/action/ActionManager;

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Lcom/therouter/router/action/ActionManager;->d(Lcom/therouter/router/Navigator;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_7

    .line 138
    .line 139
    if-nez p1, :cond_7

    .line 140
    .line 141
    invoke-virtual {v0, p0, v6}, Lcom/therouter/router/action/ActionManager;->c(Lcom/therouter/router/Navigator;Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_7
    if-eqz p1, :cond_9

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    iget-object v4, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 154
    .line 155
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 156
    .line 157
    .line 158
    iget-object v4, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const-string v5, "<get-keys>(...)"

    .line 165
    .line 166
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    check-cast v4, Ljava/lang/Iterable;

    .line 170
    .line 171
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_9

    .line 180
    .line 181
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-nez v7, :cond_8

    .line 192
    .line 193
    iget-object v7, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    check-cast v7, Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v0, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_9
    if-eqz p1, :cond_a

    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v4, "match route "

    .line 213
    .line 214
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v2, v0, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_a
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->g()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-eqz v4, :cond_c

    .line 240
    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    check-cast v4, Lmf/g;

    .line 246
    .line 247
    if-eqz v4, :cond_b

    .line 248
    .line 249
    invoke-virtual {v4, p1}, Lmf/g;->b(Lcom/therouter/router/RouteItem;)Z

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-eqz v5, :cond_b

    .line 254
    .line 255
    invoke-virtual {v4, p1}, Lmf/g;->a(Lcom/therouter/router/RouteItem;)Lcom/therouter/router/RouteItem;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-eqz p1, :cond_b

    .line 260
    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v5, "route replace to "

    .line 267
    .line 268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-static {v2, v4, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_c
    if-eqz p1, :cond_10

    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getClassName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    if-nez v0, :cond_d

    .line 289
    .line 290
    const-string v0, ""

    .line 291
    .line 292
    :cond_d
    invoke-static {v0}, Lcom/therouter/router/c;->b(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_e

    .line 297
    .line 298
    const-string v0, "NavigationCallback on found"

    .line 299
    .line 300
    invoke-static {v2, v0, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p4, p0}, Lmf/c;->c(Lcom/therouter/router/Navigator;)V

    .line 304
    .line 305
    .line 306
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->f()Lkotlin/jvm/functions/Function2;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    new-instance v1, Lcom/therouter/router/Navigator$navigation$6;

    .line 311
    .line 312
    move-object v4, v1

    .line 313
    move-object v5, p0

    .line 314
    move-object v7, p2

    .line 315
    move v8, p3

    .line 316
    move-object v9, p4

    .line 317
    invoke-direct/range {v4 .. v9}, Lcom/therouter/router/Navigator$navigation$6;-><init>(Lcom/therouter/router/Navigator;Landroid/content/Context;Landroidx/fragment/app/Fragment;ILmf/c;)V

    .line 318
    .line 319
    .line 320
    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p4, p0}, Lmf/c;->b(Lcom/therouter/router/Navigator;)V

    .line 324
    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_e
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 328
    .line 329
    .line 330
    move-result p2

    .line 331
    if-nez p2, :cond_f

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_f
    new-instance p2, Ljava/lang/RuntimeException;

    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getClassName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    new-instance p3, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string p4, "TheRouter::Navigator "

    .line 346
    .line 347
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string p1, " is Fragment"

    .line 354
    .line 355
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw p2

    .line 366
    :cond_10
    invoke-virtual {p4, p0, p3}, Lmf/c;->d(Lcom/therouter/router/Navigator;I)V

    .line 367
    .line 368
    .line 369
    :goto_6
    return-void

    .line 370
    :cond_11
    :goto_7
    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lcom/therouter/router/Navigator;->h:Z

    .line 372
    .line 373
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v5, "add pending navigator "

    .line 383
    .line 384
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {v2, v0, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->c()Ljava/util/LinkedList;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    new-instance v1, Lcom/therouter/router/g;

    .line 402
    .line 403
    new-instance v8, Lcom/therouter/router/Navigator$navigation$1;

    .line 404
    .line 405
    move-object v2, v8

    .line 406
    move-object v3, p0

    .line 407
    move-object v4, p1

    .line 408
    move-object v5, p2

    .line 409
    move v6, p3

    .line 410
    move-object v7, p4

    .line 411
    invoke-direct/range {v2 .. v7}, Lcom/therouter/router/Navigator$navigation$1;-><init>(Lcom/therouter/router/Navigator;Landroid/content/Context;Landroidx/fragment/app/Fragment;ILmf/c;)V

    .line 412
    .line 413
    .line 414
    invoke-direct {v1, p0, v8}, Lcom/therouter/router/g;-><init>(Lcom/therouter/router/Navigator;Lkotlin/jvm/functions/Function0;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    return-void
.end method

.method public final u(Landroid/content/Context;Lmf/c;)V
    .locals 1

    .line 1
    const v0, -0xf63d8

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/therouter/router/Navigator;->s(Landroid/content/Context;ILmf/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final v(Landroidx/fragment/app/Fragment;ILmf/c;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/therouter/router/Navigator;->t(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILmf/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
