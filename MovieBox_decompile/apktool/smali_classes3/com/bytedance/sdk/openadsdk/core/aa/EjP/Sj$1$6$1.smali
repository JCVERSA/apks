.class Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:F

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

.field final synthetic sP:F


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->EZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->gY(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-nez v0, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Chv(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;->HiB:I

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    if-ne v0, v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Bml(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 67
    .line 68
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    .line 69
    .line 70
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(ZFF)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->aNB(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Mts()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const/4 v2, 0x3

    .line 91
    if-ne v0, v2, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 98
    .line 99
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    .line 100
    .line 101
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(ZFF)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->cX(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Mts()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 128
    .line 129
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    .line 130
    .line 131
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    .line 132
    .line 133
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;FF)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 142
    .line 143
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    .line 144
    .line 145
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    .line 146
    .line 147
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;FF)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 152
    .line 153
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 156
    .line 157
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    .line 158
    .line 159
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(ZFF)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    .line 170
    .line 171
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    .line 172
    .line 173
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    .line 174
    .line 175
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;FF)V

    .line 176
    .line 177
    .line 178
    return-void
.end method
