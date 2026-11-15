.class public Lcom/elvishew/xlog/printer/file/FilePrinter;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lg8/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;,
        Lcom/elvishew/xlog/printer/file/FilePrinter$c;,
        Lcom/elvishew/xlog/printer/file/FilePrinter$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lj8/b;

.field private final c:Lh8/a;

.field private final d:Li8/a;

.field private e:Lt7/c;

.field private f:Lk8/b;

.field private volatile g:Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;


# direct methods
.method constructor <init>(Lcom/elvishew/xlog/printer/file/FilePrinter$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->b:Lj8/b;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->b:Lj8/b;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->c:Lh8/a;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->c:Lh8/a;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->d:Li8/a;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->d:Li8/a;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->e:Lt7/c;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->e:Lt7/c;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->f:Lk8/b;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Lk8/b;

    .line 27
    .line 28
    new-instance p1, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, p0, v0}, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;-><init>(Lcom/elvishew/xlog/printer/file/FilePrinter;Lcom/elvishew/xlog/printer/file/FilePrinter$a;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->g:Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/elvishew/xlog/printer/file/FilePrinter;->c()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method static synthetic b(Lcom/elvishew/xlog/printer/file/FilePrinter;JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/elvishew/xlog/printer/file/FilePrinter;->e(JILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private d()V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    iget-object v4, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->d:Li8/a;

    .line 22
    .line 23
    invoke-interface {v4, v3}, Li8/a;->a(Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 30
    .line 31
    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method private e(JILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Lk8/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk8/b;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Lk8/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lk8/b;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->b:Lj8/b;

    .line 18
    .line 19
    invoke-interface {v2}, Lj8/b;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    :cond_0
    iget-object v2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->b:Lj8/b;

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-interface {v2, p3, v3, v4}, Lj8/b;->a(IJ)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_6

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    if-nez v1, :cond_4

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Lk8/b;

    .line 57
    .line 58
    invoke-virtual {v0}, Lk8/b;->b()Z

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/elvishew/xlog/printer/file/FilePrinter;->d()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Lk8/b;

    .line 65
    .line 66
    new-instance v1, Ljava/io/File;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lk8/b;->f(Ljava/io/File;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    move-object v0, v2

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Lk8/b;

    .line 82
    .line 83
    invoke-virtual {v1}, Lk8/b;->c()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->c:Lh8/a;

    .line 88
    .line 89
    invoke-interface {v2, v1}, Lh8/b;->b(Ljava/io/File;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    iget-object v2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Lk8/b;

    .line 96
    .line 97
    invoke-virtual {v2}, Lk8/b;->b()Z

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->c:Lh8/a;

    .line 101
    .line 102
    invoke-static {v1, v2}, Le8/b;->a(Ljava/io/File;Lh8/a;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Lk8/b;

    .line 106
    .line 107
    new-instance v2, Ljava/io/File;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->a:Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lk8/b;->f(Ljava/io/File;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->e:Lt7/c;

    .line 122
    .line 123
    move-wide v2, p1

    .line 124
    move v4, p3

    .line 125
    move-object v5, p4

    .line 126
    move-object v6, p5

    .line 127
    invoke-interface/range {v1 .. v6}, Lt7/c;->a(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object p2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Lk8/b;

    .line 136
    .line 137
    invoke-virtual {p2, p1}, Lk8/b;->a(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_6
    :goto_0
    invoke-static {}, Ld8/b;->e()Ld8/b;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string p3, "File name should not be empty, ignore log: "

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Ld8/b;->c(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->g:Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->isStarted()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->g:Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->start()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v6, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->g:Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;

    .line 19
    .line 20
    new-instance v7, Lcom/elvishew/xlog/printer/file/FilePrinter$c;

    .line 21
    .line 22
    move-object v0, v7

    .line 23
    move v3, p1

    .line 24
    move-object v4, p2

    .line 25
    move-object v5, p3

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/elvishew/xlog/printer/file/FilePrinter$c;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v7}, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->enqueue(Lcom/elvishew/xlog/printer/file/FilePrinter$c;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
