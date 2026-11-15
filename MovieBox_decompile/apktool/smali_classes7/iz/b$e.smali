.class public Liz/b$e;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/util/Stack;

.field private b:Liz/b$a;

.field private c:Liz/a;


# direct methods
.method public constructor <init>(Liz/a;Liz/b$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Stack;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Liz/b$e;->a:Ljava/util/Stack;

    .line 10
    .line 11
    iput-object p2, p0, Liz/b$e;->b:Liz/b$a;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Liz/b$e;->c:Liz/a;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Liz/b$e;)Liz/a;
    .locals 0

    .line 1
    iget-object p0, p0, Liz/b$e;->c:Liz/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    .line 1
    iget-object v0, p0, Liz/b$e;->b:Liz/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Liz/b$e;->c:Liz/a;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, v1}, Liz/b$a;->a([CIILiz/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Liz/b$e;->b:Liz/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Liz/b$e;->c:Liz/a;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, v1}, Liz/b$a;->c(Ljava/lang/String;Ljava/lang/String;Liz/a;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Liz/b$e;->a:Ljava/util/Stack;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Liz/b$a;

    .line 15
    .line 16
    iput-object v0, p0, Liz/b$e;->b:Liz/b$a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Liz/b$e;->c:Liz/a;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, p3, v1}, Liz/b$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liz/a;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liz/b$e;->c:Liz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Liz/a;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 6

    .line 1
    iget-object p1, p0, Liz/b$e;->c:Liz/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Liz/a;->m()Lorg/apache/tools/ant/Project;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "resolving systemId: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    const-string p1, "file:"

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v0, 0x4

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-static {}, Liz/b;->f()Lorg/apache/tools/ant/util/d;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v1, Ljava/io/File;

    .line 46
    .line 47
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x1

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    invoke-static {}, Liz/b;->f()Lorg/apache/tools/ant/util/d;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Liz/b$e;->c:Liz/a;

    .line 62
    .line 63
    invoke-virtual {v2}, Liz/a;->f()Ljava/io/File;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2, p1}, Lorg/apache/tools/ant/util/d;->q(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Liz/b$e;->c:Liz/a;

    .line 72
    .line 73
    invoke-virtual {v2}, Liz/a;->m()Lorg/apache/tools/ant/Project;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    new-instance v4, Ljava/lang/StringBuffer;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v5, "Warning: \'"

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    const-string p2, "\' in "

    .line 91
    .line 92
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Liz/b$e;->c:Liz/a;

    .line 96
    .line 97
    invoke-virtual {p2}, Liz/a;->e()Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    const-string p2, " should be expressed simply as \'"

    .line 105
    .line 106
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    .line 108
    .line 109
    const/16 p2, 0x5c

    .line 110
    .line 111
    const/16 v5, 0x2f

    .line 112
    .line 113
    invoke-virtual {p1, p2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .line 119
    .line 120
    const-string p1, "\' for compliance with other XML tools"

    .line 121
    .line 122
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v2, p1, v3}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    :cond_0
    iget-object p1, p0, Liz/b$e;->c:Liz/a;

    .line 133
    .line 134
    invoke-virtual {p1}, Liz/a;->m()Lorg/apache/tools/ant/Project;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance p2, Ljava/lang/StringBuffer;

    .line 139
    .line 140
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v2, "file="

    .line 144
    .line 145
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    :try_start_0
    new-instance p1, Lorg/xml/sax/InputSource;

    .line 159
    .line 160
    new-instance p2, Ljava/io/FileInputStream;

    .line 161
    .line 162
    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Liz/b;->f()Lorg/apache/tools/ant/util/d;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/util/d;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p1, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    return-object p1

    .line 184
    :catch_0
    iget-object p1, p0, Liz/b$e;->c:Liz/a;

    .line 185
    .line 186
    invoke-virtual {p1}, Liz/a;->m()Lorg/apache/tools/ant/Project;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-instance p2, Ljava/lang/StringBuffer;

    .line 191
    .line 192
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    .line 201
    .line 202
    const-string v1, " could not be found"

    .line 203
    .line 204
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p1, p2, v3}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    :cond_1
    iget-object p1, p0, Liz/b$e;->c:Liz/a;

    .line 215
    .line 216
    invoke-virtual {p1}, Liz/a;->m()Lorg/apache/tools/ant/Project;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-string p2, "could not resolve systemId"

    .line 221
    .line 222
    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    const/4 p1, 0x0

    .line 226
    return-object p1
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liz/b$e;->c:Liz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Liz/a;->u(Lorg/xml/sax/Locator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Liz/b$e;->b:Liz/b$a;

    .line 3
    .line 4
    iget-object v6, v0, Liz/b$e;->c:Liz/a;

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object/from16 v4, p3

    .line 9
    .line 10
    move-object/from16 v5, p4

    .line 11
    .line 12
    invoke-virtual/range {v1 .. v6}, Liz/b$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Liz/a;)Liz/b$a;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    iget-object v1, v0, Liz/b$e;->a:Ljava/util/Stack;

    .line 17
    .line 18
    iget-object v2, v0, Liz/b$e;->b:Liz/b$a;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iput-object v7, v0, Liz/b$e;->b:Liz/b$a;

    .line 24
    .line 25
    iget-object v12, v0, Liz/b$e;->c:Liz/a;

    .line 26
    .line 27
    move-object v8, p1

    .line 28
    move-object v9, p2

    .line 29
    move-object/from16 v10, p3

    .line 30
    .line 31
    move-object/from16 v11, p4

    .line 32
    .line 33
    invoke-virtual/range {v7 .. v12}, Liz/b$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Liz/a;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liz/b$e;->c:Liz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Liz/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
