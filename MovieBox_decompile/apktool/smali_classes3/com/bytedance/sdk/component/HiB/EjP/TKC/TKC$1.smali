.class Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dx()Lcom/bytedance/sdk/component/HiB/uA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

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
    .locals 8

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/RiZ;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Lcom/bytedance/sdk/component/HiB/RiZ;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/bytedance/sdk/component/HiB/EjP/sP/sP;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/bytedance/sdk/component/HiB/EjP/sP/sP;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/bytedance/sdk/component/HiB/EjP/sP/HiB;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/bytedance/sdk/component/HiB/EjP/sP/HiB;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/bytedance/sdk/component/HiB/EjP/sP/Sj;

    .line 34
    .line 35
    invoke-direct {v2}, Lcom/bytedance/sdk/component/HiB/EjP/sP/Sj;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;

    .line 42
    .line 43
    invoke-direct {v2}, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v2, Lcom/bytedance/sdk/component/HiB/EjP/sP/EjP;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/bytedance/sdk/component/HiB/EjP/sP/EjP;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-ge v2, v3, :cond_3

    .line 63
    .line 64
    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 65
    .line 66
    invoke-static {v3}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    const-string v1, "canceled"

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    const/16 v3, 0x3eb

    .line 76
    .line 77
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/bytedance/sdk/component/HiB/EjP/sP/vS;

    .line 88
    .line 89
    iget-object v4, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 90
    .line 91
    invoke-static {v4}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/RiZ;

    .line 92
    .line 93
    .line 94
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const-string v5, "data_intercept"

    .line 96
    .line 97
    if-eqz v4, :cond_1

    .line 98
    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    :try_start_1
    invoke-interface {v3}, Lcom/bytedance/sdk/component/HiB/EjP/sP/vS;->Sj()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_1

    .line 110
    .line 111
    iget-object v4, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 112
    .line 113
    invoke-static {v4}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/RiZ;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-interface {v3}, Lcom/bytedance/sdk/component/HiB/EjP/sP/vS;->Sj()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    iget-object v7, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 122
    .line 123
    invoke-interface {v4, v6, v7}, Lcom/bytedance/sdk/component/HiB/RiZ;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    .line 124
    .line 125
    .line 126
    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 127
    .line 128
    invoke-static {v4}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/RiZ;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-interface {v3, v4, v6, v0}, Lcom/bytedance/sdk/component/HiB/EjP/sP/vS;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Lcom/bytedance/sdk/component/HiB/RiZ;Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    iget-object v6, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 137
    .line 138
    invoke-static {v6}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/RiZ;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    if-eqz v6, :cond_2

    .line 143
    .line 144
    invoke-interface {v3}, Lcom/bytedance/sdk/component/HiB/EjP/sP/vS;->Sj()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-nez v5, :cond_2

    .line 153
    .line 154
    iget-object v5, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 155
    .line 156
    invoke-static {v5}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/RiZ;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-interface {v3}, Lcom/bytedance/sdk/component/HiB/EjP/sP/vS;->Sj()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    iget-object v6, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;

    .line 165
    .line 166
    invoke-interface {v5, v3, v6}, Lcom/bytedance/sdk/component/HiB/RiZ;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    :cond_2
    if-eqz v4, :cond_3

    .line 170
    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_3
    return-void

    .line 175
    :goto_1
    const/16 v2, 0x7d0

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
