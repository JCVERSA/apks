.class public final Ldi/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Ldi/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldi/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ldi/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldi/c;->a:Ldi/c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 7

    .line 1
    const-string v0, "fullText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "colorText"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/text/SpannableString;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x6

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p2

    .line 22
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v1, -0x1

    .line 27
    if-ne p1, v1, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    add-int/2addr p2, p1

    .line 35
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 36
    .line 37
    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/16 p3, 0x21

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;II)Landroid/text/SpannableString;
    .locals 9

    .line 1
    const-string v1, "fullText"

    .line 2
    .line 3
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "gradientText"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v6, Landroid/text/SpannableString;

    .line 12
    .line 13
    invoke-direct {v6, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 17
    .line 18
    const/4 v7, -0x1

    .line 19
    invoke-direct {v1, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/16 v8, 0x21

    .line 28
    .line 29
    invoke-virtual {v6, v1, v3, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x6

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    move-object v0, p1

    .line 36
    move-object v1, p2

    .line 37
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ne v0, v7, :cond_0

    .line 42
    .line 43
    return-object v6

    .line 44
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v1, v0

    .line 49
    new-instance v2, Ldi/b;

    .line 50
    .line 51
    invoke-direct {v2, p3, p4, p2}, Ldi/b;-><init>(IILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v2, v0, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 55
    .line 56
    .line 57
    return-object v6
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Landroid/text/SpannableString;
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "firstText"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "secondText"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p3}, Ly0/h;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    if-nez p3, :cond_0

    .line 26
    .line 27
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 30
    .line 31
    .line 32
    new-instance v1, Ldi/a;

    .line 33
    .line 34
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p3}, Ldi/a;-><init>(Landroid/graphics/Typeface;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    const/4 v2, 0x0

    .line 45
    const/16 v3, 0x21

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48
    .line 49
    .line 50
    if-eqz p4, :cond_1

    .line 51
    .line 52
    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    .line 53
    .line 54
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p4

    .line 58
    invoke-direct {p3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result p4

    .line 65
    invoke-virtual {v0, p3, v2, p4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-static {p1, p6}, Ly0/h;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 75
    .line 76
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-virtual {v0, p5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 81
    .line 82
    .line 83
    new-instance p3, Ldi/a;

    .line 84
    .line 85
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p3, p1}, Ldi/a;-><init>(Landroid/graphics/Typeface;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    add-int/2addr p1, p2

    .line 96
    invoke-virtual {v0, p3, p2, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 97
    .line 98
    .line 99
    if-eqz p7, :cond_3

    .line 100
    .line 101
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    .line 102
    .line 103
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    invoke-direct {p1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    add-int/2addr p3, p2

    .line 115
    invoke-virtual {v0, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string p2, "valueOf(...)"

    .line 123
    .line 124
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object p1
.end method
