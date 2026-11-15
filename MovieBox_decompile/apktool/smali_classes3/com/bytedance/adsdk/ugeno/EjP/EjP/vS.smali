.class public Lcom/bytedance/adsdk/ugeno/EjP/EjP/vS;
.super Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;
.source "source.java"


# instance fields
.field private Fmk:I

.field private Ym:I

.field private aa:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/vS;->Ym:I

    .line 6
    .line 7
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/vS;->aa:I

    .line 8
    .line 9
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/vS;->Fmk:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public varargs Sj([Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-gtz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    aget-object v1, p1, v0

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, -0x1

    .line 16
    invoke-static {v1, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v3, 0x1

    .line 21
    aget-object v3, p1, v3

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x2

    .line 32
    aget-object p1, p1, v4

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->HiB:Ljava/util/Map;

    .line 43
    .line 44
    const-string v5, "type"

    .line 45
    .line 46
    const-string v6, "toIndex"

    .line 47
    .line 48
    const-string v7, "fromIndex"

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->HiB:Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v4, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iput v4, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/vS;->Ym:I

    .line 72
    .line 73
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->HiB:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v4, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iput v4, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/vS;->aa:I

    .line 86
    .line 87
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->HiB:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v4, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/vS;->Fmk:I

    .line 100
    .line 101
    iget v4, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/vS;->Ym:I

    .line 102
    .line 103
    if-ne v1, v4, :cond_4

    .line 104
    .line 105
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/vS;->aa:I

    .line 106
    .line 107
    if-ne v3, v1, :cond_4

    .line 108
    .line 109
    if-ne p1, v2, :cond_4

    .line 110
    .line 111
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/Ym;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->sP()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-interface {p1, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/EjP/Ym;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->sP()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_3

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->sP(Ljava/util/Map;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_3
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/Ym;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 182
    .line 183
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->sP()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-interface {p1, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/EjP/Ym;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/List;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    :goto_2
    return v0
.end method
