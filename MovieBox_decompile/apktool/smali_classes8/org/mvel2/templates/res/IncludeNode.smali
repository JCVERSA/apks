.class public Lorg/mvel2/templates/res/IncludeNode;
.super Lorg/mvel2/templates/res/Node;
.source "source.java"


# instance fields
.field includeOffset:I

.field includeStart:I

.field preOffset:I

.field preStart:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[CII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mvel2/templates/res/Node;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 9
    .line 10
    iput p4, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 11
    .line 12
    add-int/lit8 p1, p5, -0x1

    .line 13
    .line 14
    iput p1, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 15
    .line 16
    iput p5, p0, Lorg/mvel2/templates/res/Node;->end:I

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-static {p3, p1}, Lg00/d;->a([CI)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget p2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 24
    .line 25
    iput p2, p0, Lorg/mvel2/templates/res/IncludeNode;->includeStart:I

    .line 26
    .line 27
    sub-int p2, p1, p2

    .line 28
    .line 29
    iput p2, p0, Lorg/mvel2/templates/res/IncludeNode;->includeOffset:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iput p1, p0, Lorg/mvel2/templates/res/IncludeNode;->preStart:I

    .line 34
    .line 35
    iget p2, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 36
    .line 37
    sub-int/2addr p2, p1

    .line 38
    iput p2, p0, Lorg/mvel2/templates/res/IncludeNode;->preOffset:I

    .line 39
    .line 40
    return-void
.end method

.method public static readInFile(Lf00/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lf00/d;->i()Lorg/mvel2/util/g;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "/"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lf00/d;->i()Lorg/mvel2/util/g;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v3, v0}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const/16 v0, 0xa

    .line 60
    .line 61
    new-array v0, v0, [B

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v5, -0x1

    .line 73
    if-eq v4, v5, :cond_1

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    :goto_0
    if-ge v5, v4, :cond_0

    .line 77
    .line 78
    aget-byte v6, v0, v5

    .line 79
    .line 80
    int-to-char v6, v6

    .line 81
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lf00/d;->i()Lorg/mvel2/util/g;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-object p0

    .line 107
    :goto_1
    new-instance v0, Lorg/mvel2/templates/TemplateError;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v2, "unknown I/O exception while including \'"

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p1, "\' (stacktrace nested)"

    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-direct {v0, p1, p0}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :catch_1
    new-instance p0, Lorg/mvel2/templates/TemplateError;

    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v1, "cannot include template \'"

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p1, "\': file not found."

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Lorg/mvel2/templates/TemplateError;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/templates/res/IncludeNode;->includeStart:I

    .line 4
    .line 5
    iget v2, p0, Lorg/mvel2/templates/res/IncludeNode;->includeOffset:I

    .line 6
    .line 7
    const-class v5, Ljava/lang/String;

    .line 8
    .line 9
    move-object v3, p3

    .line 10
    move-object v4, p4

    .line 11
    invoke-static/range {v0 .. v5}, Lorg/mvel2/d;->p([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    iget v1, p0, Lorg/mvel2/templates/res/IncludeNode;->preOffset:I

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 22
    .line 23
    iget v3, p0, Lorg/mvel2/templates/res/IncludeNode;->preStart:I

    .line 24
    .line 25
    invoke-static {v2, v3, v1, p3, p4}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-static {p1, v0}, Lorg/mvel2/templates/res/IncludeNode;->readInFile(Lf00/d;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0, p3, p4}, Lf00/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {p2, v0}, Lg00/c;->append(Ljava/lang/CharSequence;)Lg00/c;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_1
    invoke-static {p1, v0}, Lorg/mvel2/templates/res/IncludeNode;->readInFile(Lf00/d;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1, p3, p4}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p2, p1}, Lg00/c;->append(Ljava/lang/CharSequence;)Lg00/c;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method
