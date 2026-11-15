.class public La/RouterMap__TheRouter__330865985;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/profile/user_center_labels_feedback\",\"className\":\"com.transsion.usercenter.setting.labelsfeedback.LabelsFeedbackActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_center_feedback\",\"className\":\"com.transsion.usercenter.setting.feedback.UserSettingFeedbackActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/watch_option\",\"className\":\"com.transsion.usercenter.setting.SettingWatchActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/setting_privacy_data\",\"className\":\"com.transsion.usercenter.setting.SettingPrivacyDataActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/setting_notice\",\"className\":\"com.transsion.usercenter.setting.SettingNoticeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/setting\",\"className\":\"com.transsion.usercenter.setting.SettingActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/see\",\"className\":\"com.transsion.usercenter.profile.see.ProfileSeeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_profile\",\"className\":\"com.transsion.usercenter.profile.UserProfileActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/qr_code\",\"className\":\"com.transsion.usercenter.profile.ProfileQRCodeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_center\",\"className\":\"com.transsion.usercenter.profile.ProfileActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/message_detail\",\"className\":\"com.transsion.usercenter.message.detail.MessageDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_room_message\",\"className\":\"com.transsion.usercenter.message.UserRoomMessageActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_message\",\"className\":\"com.transsion.usercenter.message.UserMessageActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/kids/pin_management\",\"className\":\"com.transsion.usercenter.kids.PinManagementActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/kids/manage_profiles\",\"className\":\"com.transsion.usercenter.kids.ManageProfilesActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addRoute()V
    .locals 4

    .line 1
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 2
    .line 3
    const-string v1, "/profile/user_center_labels_feedback"

    .line 4
    .line 5
    const-string v2, "com.transsion.usercenter.setting.labelsfeedback.LabelsFeedbackActivity"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 16
    .line 17
    const-string v1, "/profile/user_center_feedback"

    .line 18
    .line 19
    const-string v2, "com.transsion.usercenter.setting.feedback.UserSettingFeedbackActivity"

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 28
    .line 29
    const-string v1, "/profile/watch_option"

    .line 30
    .line 31
    const-string v2, "com.transsion.usercenter.setting.SettingWatchActivity"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 40
    .line 41
    const-string v1, "/profile/setting_privacy_data"

    .line 42
    .line 43
    const-string v2, "com.transsion.usercenter.setting.SettingPrivacyDataActivity"

    .line 44
    .line 45
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 52
    .line 53
    const-string v1, "/profile/setting_notice"

    .line 54
    .line 55
    const-string v2, "com.transsion.usercenter.setting.SettingNoticeActivity"

    .line 56
    .line 57
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 64
    .line 65
    const-string v1, "/profile/setting"

    .line 66
    .line 67
    const-string v2, "com.transsion.usercenter.setting.SettingActivity"

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 76
    .line 77
    const-string v1, "/profile/see"

    .line 78
    .line 79
    const-string v2, "com.transsion.usercenter.profile.see.ProfileSeeActivity"

    .line 80
    .line 81
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 88
    .line 89
    const-string v1, "/profile/user_profile"

    .line 90
    .line 91
    const-string v2, "com.transsion.usercenter.profile.UserProfileActivity"

    .line 92
    .line 93
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 100
    .line 101
    const-string v1, "/profile/qr_code"

    .line 102
    .line 103
    const-string v2, "com.transsion.usercenter.profile.ProfileQRCodeActivity"

    .line 104
    .line 105
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 112
    .line 113
    const-string v1, "/profile/user_center"

    .line 114
    .line 115
    const-string v2, "com.transsion.usercenter.profile.ProfileActivity"

    .line 116
    .line 117
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 124
    .line 125
    const-string v1, "/profile/message_detail"

    .line 126
    .line 127
    const-string v2, "com.transsion.usercenter.message.detail.MessageDetailActivity"

    .line 128
    .line 129
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 136
    .line 137
    const-string v1, "/profile/user_room_message"

    .line 138
    .line 139
    const-string v2, "com.transsion.usercenter.message.UserRoomMessageActivity"

    .line 140
    .line 141
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 148
    .line 149
    const-string v1, "/profile/user_message"

    .line 150
    .line 151
    const-string v2, "com.transsion.usercenter.message.UserMessageActivity"

    .line 152
    .line 153
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 160
    .line 161
    const-string v1, "/kids/pin_management"

    .line 162
    .line 163
    const-string v2, "com.transsion.usercenter.kids.PinManagementActivity"

    .line 164
    .line 165
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 172
    .line 173
    const-string v1, "/kids/manage_profiles"

    .line 174
    .line 175
    const-string v2, "com.transsion.usercenter.kids.ManageProfilesActivity"

    .line 176
    .line 177
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 1
    invoke-static {}, La/RouterMap__TheRouter__330865985;->addRoute()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
