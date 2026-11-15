.class public Lorg/apache/tools/ant/taskdefs/k$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Hashtable;

.field private d:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->a:Ljava/util/Vector;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->b:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/util/Hashtable;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->c:Ljava/util/Hashtable;

    .line 20
    .line 21
    new-instance v0, Ljava/util/Vector;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->d:Ljava/util/Vector;

    .line 27
    .line 28
    return-void
.end method

.method private j(Lorg/apache/tools/ant/taskdefs/k$a;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->c()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k$b;->c:Ljava/util/Hashtable;

    .line 9
    .line 10
    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/k$b;->d:Ljava/util/Vector;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/k$b;->d:Ljava/util/Vector;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/taskdefs/k$a;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "Name"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v1, "\""

    .line 24
    .line 25
    const-string v2, ": "

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->a:Ljava/util/Vector;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuffer;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "\"Name\" attributes should not occur in the main section and must be the first element in all other sections: \""

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->d()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->e()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->e()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->c()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v3, "From"

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->a:Ljava/util/Vector;

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuffer;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v4, "Manifest attributes should not start with \"From\" in \""

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->d()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->e()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->c()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "Class-Path"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k$b;->c:Ljava/util/Hashtable;

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lorg/apache/tools/ant/taskdefs/k$a;

    .line 148
    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/k$b;->j(Lorg/apache/tools/ant/taskdefs/k$a;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k$b;->a:Ljava/util/Vector;

    .line 156
    .line 157
    const-string v2, "Multiple Class-Path attributes are supported but violate the Jar specification and may not be correctly processed in all environments"

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->f()Ljava/util/Enumeration;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_4

    .line 171
    .line 172
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/k$a;->b(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k$b;->c:Ljava/util/Hashtable;

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_5

    .line 189
    .line 190
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/k$b;->j(Lorg/apache/tools/ant/taskdefs/k$a;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 194
    return-object p1

    .line 195
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ManifestException;

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuffer;

    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v2, "The attribute \""

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->d()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    .line 213
    .line 214
    const-string p1, "\" may not occur more "

    .line 215
    .line 216
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    .line 218
    .line 219
    const-string p1, "than once in the same section"

    .line 220
    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/ManifestException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0

    .line 232
    :cond_6
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 233
    .line 234
    const-string v0, "Attributes must have name and value"

    .line 235
    .line 236
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1
.end method

.method public b(Lorg/apache/tools/ant/taskdefs/k$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/k$b;->a(Lorg/apache/tools/ant/taskdefs/k$a;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 9
    .line 10
    const-string v0, "Specify the section name using the \"name\" attribute of the <section> element rather than using a \"Name\" manifest attribute"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public c(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/k$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->c:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/apache/tools/ant/taskdefs/k$a;

    .line 12
    .line 13
    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/tools/ant/taskdefs/k$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/k$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/k$b;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/k$b;->i(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/k$b;->d()Ljava/util/Enumeration;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/k$b;->c(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/k$a;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lorg/apache/tools/ant/taskdefs/k$a;

    .line 32
    .line 33
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/k$a;->d()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/k$a;->e()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v3, v4, v2}, Lorg/apache/tools/ant/taskdefs/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v3}, Lorg/apache/tools/ant/taskdefs/k$b;->j(Lorg/apache/tools/ant/taskdefs/k$a;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-object v0
.end method

.method public d()Ljava/util/Enumeration;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->d:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/k$b;->c(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/k$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/k$a;->e()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-ne p1, p0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_1
    check-cast p1, Lorg/apache/tools/ant/taskdefs/k$b;

    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->c:Ljava/util/Hashtable;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/k$b;->c:Ljava/util/Hashtable;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_5

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0x20

    .line 22
    .line 23
    if-ne v3, v4, :cond_4

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/k$b;->b:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuffer;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/k$b;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/k$b;->b:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/taskdefs/ManifestException;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v1, "Can\'t start an attribute with a continuation line "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/taskdefs/ManifestException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_3
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/k$a;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    new-instance v1, Lorg/apache/tools/ant/taskdefs/k$a;

    .line 84
    .line 85
    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/k$a;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/k$b;->a(Lorg/apache/tools/ant/taskdefs/k$a;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/k$a;->c()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/k$b;->c(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/k$a;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v2, :cond_0

    .line 101
    .line 102
    return-object v2

    .line 103
    :cond_5
    :goto_1
    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->c:Ljava/util/Hashtable;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->d:Ljava/util/Vector;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->c:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Hashtable;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/k$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public k(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/k$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lorg/apache/tools/ant/taskdefs/k$a;

    .line 6
    .line 7
    const-string v2, "Name"

    .line 8
    .line 9
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/k$a;->i(Ljava/io/PrintWriter;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/k$b;->d()Ljava/util/Enumeration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/k$b;->c(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/k$a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/k$a;->i(Ljava/io/PrintWriter;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "\r\n"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
