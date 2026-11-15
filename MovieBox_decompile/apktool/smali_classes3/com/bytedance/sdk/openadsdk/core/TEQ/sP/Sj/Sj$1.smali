.class Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/sP/EjP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/sP/TEQ;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TEQ;->TEQ()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TEQ;->uA()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v2, v1}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;

    .line 77
    .line 78
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v1, v4}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;->EjP(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v2, v1}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    move-object v1, v0

    .line 108
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;->AVc:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Landroid/graphics/Bitmap;

    .line 124
    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_5
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/HiB;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/HiB;->sP()Lcom/bytedance/adsdk/ugeno/Sj;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;

    .line 137
    .line 138
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;)Lcom/bytedance/adsdk/ugeno/core/Dq;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;

    .line 143
    .line 144
    invoke-direct {v3, p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;Lcom/bytedance/adsdk/sP/TEQ;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v0, v2, v1, v3}, Lcom/bytedance/adsdk/ugeno/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;->AVc:Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroid/graphics/Bitmap;

    .line 159
    .line 160
    return-object p1
.end method
