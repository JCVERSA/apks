.class public Liz/b$b;
.super Liz/b$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Liz/b$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a([CIILiz/a;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Liz/a;->c()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p4, p1, p2, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText([CII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Liz/a;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Liz/a;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Liz/a;)Liz/b$a;
    .locals 0

    .line 1
    invoke-static {}, Liz/b;->i()Liz/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Liz/a;)V
    .locals 8

    .line 1
    invoke-virtual {p5}, Liz/a;->c()Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getProxy()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    new-instance v2, Lorg/apache/tools/ant/w;

    .line 14
    .line 15
    invoke-direct {v2, p2}, Lorg/apache/tools/ant/w;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p5}, Liz/a;->m()Lorg/apache/tools/ant/Project;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/w;->H(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p3}, Lorg/apache/tools/ant/w;->I(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lorg/apache/tools/ant/w;->y()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3, p2}, Lorg/apache/tools/ant/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/u;->t(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p3}, Lorg/apache/tools/ant/u;->s(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Lorg/apache/tools/ant/Location;

    .line 46
    .line 47
    invoke-virtual {p5}, Liz/a;->k()Lorg/xml/sax/Locator;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-interface {p3}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p5}, Liz/a;->k()Lorg/xml/sax/Locator;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v3}, Lorg/xml/sax/Locator;->getLineNumber()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {p5}, Liz/a;->k()Lorg/xml/sax/Locator;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v4}, Lorg/xml/sax/Locator;->getColumnNumber()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-direct {p2, p3, v3, v4}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/q;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p5}, Liz/a;->h()Lorg/apache/tools/ant/t;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {v2, p2}, Lorg/apache/tools/ant/u;->q(Lorg/apache/tools/ant/t;)V

    .line 82
    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    check-cast v1, Lorg/apache/tools/ant/w;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/w;->u(Lorg/apache/tools/ant/w;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p5}, Liz/a;->h()Lorg/apache/tools/ant/t;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/t;->b(Lorg/apache/tools/ant/u;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {p5, v2, p4}, Liz/a;->b(Ljava/lang/Object;Lorg/xml/sax/Attributes;)V

    .line 100
    .line 101
    .line 102
    new-instance p2, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 103
    .line 104
    invoke-virtual {v2}, Lorg/apache/tools/ant/w;->j()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    invoke-direct {p2, v2, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 p3, 0x0

    .line 112
    move v1, p3

    .line 113
    :goto_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-ge v1, v2, :cond_7

    .line 118
    .line 119
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const-string v4, ":"

    .line 128
    .line 129
    if-eqz v3, :cond_2

    .line 130
    .line 131
    const-string v5, ""

    .line 132
    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-nez v5, :cond_2

    .line 138
    .line 139
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-nez v5, :cond_2

    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuffer;

    .line 146
    .line 147
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    .line 155
    .line 156
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    :cond_2
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    const-string v6, "ant-type"

    .line 172
    .line 173
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_3

    .line 178
    .line 179
    const-string v7, "antlib:org.apache.tools.ant"

    .line 180
    .line 181
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_6

    .line 186
    .line 187
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_6

    .line 196
    .line 197
    :cond_3
    invoke-virtual {p5}, Liz/a;->m()Lorg/apache/tools/ant/Project;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    new-instance v3, Ljava/lang/StringBuffer;

    .line 202
    .line 203
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v7, "WARNING: the ant-type mechanism has been deprecated"

    .line 207
    .line 208
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    .line 210
    .line 211
    sget-object v7, Lorg/apache/tools/ant/util/p;->a:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    .line 215
    .line 216
    const-string v7, "         and"

    .line 217
    .line 218
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    .line 220
    .line 221
    const-string v7, " will not be available in Ant 1.8.0 or higher"

    .line 222
    .line 223
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    const/4 v7, 0x1

    .line 231
    invoke-virtual {v2, v3, v7}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-ltz v2, :cond_4

    .line 239
    .line 240
    invoke-virtual {v5, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {p5, v3}, Liz/a;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    if-eqz v4, :cond_5

    .line 249
    .line 250
    add-int/lit8 v2, v2, 0x1

    .line 251
    .line 252
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-static {v4, v2}, Lorg/apache/tools/ant/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    :cond_4
    move-object v2, v6

    .line 261
    goto :goto_3

    .line 262
    :cond_5
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 263
    .line 264
    new-instance p2, Ljava/lang/StringBuffer;

    .line 265
    .line 266
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string p3, "Unable to find XML NS prefix \""

    .line 270
    .line 271
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    .line 276
    .line 277
    const-string p3, "\""

    .line 278
    .line 279
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :cond_6
    :goto_3
    invoke-virtual {p2, v2, v5}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 294
    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :cond_7
    if-eqz v0, :cond_8

    .line 298
    .line 299
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 300
    .line 301
    .line 302
    :cond_8
    invoke-virtual {p5, p2}, Liz/a;->p(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 303
    .line 304
    .line 305
    return-void
.end method
