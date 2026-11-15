.class public final Lcom/transsion/search/fragment/suggest/d$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/search/fragment/suggest/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/fragment/suggest/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 11

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-string v3, "toUpperCase(...)"

    .line 6
    .line 7
    const-string v4, "mKeyWord"

    .line 8
    .line 9
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 13
    .line 14
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v5, v4

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_1
    :goto_0
    move-object v5, v2

    .line 41
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sub-int/2addr v3, v1

    .line 46
    const/4 v4, 0x0

    .line 47
    move v6, v4

    .line 48
    move v7, v6

    .line 49
    :goto_2
    if-gt v6, v3, :cond_7

    .line 50
    .line 51
    if-nez v7, :cond_2

    .line 52
    .line 53
    move v8, v6

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    move v8, v3

    .line 56
    :goto_3
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    const/16 v9, 0x20

    .line 61
    .line 62
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-gtz v8, :cond_3

    .line 67
    .line 68
    move v8, v1

    .line 69
    goto :goto_4

    .line 70
    :cond_3
    move v8, v4

    .line 71
    :goto_4
    if-nez v7, :cond_5

    .line 72
    .line 73
    if-nez v8, :cond_4

    .line 74
    .line 75
    move v7, v1

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    add-int/2addr v6, v1

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    if-nez v8, :cond_6

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_6
    add-int/2addr v3, v0

    .line 83
    goto :goto_2

    .line 84
    :cond_7
    :goto_5
    add-int/2addr v3, v1

    .line 85
    invoke-interface {p1, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_8

    .line 98
    .line 99
    return-object p2

    .line 100
    :cond_8
    const/4 v1, 0x2

    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-static {v5, p1, v4, v1, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_9

    .line 107
    .line 108
    return-object p2

    .line 109
    :cond_9
    const/4 v9, 0x6

    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v7, 0x0

    .line 112
    const/4 v8, 0x0

    .line 113
    move-object v6, p1

    .line 114
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    add-int/2addr p1, v1

    .line 123
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 124
    .line 125
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 129
    .line 130
    .line 131
    if-eqz p1, :cond_a

    .line 132
    .line 133
    if-eq v1, v0, :cond_a

    .line 134
    .line 135
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 136
    .line 137
    const-string v0, "#10A84D"

    .line 138
    .line 139
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-direct {p2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 144
    .line 145
    .line 146
    const/16 v0, 0x21

    .line 147
    .line 148
    invoke-virtual {v3, p2, v1, p1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    :cond_a
    return-object v3

    .line 152
    :goto_6
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 153
    .line 154
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    return-object v2
.end method
