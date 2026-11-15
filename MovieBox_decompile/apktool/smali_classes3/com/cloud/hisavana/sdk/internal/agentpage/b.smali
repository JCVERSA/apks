.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/b;
.super Lcom/cloud/hisavana/sdk/F;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;
    }
.end annotation


# instance fields
.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/List;

.field private k:Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/p3;)V
    .locals 1

    .line 1
    const-string v0, "fetchInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/F;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "TranAgentPage"

    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->i:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->j:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final F(Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;)V
    .locals 1

    .line 1
    const-string v0, "adListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->k:Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;

    .line 7
    .line 8
    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->k:Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;->a(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/F;->b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->i:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "onAdLoadedStub ads size = "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_7

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const/4 p2, 0x4

    .line 49
    invoke-static {p2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->g(I)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->i:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "get getDiskCache failed"

    .line 62
    .line 63
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->j:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 87
    .line 88
    sget-object v1, Lcom/cloud/hisavana/sdk/a0;->a:Lcom/cloud/hisavana/sdk/a0;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/a0;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    new-instance v2, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    .line 102
    .line 103
    invoke-direct {v2, v1}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p2, v2}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->c(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->j:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->k:Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->j:Ljava/util/List;

    .line 123
    .line 124
    const-string v0, "mAdBeans"

    .line 125
    .line 126
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;->a(Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    return-void

    .line 133
    :cond_7
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->i:Ljava/lang/String;

    .line 138
    .line 139
    const-string v0, "onAdLoadedStub ads = null"

    .line 140
    .line 141
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->k:Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    new-instance p2, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;->a(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    :cond_8
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->i:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TranAgentPage destroy"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->k:Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->j:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/F;->m()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
