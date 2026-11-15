.class Lcom/cloud/hisavana/sdk/p$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/v$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/p;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p$a;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/sdk/n;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/n;-><init>(Lcom/cloud/hisavana/sdk/p$a;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic d()V
    .locals 11

    .line 1
    const-string v0, "OfflineAdManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/m;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "offline_zip"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/io/File;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    array-length v4, v2

    .line 58
    move v5, v3

    .line 59
    :goto_0
    if-ge v5, v4, :cond_3

    .line 60
    .line 61
    aget-object v6, v2, v5

    .line 62
    .line 63
    sget-object v7, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    .line 64
    .line 65
    invoke-virtual {v7, v6}, Lcom/cloud/hisavana/sdk/d;->B(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    new-instance v8, Ljava/io/File;

    .line 70
    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    if-nez v7, :cond_2

    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-nez v7, :cond_0

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_1

    .line 108
    .line 109
    invoke-static {v8}, Lcom/cloud/hisavana/sdk/common/util/m;->a(Ljava/io/File;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_0
    move-exception v1

    .line 114
    goto :goto_3

    .line 115
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 116
    .line 117
    .line 118
    :goto_1
    invoke-static {}, Lc7/b;->l()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_2

    .line 123
    .line 124
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v9, "clearZipFile\uff0cdelete file:"

    .line 134
    .line 135
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v7, v0, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v5, "clear zip file error: "

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const-string v2, "clearZipFile\uff0cad download logic is done."

    .line 184
    .line 185
    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/p;->M(Lcom/cloud/hisavana/sdk/p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    .line 196
    .line 197
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    iget-object v2, v2, Lcom/cloud/hisavana/sdk/p;->e:Landroidx/collection/b;

    invoke-static {p2, p3, p1, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    iget-object p2, p2, Lcom/cloud/hisavana/sdk/p;->e:Landroidx/collection/b;

    const/4 v1, 0x0

    invoke-static {v0, p3, p1, v1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V

    .line 18
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/p$a;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/common/util/g;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object p1, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/d;->z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOldOfflineAd error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OfflineAdManager"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p;->h(Lcom/cloud/hisavana/sdk/p;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p;->h(Lcom/cloud/hisavana/sdk/p;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/p;->G(Lcom/cloud/hisavana/sdk/p;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p;->h(Lcom/cloud/hisavana/sdk/p;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p;->K(Lcom/cloud/hisavana/sdk/p;)V

    goto :goto_3

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/p;->i(Lcom/cloud/hisavana/sdk/p;Ljava/util/List;)Ljava/util/List;

    .line 13
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p$a;->a:Lcom/cloud/hisavana/sdk/p;

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/p;->f(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 14
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p$a;->c()V

    :cond_3
    :goto_3
    return-void
.end method
