.class public final Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/FileProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010!\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016J\u001a\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00172\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J \u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00172\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00182\u0006\u0010\u0019\u001a\u00020\u0004H\u0016J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;",
        "Lcom/cloud/tmc/integration/proxy/FileProxy;",
        "()V",
        "TAG",
        "",
        "createBaseDirectory",
        "",
        "appModel",
        "Lcom/cloud/tmc/integration/model/AppModel;",
        "createSoDirectory",
        "delectDownloadFileForVersion",
        "",
        "deleteAllFileForVersion",
        "uniqueIdentificationUrl",
        "deleteDownloadFileForVersion",
        "uniqueIndentificationUrl",
        "deleteFile",
        "path",
        "fileTotalSize",
        "",
        "file",
        "Ljava/io/File;",
        "listFilesInDir",
        "",
        "",
        "dir",
        "readFile2String",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "TmcFileImpl"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createBaseDirectory(Lcom/cloud/tmc/integration/model/AppModel;)Z
    .locals 8

    .line 1
    const-string v0, "appModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "\u68c0\u67e5\u5e76\u521b\u5efa getAppBaseDownloadPath \u6587\u4ef6\u5939"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getZipUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, " \u68c0\u67e5\u5e76\u521b\u5efa getBaseMiniAppPath \u6587\u4ef6\u5939"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->subpackageIsEnable()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x1

    .line 50
    if-eqz v3, :cond_7

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v0, v1, v3}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getZipUnCompressPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    move v1, v5

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    move v1, v4

    .line 102
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Ljava/util/Collection;

    .line 107
    .line 108
    if-eqz v3, :cond_7

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eqz v3, :cond_7

    .line 122
    .line 123
    check-cast v3, Ljava/lang/Iterable;

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_7

    .line 134
    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    check-cast v6, Lcom/cloud/tmc/integration/model/SubPackageInfo;

    .line 140
    .line 141
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    if-eqz v7, :cond_4

    .line 146
    .line 147
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-nez v7, :cond_5

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    if-eqz v1, :cond_6

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-interface {v0, v1, v7}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getZipUnCompressPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_6

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-interface {v0, v1, v6}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getZipUnCompressPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_6

    .line 191
    .line 192
    move v1, v5

    .line 193
    goto :goto_1

    .line 194
    :cond_6
    move v1, v4

    .line 195
    goto :goto_1

    .line 196
    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 197
    .line 198
    if-eqz v1, :cond_8

    .line 199
    .line 200
    move v4, v5

    .line 201
    :cond_8
    return v4
.end method

.method public createSoDirectory()Z
    .locals 2

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getRootSOPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getRootDownloadPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method public delectDownloadFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 1

    .line 1
    const-string v0, "appModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getPackageUrl_MD5()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;->deleteDownloadFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 1

    const-string v0, "appModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;->deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    return-void
.end method

.method public deleteAllFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .locals 8

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v1, "appModel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 2
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 3
    const-string v2, "\uff0cappVersion\uff1a"

    const-string v3, "Subpackage::"

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 5
    invoke-interface {v1, p1, p2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 6
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5220\u9664\u5305"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {v3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 8
    :cond_1
    :goto_0
    invoke-interface {v1, p1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 9
    invoke-interface {v1, p1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 10
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-interface {v1, p1, p2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 14
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-interface {v1, p1, p2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 17
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5220\u9664\u4e3b\u5305"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {v3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getSubPackagePages()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Iterable;

    .line 21
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/model/SubPackageInfo;

    .line 22
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, p1, v5}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 24
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-interface {v1, p1, v5}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 27
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/SubPackageInfo;->getSubPackageUrlMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeployVersion()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5220\u9664\u5b50\u5305"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u5220\u9664\u5f53\u524d\u7248\u672c\u6240\u6709\u5c0f\u7a0b\u5e8f\u5305\u6587\u4ef6"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 31
    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    .line 32
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 33
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    .line 34
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_VERSION()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isReadAssets_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 35
    invoke-interface {p1, v1, p2, v2, v3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 37
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_VERSION()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_native_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    const-string v2, ""

    .line 40
    invoke-interface {p1, v0, p2, v1, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 41
    :catchall_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native assets remove error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public deleteDownloadFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "appModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcFileImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " \u5220\u9664\u5f53\u524d\u7248\u672c\u7684\u4e0b\u8f7d\u6587\u4ef6\uff0c"

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "\uff0c\u8def\u5f84\uff1a"

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public fileTotalSize(Ljava/io/File;)J
    .locals 2

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "appModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 1
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 2
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->listFilesInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "appModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->listFilesInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string p2, "listFilesInDir(\n        \u2026l\n            )\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public listFilesInDir(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->listFilesInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "listFilesInDir(dir)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public readFile2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileIOUtils;->readFile2String(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "readFile2String(path)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method
