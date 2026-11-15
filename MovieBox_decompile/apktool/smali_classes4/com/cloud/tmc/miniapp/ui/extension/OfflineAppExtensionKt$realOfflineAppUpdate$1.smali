.class public final Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realOfflineAppUpdate(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $clOfflineAppsContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $llOfflineApps:Landroid/widget/LinearLayout;

.field public final synthetic $llOfflineAppsMore:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$clOfflineAppsContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$llOfflineAppsMore:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$llOfflineApps:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->result$lambda$5$lambda$4(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->result$lambda$5(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final result$lambda$5(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 11

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "$offlineApps"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "$context"

    .line 11
    .line 12
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto/16 :goto_9

    .line 32
    .line 33
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->access$getOfflineAppViews$p()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-le p1, v5, :cond_4

    .line 54
    .line 55
    const-string p1, "status"

    .line 56
    .line 57
    const-string v3, "more"

    .line 58
    .line 59
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    if-nez p2, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 80
    .line 81
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LATER_OFFLINE_EX:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 82
    .line 83
    invoke-interface {p1, v1, v3, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    move v2, v4

    .line 92
    :goto_3
    const/4 v3, 0x4

    .line 93
    if-ge v2, v3, :cond_11

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/4 v6, 0x0

    .line 100
    if-lt v2, v5, :cond_8

    .line 101
    .line 102
    if-eqz p3, :cond_6

    .line 103
    .line 104
    invoke-static {p3, v2}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    :cond_6
    if-nez v6, :cond_7

    .line 109
    .line 110
    goto :goto_8

    .line 111
    :cond_7
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_8

    .line 115
    :cond_8
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 120
    .line 121
    if-eqz p3, :cond_9

    .line 122
    .line 123
    invoke-static {p3, v2}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    goto :goto_4

    .line 128
    :cond_9
    move-object v5, v6

    .line 129
    :goto_4
    if-nez v5, :cond_a

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_a
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :goto_5
    if-eqz p3, :cond_b

    .line 136
    .line 137
    invoke-static {p3, v2}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    goto :goto_6

    .line 142
    :cond_b
    move-object v5, v6

    .line 143
    :goto_6
    instance-of v7, v5, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    .line 144
    .line 145
    if-eqz v7, :cond_c

    .line 146
    .line 147
    check-cast v5, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_c
    move-object v5, v6

    .line 151
    :goto_7
    if-eqz v5, :cond_10

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoUrl()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    if-nez v8, :cond_d

    .line 162
    .line 163
    move-object v8, v1

    .line 164
    :cond_d
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    if-nez v9, :cond_e

    .line 169
    .line 170
    move-object v9, v1

    .line 171
    :cond_e
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoPath()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    if-nez v10, :cond_f

    .line 176
    .line 177
    move-object v10, v1

    .line 178
    :cond_f
    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o()V

    .line 182
    .line 183
    .line 184
    iget-object v7, v5, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0OO:Landroid/widget/TextView;

    .line 185
    .line 186
    iget-object v8, v5, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO0oO:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v6, v6}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    .line 192
    .line 193
    .line 194
    :cond_10
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getAppId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_11
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 209
    .line 210
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LATER_OFFLINE_APP_EX:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 211
    .line 212
    new-instance v0, Landroid/os/Bundle;

    .line 213
    .line 214
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v2, "miniappid"

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 227
    .line 228
    invoke-interface {p0, v1, p3, v1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 229
    .line 230
    .line 231
    if-eqz p2, :cond_12

    .line 232
    .line 233
    new-instance p0, Lcom/cloud/tmc/miniapp/ui/extension/g;

    .line 234
    .line 235
    invoke-direct {p0, p4}, Lcom/cloud/tmc/miniapp/ui/extension/g;-><init>(Landroid/content/Context;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .line 240
    .line 241
    goto :goto_a

    .line 242
    :goto_9
    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->access$getTAG$p()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    const-string p2, "offlineAppUpdate fail:"

    .line 247
    .line 248
    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    :cond_12
    :goto_a
    return-void
.end method

.method private static final result$lambda$5$lambda$4(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 1
    const-string p1, "$context"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 13
    .line 14
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LATER_OFFLINE_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 15
    .line 16
    new-instance v1, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "type"

    .line 22
    .line 23
    const-string v3, "more"

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-interface {p1, v2, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v0, "openMCScene"

    .line 41
    .line 42
    const-string v1, "1"

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "1000886706715795456"

    .line 48
    .line 49
    const-string v1, "120011"

    .line 50
    .line 51
    invoke-static {p0, v0, v1, p1}, Lcom/cloud/tmc/miniapp/ByteAppManager;->launchMiniAppForId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public result(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "offlineApps"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$clOfflineAppsContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$llOfflineAppsMore:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$llOfflineApps:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->$context:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/extension/h;

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    move-object v2, p1

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/extension/h;-><init>(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
