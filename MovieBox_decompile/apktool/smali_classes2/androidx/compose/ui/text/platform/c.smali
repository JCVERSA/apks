.class public abstract Landroidx/compose/ui/text/platform/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/ui/text/platform/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/platform/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/text/platform/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/text/platform/c;->a:Landroidx/compose/ui/text/platform/c$a;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Ljava/lang/String;FLandroidx/compose/ui/text/d0;Ljava/util/List;Ljava/util/List;Lo0/e;Lkotlin/jvm/functions/Function4;Z)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p7, :cond_2

    .line 3
    .line 4
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->i()Z

    .line 5
    .line 6
    .line 7
    move-result p7

    .line 8
    if-eqz p7, :cond_2

    .line 9
    .line 10
    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->w()Landroidx/compose/ui/text/w;

    .line 11
    .line 12
    .line 13
    move-result-object p7

    .line 14
    if-eqz p7, :cond_0

    .line 15
    .line 16
    invoke-virtual {p7}, Landroidx/compose/ui/text/w;->a()Landroidx/compose/ui/text/u;

    .line 17
    .line 18
    .line 19
    move-result-object p7

    .line 20
    if-eqz p7, :cond_0

    .line 21
    .line 22
    invoke-virtual {p7}, Landroidx/compose/ui/text/u;->a()I

    .line 23
    .line 24
    .line 25
    move-result p7

    .line 26
    invoke-static {p7}, Landroidx/compose/ui/text/e;->d(I)Landroidx/compose/ui/text/e;

    .line 27
    .line 28
    .line 29
    move-result-object p7

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p7, 0x0

    .line 32
    :goto_0
    sget-object v1, Landroidx/compose/ui/text/e;->b:Landroidx/compose/ui/text/e$a;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/compose/ui/text/e$a;->a()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez p7, :cond_1

    .line 39
    .line 40
    move v6, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p7}, Landroidx/compose/ui/text/e;->j()I

    .line 43
    .line 44
    .line 45
    move-result p7

    .line 46
    invoke-static {p7, v1}, Landroidx/compose/ui/text/e;->g(II)Z

    .line 47
    .line 48
    .line 49
    move-result p7

    .line 50
    move v6, p7

    .line 51
    :goto_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->c()Landroidx/emoji2/text/EmojiCompat;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const v5, 0x7fffffff

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    move-object v2, p0

    .line 64
    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/text/EmojiCompat;->s(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object p7

    .line 68
    invoke-static {p7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move-object p7, p0

    .line 73
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->D()Landroidx/compose/ui/text/style/n;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    sget-object v2, Landroidx/compose/ui/text/style/n;->c:Landroidx/compose/ui/text/style/n$a;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/n$a;->a()Landroidx/compose/ui/text/style/n;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->s()J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    invoke-static {v1, v2}, Lo0/x;->d(J)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    return-object p7

    .line 112
    :cond_3
    instance-of v1, p7, Landroid/text/Spannable;

    .line 113
    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    check-cast p7, Landroid/text/Spannable;

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    new-instance v1, Landroid/text/SpannableString;

    .line 120
    .line 121
    invoke-direct {v1, p7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    move-object p7, v1

    .line 125
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->A()Landroidx/compose/ui/text/style/i;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    sget-object v2, Landroidx/compose/ui/text/style/i;->b:Landroidx/compose/ui/text/style/i$a;

    .line 130
    .line 131
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/i$a;->d()Landroidx/compose/ui/text/style/i;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    sget-object v1, Landroidx/compose/ui/text/platform/c;->a:Landroidx/compose/ui/text/platform/c$a;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    invoke-static {p7, v1, v0, p0}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->u(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 148
    .line 149
    .line 150
    :cond_5
    invoke-static {p2}, Landroidx/compose/ui/text/platform/c;->b(Landroidx/compose/ui/text/d0;)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_6

    .line 155
    .line 156
    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->t()Landroidx/compose/ui/text/style/g;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    if-nez p0, :cond_6

    .line 161
    .line 162
    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->s()J

    .line 163
    .line 164
    .line 165
    move-result-wide v0

    .line 166
    invoke-static {p7, v0, v1, p1, p5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;JFLo0/e;)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->t()Landroidx/compose/ui/text/style/g;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    if-nez p0, :cond_7

    .line 175
    .line 176
    sget-object p0, Landroidx/compose/ui/text/style/g;->c:Landroidx/compose/ui/text/style/g$b;

    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/g$b;->a()Landroidx/compose/ui/text/style/g;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    :cond_7
    move-object v7, p0

    .line 183
    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->s()J

    .line 184
    .line 185
    .line 186
    move-result-wide v3

    .line 187
    move-object v2, p7

    .line 188
    move v5, p1

    .line 189
    move-object v6, p5

    .line 190
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->q(Landroid/text/Spannable;JFLo0/e;Landroidx/compose/ui/text/style/g;)V

    .line 191
    .line 192
    .line 193
    :goto_4
    invoke-virtual {p2}, Landroidx/compose/ui/text/d0;->D()Landroidx/compose/ui/text/style/n;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {p7, p0, p1, p5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->y(Landroid/text/Spannable;Landroidx/compose/ui/text/style/n;FLo0/e;)V

    .line 198
    .line 199
    .line 200
    invoke-static {p7, p2, p3, p5, p6}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->w(Landroid/text/Spannable;Landroidx/compose/ui/text/d0;Ljava/util/List;Lo0/e;Lkotlin/jvm/functions/Function4;)V

    .line 201
    .line 202
    .line 203
    invoke-static {p7, p4, p5}, Landroidx/compose/ui/text/platform/extensions/e;->b(Landroid/text/Spannable;Ljava/util/List;Lo0/e;)V

    .line 204
    .line 205
    .line 206
    return-object p7
.end method

.method public static final b(Landroidx/compose/ui/text/d0;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/text/d0;->w()Landroidx/compose/ui/text/w;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/text/w;->a()Landroidx/compose/ui/text/u;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/u;->b()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method
