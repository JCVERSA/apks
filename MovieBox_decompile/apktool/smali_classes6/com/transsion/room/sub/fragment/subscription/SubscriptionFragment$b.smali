.class public final Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$b;->a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 4

    .line 1
    iget-object p4, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$b;->a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->w0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)Lcom/transsion/room/sub/adapter/subscription/c;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-eqz p4, :cond_9

    .line 8
    .line 9
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    if-eqz p4, :cond_9

    .line 14
    .line 15
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$b;->a:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->v0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "Subscription\u66dd\u5149\u7684\u4f4d\u7f6eposition: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "Subscription\u66dd\u5149\u7684\u4f4d\u7f6eduration: "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    if-lt p1, p4, :cond_1

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_1
    invoke-static {v0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->w0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)Lcom/transsion/room/sub/adapter/subscription/c;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    const/4 v0, 0x0

    .line 64
    if-eqz p4, :cond_2

    .line 65
    .line 66
    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    check-cast p4, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move-object p4, v0

    .line 74
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "item_type"

    .line 80
    .line 81
    const-string v3, "subscription"

    .line 82
    .line 83
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string v2, "module_name"

    .line 87
    .line 88
    const-string v3, "item"

    .line 89
    .line 90
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    if-eqz p4, :cond_3

    .line 94
    .line 95
    invoke-virtual {p4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move-object v2, v0

    .line 101
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v3, "ops"

    .line 106
    .line 107
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string v2, "position"

    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    if-eqz p4, :cond_4

    .line 120
    .line 121
    invoke-virtual {p4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v0, "refer_subject_id"

    .line 130
    .line 131
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string p1, "content_type"

    .line 135
    .line 136
    const-string v0, "ugc_video"

    .line 137
    .line 138
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-string p1, ""

    .line 142
    .line 143
    if-eqz p4, :cond_5

    .line 144
    .line 145
    invoke-virtual {p4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-nez v0, :cond_6

    .line 150
    .line 151
    :cond_5
    move-object v0, p1

    .line 152
    :cond_6
    const-string v2, "content_id"

    .line 153
    .line 154
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    const-string v0, "browse_duration"

    .line 158
    .line 159
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    if-eqz p4, :cond_8

    .line 167
    .line 168
    invoke-virtual {p4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    if-eqz p2, :cond_8

    .line 173
    .line 174
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    if-nez p2, :cond_7

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_7
    move-object p1, p2

    .line 182
    :cond_8
    :goto_2
    const-string p2, "belong_to_collection_id"

    .line 183
    .line 184
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 188
    .line 189
    const-string p2, "/subscription/subscription"

    .line 190
    .line 191
    invoke-virtual {p1, p2, v1}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 192
    .line 193
    .line 194
    :cond_9
    :goto_3
    return-void
.end method
