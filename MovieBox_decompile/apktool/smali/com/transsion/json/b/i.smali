.class public Lcom/transsion/json/b/i;
.super Lcom/transsion/json/b/a;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/json/b/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/json/h;->x()Lcom/transsion/json/q;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast p1, Ljava/util/Map;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/transsion/json/h;->H()Lcom/transsion/json/u;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_8

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_0
    move-object v6, v5

    .line 49
    :goto_1
    invoke-virtual {v1, v6}, Lcom/transsion/json/q;->a(Ljava/lang/String;)Lcom/transsion/json/q;

    .line 50
    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    move-object v6, v5

    .line 60
    :goto_2
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v0, v6, v7}, Lcom/transsion/json/h;->o(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_7

    .line 69
    .line 70
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v0, v5, v6}, Lcom/transsion/json/h;->a(Lcom/transsion/json/d;Ljava/lang/Object;)Lcom/transsion/json/b/n;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    instance-of v7, v6, Lcom/transsion/json/b/g;

    .line 79
    .line 80
    if-eqz v7, :cond_2

    .line 81
    .line 82
    move-object v7, v6

    .line 83
    check-cast v7, Lcom/transsion/json/b/g;

    .line 84
    .line 85
    invoke-interface {v7}, Lcom/transsion/json/b/g;->a()Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_5

    .line 94
    .line 95
    :cond_2
    invoke-virtual {v2}, Lcom/transsion/json/u;->e()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v7}, Lcom/transsion/json/h;->E()V

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {v2}, Lcom/transsion/json/u;->d()V

    .line 109
    .line 110
    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v7, v8}, Lcom/transsion/json/h;->u(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v7, v5}, Lcom/transsion/json/h;->u(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v2, v5}, Lcom/transsion/json/u;->b(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    invoke-virtual {v2, v5}, Lcom/transsion/json/u;->b(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_4
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-interface {v6, v4}, Lcom/transsion/json/b/n;->a(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    invoke-virtual {v1}, Lcom/transsion/json/q;->d()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/json/b/a;->b()Lcom/transsion/json/h;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/transsion/json/h;->D()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :goto_5
    new-instance v0, Lcom/transsion/json/k;

    .line 166
    .line 167
    const/4 v2, 0x1

    .line 168
    new-array v2, v2, [Ljava/lang/Object;

    .line 169
    .line 170
    const/4 v3, 0x0

    .line 171
    aput-object v1, v2, v3

    .line 172
    .line 173
    const-string v1, "%s: Error while trying to serialize."

    .line 174
    .line 175
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v0, v1, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    throw v0
.end method
