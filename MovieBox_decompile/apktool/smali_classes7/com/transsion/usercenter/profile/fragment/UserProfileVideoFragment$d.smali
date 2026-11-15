.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$d;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

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
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$d;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;->g0(Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;)Lcom/transsion/usercenter/profile/adapter/c;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance p4, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "browse_duration"

    .line 29
    .line 30
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string p2, "module_name"

    .line 38
    .line 39
    const-string p3, "item"

    .line 40
    .line 41
    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$d;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    .line 45
    .line 46
    sget p3, Lcom/transsion/usercenter/R$string;->profile_video:I

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string p3, "page_tab_name"

    .line 53
    .line 54
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const-string p3, ""

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-nez p2, :cond_3

    .line 70
    .line 71
    :cond_2
    move-object p2, p3

    .line 72
    :cond_3
    const-string v0, "belong_to_collection_id"

    .line 73
    .line 74
    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-nez p2, :cond_4

    .line 82
    .line 83
    move-object p2, p3

    .line 84
    :cond_4
    const-string v0, "content_id"

    .line 85
    .line 86
    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-nez p2, :cond_5

    .line 94
    .line 95
    move-object p2, p3

    .line 96
    :cond_5
    const-string v0, "refer_subject_id"

    .line 97
    .line 98
    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string p2, "content_type"

    .line 102
    .line 103
    const-string v0, "ugc_video"

    .line 104
    .line 105
    invoke-interface {p4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_6

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    move-object p3, p1

    .line 116
    :goto_0
    const-string p1, "ops"

    .line 117
    .line 118
    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$d;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;->h0(Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const/4 p2, 0x0

    .line 128
    new-array p2, p2, [Ljava/lang/Object;

    .line 129
    .line 130
    const-class p3, Lqx/a;

    .line 131
    .line 132
    invoke-static {p3, p2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Lqx/a;

    .line 137
    .line 138
    if-eqz p2, :cond_7

    .line 139
    .line 140
    invoke-interface {p2}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_7

    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    goto :goto_1

    .line 151
    :cond_7
    const/4 p2, 0x0

    .line 152
    :goto_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_8

    .line 157
    .line 158
    const-string p1, "me"

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_8
    const-string p1, "others"

    .line 162
    .line 163
    :goto_2
    const-string p2, "uploader_type"

    .line 164
    .line 165
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 169
    .line 170
    const-string p2, "Userpage"

    .line 171
    .line 172
    invoke-virtual {p1, p2, p4}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method
