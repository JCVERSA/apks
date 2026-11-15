.class public abstract Lc5/i1;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected a:Ljava/util/List;

.field protected b:Ljava/util/List;

.field protected c:Ljava/util/List;

.field protected d:Ljava/util/List;

.field protected e:Ljava/util/List;

.field protected f:Ljava/util/List;

.field protected g:Ljava/util/List;

.field protected h:Ljava/util/List;

.field protected i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lc5/i1;->a:Ljava/util/List;

    .line 6
    .line 7
    iput-object v0, p0, Lc5/i1;->b:Ljava/util/List;

    .line 8
    .line 9
    iput-object v0, p0, Lc5/i1;->c:Ljava/util/List;

    .line 10
    .line 11
    iput-object v0, p0, Lc5/i1;->d:Ljava/util/List;

    .line 12
    .line 13
    iput-object v0, p0, Lc5/i1;->e:Ljava/util/List;

    .line 14
    .line 15
    iput-object v0, p0, Lc5/i1;->f:Ljava/util/List;

    .line 16
    .line 17
    iput-object v0, p0, Lc5/i1;->g:Ljava/util/List;

    .line 18
    .line 19
    iput-object v0, p0, Lc5/i1;->h:Ljava/util/List;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lc5/i1;->i:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public b(Lc5/h1;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Lc5/q;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lc5/i1;->g()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Lc5/q;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    instance-of v0, p1, Lc5/i;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lc5/i1;->f()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast p1, Lc5/i;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public d(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lc5/i1;->c:Ljava/util/List;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    throw p2

    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Lc5/i1;->c:Ljava/util/List;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public e(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lc5/i1;->f:Ljava/util/List;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    throw p2

    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Lc5/i1;->f:Ljava/util/List;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public f()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/i1;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lc5/i1;->b:Ljava/util/List;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lc5/i1;->i:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lc5/i1;->b:Ljava/util/List;

    .line 16
    .line 17
    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/i1;->a:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lc5/i1;->a:Ljava/util/List;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lc5/i1;->i:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lc5/i1;->a:Ljava/util/List;

    .line 16
    .line 17
    return-object v0
.end method

.method protected h(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p1, Lc5/i1;->e:Ljava/util/List;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    throw p2

    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Lc5/i1;->e:Ljava/util/List;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    if-nez p4, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :cond_3
    :goto_1
    return-object p3
.end method

.method protected i(Lc5/o0;Lc5/p;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 p3, 0x0

    .line 2
    if-eqz p5, :cond_5

    .line 3
    .line 4
    iget-object p4, p1, Lc5/o0;->k:Lc5/j1;

    .line 5
    .line 6
    iget p4, p4, Lc5/j1;->c:I

    .line 7
    .line 8
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 9
    .line 10
    invoke-static {p4, p6, v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Lc5/p;->a()I

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    iget p6, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 23
    .line 24
    and-int/2addr p4, p6

    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    :cond_0
    instance-of p4, p5, Ljava/lang/Number;

    .line 28
    .line 29
    if-nez p4, :cond_2

    .line 30
    .line 31
    instance-of p6, p5, Ljava/lang/Boolean;

    .line 32
    .line 33
    if-eqz p6, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-eqz p2, :cond_5

    .line 37
    .line 38
    invoke-virtual {p2}, Lc5/p;->c()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_5

    .line 43
    .line 44
    check-cast p5, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p5}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p5

    .line 50
    goto :goto_3

    .line 51
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 52
    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    invoke-virtual {p2}, Lc5/p;->b()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move-object p2, p3

    .line 61
    :goto_1
    if-eqz p2, :cond_4

    .line 62
    .line 63
    new-instance p4, Ljava/text/DecimalFormat;

    .line 64
    .line 65
    invoke-direct {p4, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p4, p5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    :goto_2
    move-object p5, p2

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    :goto_3
    iget-object p2, p1, Lc5/i1;->d:Ljava/util/List;

    .line 80
    .line 81
    if-eqz p2, :cond_7

    .line 82
    .line 83
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    if-nez p4, :cond_6

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    throw p3

    .line 102
    :cond_7
    :goto_4
    iget-object p2, p0, Lc5/i1;->d:Ljava/util/List;

    .line 103
    .line 104
    if-eqz p2, :cond_9

    .line 105
    .line 106
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result p4

    .line 114
    if-nez p4, :cond_8

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    throw p3

    .line 125
    :cond_9
    :goto_5
    iget-object p1, p1, Lc5/i1;->h:Ljava/util/List;

    .line 126
    .line 127
    if-eqz p1, :cond_b

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-nez p2, :cond_a

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    throw p3

    .line 148
    :cond_b
    :goto_6
    iget-object p1, p0, Lc5/i1;->h:Ljava/util/List;

    .line 149
    .line 150
    if-eqz p1, :cond_d

    .line 151
    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-nez p2, :cond_c

    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    throw p3

    .line 171
    :cond_d
    :goto_7
    return-object p5
.end method
