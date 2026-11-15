.class public final Lcom/cloud/tmc/integration/utils/RegexUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final CITY_MAP:Landroidx/collection/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/x0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/x0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/collection/x0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/RegexUtils;->CITY_MAP:Landroidx/collection/x0;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string v1, "u can\'t instantiate me..."

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static extractEmailProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "@"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static extractEmailUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "@"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getMatches(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v0
.end method

.method public static getReplaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getReplaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getSplits(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Ljava/lang/String;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static isDate(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    const-string v0, "^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isEmail(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    const-string v0, "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isFromAnyOfEmailProviders(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->extractEmailProvider(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static isFromEmailProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->extractEmailProvider(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static isIDCard15(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    const-string v0, "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isIDCard18(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    const-string v0, "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9Xx])$"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isIDCard18Exact(Ljava/lang/CharSequence;)Z
    .locals 10

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isIDCard18(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v4, :cond_3

    .line 13
    .line 14
    new-array v4, v1, [I

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    new-array v6, v0, [C

    .line 20
    .line 21
    fill-array-data v6, :array_1

    .line 22
    .line 23
    .line 24
    sget-object v7, Lcom/cloud/tmc/integration/utils/RegexUtils;->CITY_MAP:Landroidx/collection/x0;

    .line 25
    .line 26
    invoke-virtual {v7}, Landroidx/collection/x0;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-eqz v8, :cond_0

    .line 31
    .line 32
    const-string v8, "11"

    .line 33
    .line 34
    const-string v9, "\u5317\u4eac"

    .line 35
    .line 36
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v8, "12"

    .line 40
    .line 41
    const-string v9, "\u5929\u6d25"

    .line 42
    .line 43
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const-string v8, "13"

    .line 47
    .line 48
    const-string v9, "\u6cb3\u5317"

    .line 49
    .line 50
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string v8, "14"

    .line 54
    .line 55
    const-string v9, "\u5c71\u897f"

    .line 56
    .line 57
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string v8, "15"

    .line 61
    .line 62
    const-string v9, "\u5185\u8499\u53e4"

    .line 63
    .line 64
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-string v8, "21"

    .line 68
    .line 69
    const-string v9, "\u8fbd\u5b81"

    .line 70
    .line 71
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v8, "22"

    .line 75
    .line 76
    const-string v9, "\u5409\u6797"

    .line 77
    .line 78
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string v8, "23"

    .line 82
    .line 83
    const-string v9, "\u9ed1\u9f99\u6c5f"

    .line 84
    .line 85
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-string v8, "31"

    .line 89
    .line 90
    const-string v9, "\u4e0a\u6d77"

    .line 91
    .line 92
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string v8, "32"

    .line 96
    .line 97
    const-string v9, "\u6c5f\u82cf"

    .line 98
    .line 99
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string v8, "33"

    .line 103
    .line 104
    const-string v9, "\u6d59\u6c5f"

    .line 105
    .line 106
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-string v8, "34"

    .line 110
    .line 111
    const-string v9, "\u5b89\u5fbd"

    .line 112
    .line 113
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    const-string v8, "35"

    .line 117
    .line 118
    const-string v9, "\u798f\u5efa"

    .line 119
    .line 120
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-string v8, "36"

    .line 124
    .line 125
    const-string v9, "\u6c5f\u897f"

    .line 126
    .line 127
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v8, "37"

    .line 131
    .line 132
    const-string v9, "\u5c71\u4e1c"

    .line 133
    .line 134
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    const-string v8, "41"

    .line 138
    .line 139
    const-string v9, "\u6cb3\u5357"

    .line 140
    .line 141
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    const-string v8, "42"

    .line 145
    .line 146
    const-string v9, "\u6e56\u5317"

    .line 147
    .line 148
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const-string v8, "43"

    .line 152
    .line 153
    const-string v9, "\u6e56\u5357"

    .line 154
    .line 155
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    const-string v8, "44"

    .line 159
    .line 160
    const-string v9, "\u5e7f\u4e1c"

    .line 161
    .line 162
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const-string v8, "45"

    .line 166
    .line 167
    const-string v9, "\u5e7f\u897f"

    .line 168
    .line 169
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    const-string v8, "46"

    .line 173
    .line 174
    const-string v9, "\u6d77\u5357"

    .line 175
    .line 176
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    const-string v8, "50"

    .line 180
    .line 181
    const-string v9, "\u91cd\u5e86"

    .line 182
    .line 183
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-string v8, "51"

    .line 187
    .line 188
    const-string v9, "\u56db\u5ddd"

    .line 189
    .line 190
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    const-string v8, "52"

    .line 194
    .line 195
    const-string v9, "\u8d35\u5dde"

    .line 196
    .line 197
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    const-string v8, "53"

    .line 201
    .line 202
    const-string v9, "\u4e91\u5357"

    .line 203
    .line 204
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const-string v8, "54"

    .line 208
    .line 209
    const-string v9, "\u897f\u85cf"

    .line 210
    .line 211
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    const-string v8, "61"

    .line 215
    .line 216
    const-string v9, "\u9655\u897f"

    .line 217
    .line 218
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    const-string v8, "62"

    .line 222
    .line 223
    const-string v9, "\u7518\u8083"

    .line 224
    .line 225
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    const-string v8, "63"

    .line 229
    .line 230
    const-string v9, "\u9752\u6d77"

    .line 231
    .line 232
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    const-string v8, "64"

    .line 236
    .line 237
    const-string v9, "\u5b81\u590f"

    .line 238
    .line 239
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    const-string v8, "65"

    .line 243
    .line 244
    const-string v9, "\u65b0\u7586"

    .line 245
    .line 246
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    const-string v8, "71"

    .line 250
    .line 251
    const-string v9, "\u53f0\u6e7e\u8001"

    .line 252
    .line 253
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    const-string v8, "81"

    .line 257
    .line 258
    const-string v9, "\u9999\u6e2f"

    .line 259
    .line 260
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    const-string v8, "82"

    .line 264
    .line 265
    const-string v9, "\u6fb3\u95e8"

    .line 266
    .line 267
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    const-string v8, "83"

    .line 271
    .line 272
    const-string v9, "\u53f0\u6e7e\u65b0"

    .line 273
    .line 274
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    const-string v8, "91"

    .line 278
    .line 279
    const-string v9, "\u56fd\u5916"

    .line 280
    .line 281
    invoke-virtual {v7, v8, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    :cond_0
    invoke-interface {p0, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v7, v3}, Landroidx/collection/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    if-eqz v3, :cond_3

    .line 297
    .line 298
    move v3, v5

    .line 299
    move v7, v3

    .line 300
    :goto_0
    if-ge v3, v1, :cond_1

    .line 301
    .line 302
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    add-int/lit8 v8, v8, -0x30

    .line 307
    .line 308
    aget v9, v4, v3

    .line 309
    .line 310
    mul-int/2addr v8, v9

    .line 311
    add-int/2addr v7, v8

    .line 312
    add-int/2addr v3, v2

    .line 313
    goto :goto_0

    .line 314
    :cond_1
    rem-int/2addr v7, v0

    .line 315
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    aget-char v0, v6, v7

    .line 320
    .line 321
    if-ne p0, v0, :cond_2

    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_2
    move v2, v5

    .line 325
    :goto_1
    return v2

    .line 326
    :cond_3
    return v5

    :array_0
    .array-data 4
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
        0x1
        0x6
        0x3
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
    .end array-data

    :array_1
    .array-data 2
        0x31s
        0x30s
        0x58s
        0x39s
        0x38s
        0x37s
        0x36s
        0x35s
        0x34s
        0x33s
        0x32s
    .end array-data
.end method

.method public static isIP(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    const-string v0, "((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public static isMobileExact(Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMobileExact(Ljava/lang/CharSequence;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static isMobileExact(Ljava/lang/CharSequence;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2
    const-string v0, "^((13[0-9])|(14[579])|(15[0-35-9])|(16[2567])|(17[0-35-8])|(18[0-9])|(19[0-35-9]))\\d{8}$"

    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-eqz p0, :cond_6

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-char v5, v2, v4

    .line 6
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    return v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_6
    :goto_1
    return v0
.end method

.method public static isMobileSimple(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    const-string v0, "^[1]\\d{10}$"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isTel(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    const-string v0, "^0\\d{2,3}[- ]?\\d{7,8}$"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isURL(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    const-string v0, "[a-zA-z]+://[^\\s]*"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isUsername(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    const-string v0, "^[\\w\\u4e00-\\u9fa5]{6,20}(?<!_)$"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isZh(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    const-string v0, "^[\\u4e00-\\u9fa5]+$"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
