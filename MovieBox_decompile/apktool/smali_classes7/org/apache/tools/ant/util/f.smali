.class public abstract Lorg/apache/tools/ant/util/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static final c:Z

.field private static final d:Ljava/lang/String;

.field private static final e:Lorg/apache/tools/ant/util/d;

.field private static f:Ljava/lang/String;

.field private static g:I

.field private static h:Z

.field private static i:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "dos"

    .line 2
    .line 3
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lorg/apache/tools/ant/util/f;->a:Z

    .line 8
    .line 9
    const-string v0, "netware"

    .line 10
    .line 11
    invoke-static {v0}, Llz/a;->b(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lorg/apache/tools/ant/util/f;->b:Z

    .line 16
    .line 17
    const-string v0, "aix"

    .line 18
    .line 19
    invoke-static {v0}, Llz/a;->b(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput-boolean v0, Lorg/apache/tools/ant/util/f;->c:Z

    .line 24
    .line 25
    const-string v0, "java.home"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/apache/tools/ant/util/f;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/apache/tools/ant/util/f;->e:Lorg/apache/tools/ant/util/d;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    :try_start_0
    const-string v1, "1.1"

    .line 41
    .line 42
    sput-object v1, Lorg/apache/tools/ant/util/f;->f:Ljava/lang/String;

    .line 43
    .line 44
    const/16 v1, 0xa

    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    sput v1, Lorg/apache/tools/ant/util/f;->g:I

    .line 48
    .line 49
    const-string v1, "java.lang.ThreadLocal"

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const-string v1, "1.2"

    .line 55
    .line 56
    sput-object v1, Lorg/apache/tools/ant/util/f;->f:Ljava/lang/String;

    .line 57
    .line 58
    sget v1, Lorg/apache/tools/ant/util/f;->g:I

    .line 59
    .line 60
    add-int/2addr v1, v0

    .line 61
    sput v1, Lorg/apache/tools/ant/util/f;->g:I

    .line 62
    .line 63
    const-string v1, "java.lang.StrictMath"

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget v1, Lorg/apache/tools/ant/util/f;->g:I

    .line 69
    .line 70
    const-string v2, "1.4"

    .line 71
    .line 72
    sput-object v2, Lorg/apache/tools/ant/util/f;->f:Ljava/lang/String;

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x2

    .line 75
    .line 76
    sput v1, Lorg/apache/tools/ant/util/f;->g:I

    .line 77
    .line 78
    const-string v1, "java.net.Proxy"

    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-string v1, "1.5"

    .line 84
    .line 85
    sput-object v1, Lorg/apache/tools/ant/util/f;->f:Ljava/lang/String;

    .line 86
    .line 87
    sget v1, Lorg/apache/tools/ant/util/f;->g:I

    .line 88
    .line 89
    add-int/2addr v1, v0

    .line 90
    sput v1, Lorg/apache/tools/ant/util/f;->g:I

    .line 91
    .line 92
    const-string v1, "java.util.ServiceLoader"

    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const-string v1, "1.6"

    .line 98
    .line 99
    sput-object v1, Lorg/apache/tools/ant/util/f;->f:Ljava/lang/String;

    .line 100
    .line 101
    sget v1, Lorg/apache/tools/ant/util/f;->g:I

    .line 102
    .line 103
    add-int/2addr v1, v0

    .line 104
    sput v1, Lorg/apache/tools/ant/util/f;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    :catchall_0
    const/4 v1, 0x0

    .line 107
    sput-boolean v1, Lorg/apache/tools/ant/util/f;->h:Z

    .line 108
    .line 109
    :try_start_1
    const-string v1, "kaffe.util.NotImplemented"

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    sput-boolean v0, Lorg/apache/tools/ant/util/f;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .line 116
    :catchall_1
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    .line 8
    .line 9
    sget-boolean p0, Lorg/apache/tools/ant/util/f;->a:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string p0, ".exe"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, ""

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private static b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 7
    .line 8
    sget v1, Lorg/apache/tools/ant/util/f;->g:I

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :pswitch_0
    const-string v1, "com.sun.org.apache"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :pswitch_1
    sget v0, Lorg/apache/tools/ant/util/f;->g:I

    .line 21
    .line 22
    const/16 v1, 0xe

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 27
    .line 28
    const-string v1, "org.apache.crimson"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 34
    .line 35
    const-string v1, "org.apache.xalan"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 41
    .line 42
    const-string v1, "org.apache.xml"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 48
    .line 49
    const-string v1, "org.apache.xpath"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 55
    .line 56
    const-string v1, "org.ietf.jgss"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 62
    .line 63
    const-string v1, "org.w3c.dom"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 69
    .line 70
    const-string v1, "org.xml.sax"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :pswitch_2
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 76
    .line 77
    const-string v1, "org.omg"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 83
    .line 84
    const-string v1, "com.sun.corba"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 90
    .line 91
    const-string v1, "com.sun.jndi"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 97
    .line 98
    const-string v1, "com.sun.media"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 104
    .line 105
    const-string v1, "com.sun.naming"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 111
    .line 112
    const-string v1, "com.sun.org.omg"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 118
    .line 119
    const-string v1, "com.sun.rmi"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 125
    .line 126
    const-string v1, "sunw.io"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 132
    .line 133
    const-string v1, "sunw.util"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :pswitch_3
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 139
    .line 140
    const-string v1, "com.sun.java"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 146
    .line 147
    const-string v1, "com.sun.image"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 153
    .line 154
    const-string v1, "sun"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 160
    .line 161
    const-string v1, "java"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 167
    .line 168
    const-string v1, "javax"

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c([Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 1
    sget-object v0, Lorg/apache/tools/ant/util/f;->e:Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x1

    .line 5
    const-string v1, "ANT"

    .line 6
    .line 7
    const-string v2, ".JAVA_OPTS"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    .line 16
    .line 17
    new-instance v3, Ljava/io/BufferedWriter;

    .line 18
    .line 19
    new-instance v4, Ljava/io/FileWriter;

    .line 20
    .line 21
    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    :try_start_1
    array-length v3, p0

    .line 32
    if-ge v1, v3, :cond_0

    .line 33
    .line 34
    aget-object v3, p0, v1

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    move-object v1, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-static {v2}, Lorg/apache/tools/ant/util/d;->e(Ljava/io/Writer;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    :goto_1
    invoke-static {v1}, Lorg/apache/tools/ant/util/d;->e(Ljava/io/Writer;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/tools/ant/util/f;->e:Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    invoke-static {p1}, Lorg/apache/tools/ant/util/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v1, v0

    .line 31
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tools/ant/util/f;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static f()I
    .locals 1

    .line 1
    sget v0, Lorg/apache/tools/ant/util/f;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lorg/apache/tools/ant/util/f;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sget-boolean v0, Lorg/apache/tools/ant/util/f;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lorg/apache/tools/ant/util/f;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    const-string v1, "/sh"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/f;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lorg/apache/tools/ant/util/f;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    const-string v1, "/bin"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/f;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_2
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_3
    invoke-static {p0}, Lorg/apache/tools/ant/util/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public static h()Ljava/util/Vector;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/apache/tools/ant/util/f;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/util/f;->i:Ljava/util/Vector;

    .line 9
    .line 10
    return-object v0
.end method
