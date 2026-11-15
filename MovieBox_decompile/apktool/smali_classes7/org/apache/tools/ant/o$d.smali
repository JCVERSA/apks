.class public final Lorg/apache/tools/ant/o$d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Lorg/apache/tools/ant/o$e;

.field private b:Ljava/lang/Object;

.field private c:Lorg/apache/tools/ant/Project;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/o$e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/tools/ant/o$d;->c:Lorg/apache/tools/ant/Project;

    .line 4
    iput-object p2, p0, Lorg/apache/tools/ant/o$d;->b:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lorg/apache/tools/ant/o$d;->a:Lorg/apache/tools/ant/o$e;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/o$e;Lorg/apache/tools/ant/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/o$d;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/o$e;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/o$d;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/o$d;->a:Lorg/apache/tools/ant/o$e;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/apache/tools/ant/o$e;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/tools/ant/o$d;->c:Lorg/apache/tools/ant/Project;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->j(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lorg/apache/tools/ant/o$d;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ComponentHelper;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/apache/tools/ant/o$d;->d:Ljava/lang/Object;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuffer;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "Unable to create object of type "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lorg/apache/tools/ant/o$d;->e:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 56
    .line 57
    const-string v1, "Not allowed to use the polymorphic form for this element"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/o$d;->a:Lorg/apache/tools/ant/o$e;

    .line 64
    .line 65
    iget-object v1, p0, Lorg/apache/tools/ant/o$d;->c:Lorg/apache/tools/ant/Project;

    .line 66
    .line 67
    iget-object v2, p0, Lorg/apache/tools/ant/o$d;->b:Ljava/lang/Object;

    .line 68
    .line 69
    iget-object v3, p0, Lorg/apache/tools/ant/o$d;->d:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/tools/ant/o$e;->a(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lorg/apache/tools/ant/o$d;->d:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v1, p0, Lorg/apache/tools/ant/o$d;->c:Lorg/apache/tools/ant/Project;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->K(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    goto :goto_2

    .line 87
    :catch_1
    move-exception v0

    .line 88
    goto :goto_3

    .line 89
    :catch_2
    move-exception v0

    .line 90
    goto :goto_4

    .line 91
    :catch_3
    move-exception v0

    .line 92
    goto :goto_5

    .line 93
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/o$d;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    return-object v0

    .line 96
    :goto_2
    invoke-static {v0}, Lorg/apache/tools/ant/o;->a(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    throw v0

    .line 101
    :goto_3
    iget-object v1, p0, Lorg/apache/tools/ant/o$d;->e:Ljava/lang/String;

    .line 102
    .line 103
    if-nez v1, :cond_4

    .line 104
    .line 105
    throw v0

    .line 106
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuffer;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v2, "Invalid type used "

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lorg/apache/tools/ant/o$d;->e:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :goto_4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 132
    .line 133
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    throw v1

    .line 137
    :goto_5
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 138
    .line 139
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/o$d;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/o$d;->a:Lorg/apache/tools/ant/o$e;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/tools/ant/o$d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/tools/ant/o$d;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/o$e;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :catch_2
    move-exception v0

    .line 16
    goto :goto_2

    .line 17
    :catch_3
    move-exception v0

    .line 18
    goto :goto_3

    .line 19
    :goto_0
    invoke-static {v0}, Lorg/apache/tools/ant/o;->a(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    throw v0

    .line 24
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/o$d;->e:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    throw v0

    .line 29
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuffer;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "Invalid type used "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lorg/apache/tools/ant/o$d;->e:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :goto_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :goto_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v1
.end method
