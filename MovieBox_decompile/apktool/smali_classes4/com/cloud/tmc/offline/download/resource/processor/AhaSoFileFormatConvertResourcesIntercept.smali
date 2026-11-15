.class public final Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept;",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;",
        "()V",
        "intercept",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;",
        "chain",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;",
        "searchSoFile",
        "manager",
        "Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;",
        "Companion",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept$Companion;

.field public static final SUFFIX_SPECIAL:Ljava/lang/String; = "@==="

.field private static final TAG:Ljava/lang/String; = "AhaSoFileFormatConvertR"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept;->Companion:Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept$Companion;

    .line 8
    .line 9
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

.method private final searchSoFile(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;
    .locals 11

    .line 1
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->params()Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Searching for file at url: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "AhaSoFileFormatConvertR"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->params()Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;->getUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->params()Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {p1, p2}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->proceed(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_0
    const-string v1, ".so"

    .line 51
    .line 52
    const-string v2, "@===.zip"

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-static {v0, v1, v2, v3}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v4, 0x0

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-interface {p2, v0}, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object p2, v4

    .line 68
    :goto_0
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/FileUtils;->isFileExists(Ljava/io/File;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p2, "zipFileByPath.absolutePath"

    .line 83
    .line 84
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v2, v1, v3}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_2

    .line 96
    .line 97
    new-instance p2, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p2, p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;-><init>(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    const-string p2, "zipFileByPath"

    .line 108
    .line 109
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v6, Ljava/io/File;

    .line 113
    .line 114
    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 v9, 0x4

    .line 118
    const/4 v10, 0x0

    .line 119
    const/4 v7, 0x1

    .line 120
    const/4 v8, 0x0

    .line 121
    invoke-static/range {v5 .. v10}, Lkotlin/io/FilesKt;->u(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance p2, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 126
    .line 127
    invoke-direct {p2, v4, v3, v4}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;->setBody(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    return-object p2

    .line 134
    :cond_3
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->params()Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-interface {p1, p2}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->proceed(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    return-object p1
.end method


# virtual methods
.method public intercept(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;
    .locals 9

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->params()Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;->getAppId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;->getUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v1, :cond_8

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    if-eqz v2, :cond_8

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_1
    const-string v5, ".so"

    .line 41
    .line 42
    invoke-static {v2, v5, v3}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    invoke-interface {p1, v0}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->proceed(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_2
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->isEnableAhaSoFormatConvert$com_cloud_tmc_offline_download()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    invoke-interface {p1, v0}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->proceed(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_3
    const-class v0, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    .line 71
    .line 72
    invoke-interface {v0, v1}, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;->getVhost(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v6, 0x2

    .line 78
    invoke-static {v2, v1, v5, v6, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    const-string v8, "/"

    .line 83
    .line 84
    if-nez v7, :cond_5

    .line 85
    .line 86
    invoke-static {v2, v8, v5, v6, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_4

    .line 91
    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_0
    move-object v2, v1

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    :goto_1
    invoke-static {v2, v8, v5, v6, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    sub-int/2addr v1, v3

    .line 139
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 144
    .line 145
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    invoke-interface {v0, v2}, Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->isFileExists(Ljava/io/File;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_7

    .line 161
    .line 162
    new-instance p1, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 163
    .line 164
    invoke-direct {p1, v4, v3, v4}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;->setBody(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept;->searchSoFile(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 172
    .line 173
    .line 174
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    goto :goto_2

    .line 176
    :catchall_0
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->params()Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-interface {p1, v0}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->proceed(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :goto_2
    return-object p1

    .line 185
    :cond_8
    :goto_3
    new-instance p1, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 186
    .line 187
    invoke-direct {p1, v4, v3, v4}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 188
    .line 189
    .line 190
    return-object p1
.end method
