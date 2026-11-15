.class Lcom/aliyun/thumbnail/ThumbnailHelper$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;->requestImgData(Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

.field final synthetic val$imgUrl:Ljava/lang/String;

.field final synthetic val$l:Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;


# direct methods
.method constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$l:Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1000(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [B

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_0
    move-object v1, v2

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$l:Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;->onSuccess([B)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;)Ljava/net/URLConnection;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    invoke-static {}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1300()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "can not open url"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v0, v2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 89
    .line 90
    invoke-static {v3, v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1400(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/net/URLConnection;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    const/16 v4, 0xc8

    .line 95
    .line 96
    if-ne v3, v4, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1500(Ljava/io/InputStream;)[B

    .line 103
    .line 104
    .line 105
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catchall_1
    move-exception v0

    .line 118
    goto :goto_4

    .line 119
    :catch_1
    move-exception v0

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1300()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v5, "open url responseCode = "

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {v0, v3}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1300()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v5, "open url exception = "

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v3, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    .line 173
    .line 174
    if-eqz v2, :cond_4

    .line 175
    .line 176
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 177
    .line 178
    .line 179
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 180
    .line 181
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$l:Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;

    .line 182
    .line 183
    invoke-interface {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;->onFail()V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 188
    .line 189
    invoke-static {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1000(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    monitor-enter v0

    .line 194
    :try_start_6
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 195
    .line 196
    invoke-static {v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/util/Map;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    .line 201
    .line 202
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 206
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$l:Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;

    .line 207
    .line 208
    invoke-interface {v0, v1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;->onSuccess([B)V

    .line 209
    .line 210
    .line 211
    :goto_3
    return-void

    .line 212
    :catchall_2
    move-exception v1

    .line 213
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 214
    throw v1

    .line 215
    :goto_4
    if-eqz v2, :cond_6

    .line 216
    .line 217
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :catch_2
    move-exception v1

    .line 222
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    .line 224
    .line 225
    :cond_6
    :goto_5
    throw v0

    .line 226
    :goto_6
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 227
    throw v1
.end method
