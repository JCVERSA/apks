.class public final Lcom/cloud/tmc/miniapp/defaultimpl/CreateBottomMenuImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/defaultimpl/CreateBottomMenuImpl$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/defaultimpl/CreateBottomMenuImpl$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/CreateBottomMenuImpl$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/CreateBottomMenuImpl$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/CreateBottomMenuImpl;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/CreateBottomMenuImpl$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public buildBottomDialog(Landroid/app/Activity;Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V
    .locals 4

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "builder"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 12
    .line 13
    if-eqz v0, :cond_b

    .line 14
    .line 15
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object p1, v0

    .line 34
    :goto_0
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_1
    const-string v1, "activity.mActivityHelper.app?.appId ?: return"

    .line 39
    .line 40
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AbilitiesUtils;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->getAbilitiesConfig()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    move-object v3, v2

    .line 64
    check-cast v3, Lcom/cloud/tmc/integration/model/AbilityConfig;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AbilityConfig;->getMiniappId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    move-object v0, v2

    .line 77
    :cond_3
    check-cast v0, Lcom/cloud/tmc/integration/model/AbilityConfig;

    .line 78
    .line 79
    if-eqz v0, :cond_a

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AbilityConfig;->getAbilities()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_a

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_a

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;->getEnable()Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_4

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;->getAbility()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const v2, -0x1eda3a31

    .line 126
    .line 127
    .line 128
    if-eq v1, v2, :cond_8

    .line 129
    .line 130
    const v2, -0x132f42ba

    .line 131
    .line 132
    .line 133
    if-eq v1, v2, :cond_7

    .line 134
    .line 135
    const v2, -0xb6a147b

    .line 136
    .line 137
    .line 138
    if-eq v1, v2, :cond_6

    .line 139
    .line 140
    const v2, 0x38eb0007

    .line 141
    .line 142
    .line 143
    if-eq v1, v2, :cond_5

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    const-string v1, "message"

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_9

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    const-string v1, "feedback"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_9

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    const-string v1, "refreshApp"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_9

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_8
    const-string v1, "permission"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_9

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_9
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO00o(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_a
    iget-object p1, p2, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 187
    .line 188
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 189
    .line 190
    .line 191
    :cond_b
    :goto_2
    return-void
.end method

.method public onFinalized()V
    .locals 2

    .line 1
    const-string v0, "CreateBottomMenuImpl"

    .line 2
    .line 3
    const-string v1, "onFinalized"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .line 1
    const-string v0, "CreateBottomMenuImpl"

    .line 2
    .line 3
    const-string v1, "onInitialized"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public requestBottomAbilityConfig()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->requestAbilityConfig()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
