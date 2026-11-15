.class Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dq:Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;

.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Lcom/bytedance/sdk/component/Jcg/sP;

.field final synthetic Jcg:Ljava/lang/String;

.field final synthetic Sj:Z

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Ljava/io/File;

.field final synthetic vS:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Jcg/sP;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->Dq:Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->Sj:Z

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->sP:Ljava/io/File;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->TKC:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->EjP:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->HiB:Lcom/bytedance/sdk/component/Jcg/sP;

    .line 12
    .line 13
    iput p8, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->vS:I

    .line 14
    .line 15
    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->Jcg:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->Sj:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->sP:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->TKC:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->EjP:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->HiB:Lcom/bytedance/sdk/component/Jcg/sP;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Jcg/sP;->HiB()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/LD;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/io/File;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Ljava/io/File;)Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->TKC()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->vS:I

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->Jcg:Ljava/lang/String;

    .line 97
    .line 98
    const/4 v3, 0x6

    .line 99
    new-array v3, v3, [Ljava/lang/Object;

    .line 100
    .line 101
    const-string v4, "unzip error: "

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    aput-object v4, v3, v5

    .line 105
    .line 106
    const/4 v4, 0x1

    .line 107
    aput-object v0, v3, v4

    .line 108
    .line 109
    const-string v0, "tp="

    .line 110
    .line 111
    const/4 v4, 0x2

    .line 112
    aput-object v0, v3, v4

    .line 113
    .line 114
    const/4 v0, 0x3

    .line 115
    aput-object v1, v3, v0

    .line 116
    .line 117
    const-string v0, ", url="

    .line 118
    .line 119
    const/4 v1, 0x4

    .line 120
    aput-object v0, v3, v1

    .line 121
    .line 122
    const/4 v0, 0x5

    .line 123
    aput-object v2, v3, v0

    .line 124
    .line 125
    const-string v0, "PlayableResManager"

    .line 126
    .line 127
    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$5;->HiB:Lcom/bytedance/sdk/component/Jcg/sP;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/sP;->HiB()Ljava/io/File;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .line 138
    .line 139
    :catchall_1
    return-void
.end method
