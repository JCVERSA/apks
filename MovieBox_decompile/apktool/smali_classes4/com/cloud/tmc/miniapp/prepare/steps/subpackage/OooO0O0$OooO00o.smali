.class public final Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Landroid/content/Context;

.field public final synthetic OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0Oo:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .locals 9

    .line 1
    const-string p2, "MANIFEST_FAIL"

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "Step_LoadStep: tar \u5305\u89e3\u538b\u5b8c\u6210"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    sget-object p1, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->getManifestJson(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    .line 25
    .line 26
    const-string v2, "appId"

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/JsonUtil;->getValueFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0Oo:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1, v2}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 54
    .line 55
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 56
    .line 57
    const-string v1, "8"

    .line 58
    .line 59
    const-string v2, "manifest error"

    .line 60
    .line 61
    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 72
    .line 73
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 84
    .line 85
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_SUCCESS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 92
    .line 93
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 94
    .line 95
    const-string v0, "Step_LoadStep: manifest \u5185\u5bb9\u6821\u9a8c\u6210\u529f"

    .line 96
    .line 97
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0Oo:Landroid/content/Context;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->changeTarUnCompressStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 115
    .line 116
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 117
    .line 118
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0OO:Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/integration/proxy/FileProxy;->deleteDownloadFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 126
    .line 127
    iget-object p2, p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    .line 128
    .line 129
    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    .line 130
    .line 131
    if-nez p2, :cond_3

    .line 132
    .line 133
    iget-object p2, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 134
    .line 135
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0Oo:Landroid/content/Context;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 138
    .line 139
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooOO0:Ljava/lang/Integer;

    .line 140
    .line 141
    if-nez p1, :cond_1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-ne p1, v2, :cond_2

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 152
    :goto_1
    invoke-interface {p2, v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->deleteOldVersionFiles(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 156
    .line 157
    iget-object p2, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 158
    .line 159
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0Oo:Landroid/content/Context;

    .line 160
    .line 161
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO:Ljava/lang/String;

    .line 164
    .line 165
    invoke-interface {p2, v0, v1, p1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateOldVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 169
    .line 170
    invoke-interface {p1, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 174
    .line 175
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :catchall_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 180
    .line 181
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 184
    .line 185
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 186
    .line 187
    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 191
    .line 192
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 193
    .line 194
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 195
    .line 196
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 197
    .line 198
    const-string v7, "8"

    .line 199
    .line 200
    const-string v8, "manifest error"

    .line 201
    .line 202
    invoke-virtual/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 207
    .line 208
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 209
    .line 210
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 211
    .line 212
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PACKAGE_UPDATE_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 213
    .line 214
    const-string v2, "INSTALL_APP_FAIL"

    .line 215
    .line 216
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 220
    .line 221
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 222
    .line 223
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 224
    .line 225
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0$OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 226
    .line 227
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v0, "unzip error"

    .line 237
    .line 238
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    const-string v7, "5"

    .line 249
    .line 250
    invoke-virtual/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :goto_2
    return-void
.end method
