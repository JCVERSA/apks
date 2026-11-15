.class Lcom/bytedance/adsdk/sP/vS$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--- timer callback, timer: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->uvD(Lcom/bytedance/adsdk/sP/vS;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->dNu(Lcom/bytedance/adsdk/sP/vS;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->uvD(Lcom/bytedance/adsdk/sP/vS;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->dNu(Lcom/bytedance/adsdk/sP/vS;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-le v0, v1, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->TzV(Lcom/bytedance/adsdk/sP/vS;)I

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->RiZ(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/bytedance/adsdk/sP/vS;->uvD(Lcom/bytedance/adsdk/sP/vS;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;->Sj(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->invalidate()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->Zq(Lcom/bytedance/adsdk/sP/vS;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->sU(Lcom/bytedance/adsdk/sP/vS;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-ltz v0, :cond_1

    .line 95
    .line 96
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->dx(Lcom/bytedance/adsdk/sP/vS;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ltz v0, :cond_1

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v1, "--==--- timer end, play anim, startframe: "

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->sU(Lcom/bytedance/adsdk/sP/vS;)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->Sj()V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->sU(Lcom/bytedance/adsdk/sP/vS;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/vS;->setFrame(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 135
    .line 136
    new-instance v1, Lcom/bytedance/adsdk/sP/vS$4$1;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/bytedance/adsdk/sP/vS$4$1;-><init>(Lcom/bytedance/adsdk/sP/vS$4;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v1, "--==--- timer end, frame invalid: "

    .line 148
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 153
    .line 154
    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->sU(Lcom/bytedance/adsdk/sP/vS;)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, ","

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 167
    .line 168
    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->dx(Lcom/bytedance/adsdk/sP/vS;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->zR(Lcom/bytedance/adsdk/sP/vS;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    .line 187
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 188
    .line 189
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->ib(Lcom/bytedance/adsdk/sP/vS;)Lorg/json/JSONArray;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_3

    .line 194
    .line 195
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 196
    .line 197
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->ib(Lcom/bytedance/adsdk/sP/vS;)Lorg/json/JSONArray;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-lez v0, :cond_3

    .line 206
    .line 207
    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 208
    .line 209
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->uA(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/vS$sP;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-eqz v0, :cond_3

    .line 214
    .line 215
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 216
    .line 217
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->uA(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/vS$sP;

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 221
    .line 222
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->zR(Lcom/bytedance/adsdk/sP/vS;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    .line 226
    .line 227
    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->ib(Lcom/bytedance/adsdk/sP/vS;)Lorg/json/JSONArray;

    .line 228
    .line 229
    .line 230
    :cond_3
    return-void
.end method
