.class public final Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;
.super Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/client/TransferClient;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function2;

.field final synthetic b:Lcom/transsion/transfer/impl/client/TransferClient;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->b:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/transfer/androidasync/http/k;

    .line 2
    .line 3
    check-cast p3, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->d(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object p2, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/client/TransferClient$a;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "fetchList onCompleted: result:"

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, " and e:"

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p3, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->a:Lkotlin/jvm/functions/Function2;

    .line 31
    .line 32
    invoke-interface {p3, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->b:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->a:Lkotlin/jvm/functions/Function2;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->c:Ljava/lang/String;

    .line 42
    .line 43
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/transsion/transfer/impl/client/TransferClient;->A(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/google/gson/Gson;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v2, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1$onCompleted$1$data$1;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1$onCompleted$1$data$1;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1, p3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/transsion/transfer/impl/entity/TransferResponse;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/TransferResponse;->getCode()I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-nez p3, :cond_4

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/TransferResponse;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    check-cast p3, Ljava/lang/Iterable;

    .line 75
    .line 76
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    .line 91
    .line 92
    sget-object v3, Lcom/transsion/transfer/impl/server/service/b;->c:Lcom/transsion/transfer/impl/server/service/b$a;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/transsion/transfer/impl/server/service/b$a;->a()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v5, "fetchList#onCompleted: "

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_2

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    new-instance v3, Ljava/io/File;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_1

    .line 139
    .line 140
    :goto_1
    new-instance v3, Ljava/io/File;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    const-string v4, "getAbsolutePath(...)"

    .line 154
    .line 155
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Lcom/transsion/transfer/impl/entity/FileData;->setFileReceiveCachePath(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :catchall_0
    move-exception p1

    .line 163
    goto :goto_3

    .line 164
    :cond_3
    sget-object p3, Leu/a;->a:Leu/a;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/TransferResponse;->getData()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Ljava/util/List;

    .line 171
    .line 172
    invoke-virtual {p3, v1}, Leu/a;->a(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/TransferResponse;->getData()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_4
    invoke-interface {v0, p2, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 187
    .line 188
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    goto :goto_4

    .line 193
    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 194
    .line 195
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 204
    .line 205
    .line 206
    :goto_5
    return-void
.end method
