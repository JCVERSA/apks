.class public final Lcom/transsion/publish/PublishManager$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lqo/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/PublishManager;->disposePost(Landroid/content/Context;Lcom/transsion/publish/api/bean/RequestPostEntity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/PublishManager;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Z

.field final synthetic d:Lcom/transsion/publish/api/bean/RequestPostEntity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/PublishManager;Lkotlin/jvm/internal/Ref$ObjectRef;ZLcom/transsion/publish/api/bean/RequestPostEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/publish/PublishManager$e;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/publish/PublishManager$e;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/publish/PublishManager$e;->d:Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/transsion/publish/PublishManager;->access$getPublishQueue$p(Lcom/transsion/publish/PublishManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/transsion/publish/PublishManager;->access$isUploadSucceed(Lcom/transsion/publish/PublishManager;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 37
    .line 38
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->getVideo()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-boolean v1, p0, Lcom/transsion/publish/PublishManager$e;->c:Z

    .line 47
    .line 48
    invoke-static {p1, v0, v1}, Lcom/transsion/publish/PublishManager;->access$disposeVideo(Lcom/transsion/publish/PublishManager;Ljava/util/List;Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->d:Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/transsion/publish/api/bean/RequestPostEntity;->getMedia()Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->getCover()Lcom/transsion/publish/api/bean/MediaCoverEntity;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v0, 0x0

    .line 69
    :goto_0
    if-nez v0, :cond_3

    .line 70
    .line 71
    new-instance v0, Lcom/transsion/publish/api/bean/MediaCoverEntity;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/transsion/publish/api/bean/MediaCoverEntity;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/transsion/publish/PublishManager$e;->d:Lcom/transsion/publish/api/bean/RequestPostEntity;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/transsion/publish/api/bean/RequestPostEntity;->getMedia()Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->setCover(Lcom/transsion/publish/api/bean/MediaCoverEntity;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {v0, p1}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setUrl(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/blankj/utilcode/util/ImageUtils;->d(Ljava/lang/String;)[I

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const/4 v2, 0x0

    .line 95
    aget v3, v1, v2

    .line 96
    .line 97
    const/4 v4, 0x1

    .line 98
    aget v5, v1, v4

    .line 99
    .line 100
    mul-int/2addr v3, v5

    .line 101
    int-to-long v5, v3

    .line 102
    invoke-virtual {v0, v5, v6}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setSize(J)V

    .line 103
    .line 104
    .line 105
    aget v2, v1, v2

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setWidth(I)V

    .line 108
    .line 109
    .line 110
    aget v1, v1, v4

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/bean/MediaCoverEntity;->setHeight(I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/transsion/publish/PublishManager;->access$getPublishQueue$p(Lcom/transsion/publish/PublishManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v1, Lcom/transsion/publish/bean/PublishValue;

    .line 122
    .line 123
    invoke-direct {v1, v4}, Lcom/transsion/publish/bean/PublishValue;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    sget-object v0, Luu/c;->a:Luu/c;

    .line 130
    .line 131
    sget-object v1, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    .line 134
    .line 135
    invoke-static {v2}, Lcom/transsion/publish/PublishManager;->access$uploadCallback(Lcom/transsion/publish/PublishManager;)Luu/a;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v0, p1, v1, v4, v2}, Luu/c;->f(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLuu/a;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 145
    .line 146
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->getVideo()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-boolean v1, p0, Lcom/transsion/publish/PublishManager$e;->c:Z

    .line 155
    .line 156
    invoke-static {p1, v0, v1}, Lcom/transsion/publish/PublishManager;->access$disposeVideo(Lcom/transsion/publish/PublishManager;Ljava/util/List;Z)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/publish/PublishManager$e;->a:Lcom/transsion/publish/PublishManager;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$e;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 163
    .line 164
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/transsion/publish/api/bean/RequestPostMediaEntity;->getVideo()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-boolean v1, p0, Lcom/transsion/publish/PublishManager$e;->c:Z

    .line 173
    .line 174
    invoke-static {p1, v0, v1}, Lcom/transsion/publish/PublishManager;->access$disposeVideo(Lcom/transsion/publish/PublishManager;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :goto_2
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v2, "onFirstFrame ext:"

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const/4 v4, 0x4

    .line 202
    const/4 v5, 0x0

    .line 203
    const-string v1, "TNPublish"

    .line 204
    .line 205
    const/4 v3, 0x0

    .line 206
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :goto_3
    return-void
.end method
