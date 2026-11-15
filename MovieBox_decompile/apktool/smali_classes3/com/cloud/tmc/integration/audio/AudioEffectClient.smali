.class public final Lcom/cloud/tmc/integration/audio/AudioEffectClient;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/audio/AudioEffectClient$Companion;,
        Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 /2\u00020\u0001:\u0002/0B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\"\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u000f2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u00032\u0008\u0010 \u001a\u0004\u0018\u00010\u0003H\u0002J \u0010!\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u001c\u0010#\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010$\u001a\u0004\u0018\u00010\u0003H\u0002J\u001a\u0010%\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010&\u001a\u00020\u0017J\u000e\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)J*\u0010*\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00032\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0018\u0010-\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010.\u001a\u00020\u0017R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u00061"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/AudioEffectClient;",
        "",
        "mAppId",
        "",
        "size",
        "",
        "(Ljava/lang/String;I)V",
        "isAPPPause",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getMAppId",
        "()Ljava/lang/String;",
        "setMAppId",
        "(Ljava/lang/String;)V",
        "mPlayConfigMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;",
        "mSoundPool",
        "Landroid/media/SoundPool;",
        "getSize",
        "()I",
        "setSize",
        "(I)V",
        "destroy",
        "",
        "id",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "downloadAndLoad",
        "context",
        "Landroid/content/Context;",
        "pc",
        "getLocalSrc",
        "path",
        "getOption",
        "optionName",
        "getStoreKVSrc",
        "key",
        "play",
        "releaseAll",
        "setAppPause",
        "isPause",
        "",
        "setOption",
        "option",
        "Lcom/google/gson/JsonObject;",
        "stop",
        "stopAll",
        "Companion",
        "PlayConfig",
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


# static fields
.field private static final ATTR_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATTR_RATE:Ljava/lang/String; = "rate"

.field private static final ATTR_SRC:Ljava/lang/String; = "src"

.field private static final ATTR_VOLUME:Ljava/lang/String; = "volume"

.field public static final Companion:Lcom/cloud/tmc/integration/audio/AudioEffectClient$Companion;

.field private static final DEFAULT_MAX_STREAM:I = 0x1

.field private static final MAX_STREAM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AudioEffectClient"


# instance fields
.field private isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAppId:Ljava/lang/String;

.field private mPlayConfigMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->Companion:Lcom/cloud/tmc/integration/audio/AudioEffectClient$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "mAppId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mAppId:Ljava/lang/String;

    iput p2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->size:I

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mPlayConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 6
    new-instance p2, Landroid/media/SoundPool$Builder;

    invoke-direct {p2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 7
    iget v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->size:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->h(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mSoundPool:Landroid/media/SoundPool;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getMSoundPool$p(Lcom/cloud/tmc/integration/audio/AudioEffectClient;)Landroid/media/SoundPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mSoundPool:Landroid/media/SoundPool;

    .line 2
    .line 3
    return-object p0
.end method

.method private final downloadAndLoad(Landroid/content/Context;Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getSrc()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    if-nez v8, :cond_1

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    const-string v1, "/"

    .line 32
    .line 33
    filled-new-array {v1}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v5, 0x6

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    move-object v1, v8

    .line 42
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v2, v1

    .line 47
    check-cast v2, Ljava/util/Collection;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    add-int/lit8 v0, v0, -0x1

    .line 60
    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/String;

    .line 66
    .line 67
    :cond_2
    const-class v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 74
    .line 75
    iget-object v2, v7, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mAppId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getBaseMiniAppPath(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, "/temp_data/"

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-static {v12}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsFile(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getSrc()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    move-object v9, v0

    .line 115
    check-cast v9, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 116
    .line 117
    iget-object v10, v7, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mAppId:Ljava/lang/String;

    .line 118
    .line 119
    new-instance v13, Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v15, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;

    .line 125
    .line 126
    move-object v0, v15

    .line 127
    move-object/from16 v1, p3

    .line 128
    .line 129
    move-object/from16 v2, p1

    .line 130
    .line 131
    move-object/from16 v3, p0

    .line 132
    .line 133
    move-object v4, v8

    .line 134
    move-object v5, v12

    .line 135
    move-object/from16 v6, p2

    .line 136
    .line 137
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$downloadAndLoad$1;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Landroid/content/Context;Lcom/cloud/tmc/integration/audio/AudioEffectClient;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;)V

    .line 138
    .line 139
    .line 140
    const/4 v14, 0x0

    .line 141
    invoke-interface/range {v9 .. v15}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->downloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method private final getLocalSrc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "http"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {p1, v1, v2, v3, v0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string v1, ".miniapp.transsion.com"

    .line 22
    .line 23
    invoke-static {p1, v1, v2, v3, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const-class v1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mAppId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v1, p1, v2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    :goto_0
    return-object v0
.end method

.method private final getStoreKVSrc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mAppId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v2, p1, v3, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    new-instance v3, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_1
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mAppId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v1, p1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static synthetic play$default(Lcom/cloud/tmc/integration/audio/AudioEffectClient;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->play(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final declared-synchronized destroy(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "id"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    const-string v0, "AudioEffectClient"

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "destroy !"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mPlayConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getResId()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mSoundPool:Landroid/media/SoundPool;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    if-eqz p2, :cond_5

    .line 67
    .line 68
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    if-eqz p2, :cond_4

    .line 73
    .line 74
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    :cond_4
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :goto_1
    :try_start_3
    const-string v0, "AudioEffectClient"

    .line 80
    .line 81
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    if-eqz p2, :cond_5

    .line 85
    .line 86
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    goto :goto_3

    .line 92
    :cond_5
    :goto_2
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    throw p1
.end method

.method public final getMAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mAppId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized getOption(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "id"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "optionName"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mPlayConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_2
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sparse-switch v2, :sswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :sswitch_0
    const-string v2, "rate"

    .line 47
    .line 48
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string p2, "rate"

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getRate()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, p2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :sswitch_1
    const-string v2, "src"

    .line 70
    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const-string p2, "src"

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getSrc()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v1, p2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :sswitch_2
    const-string v2, "volume"

    .line 89
    .line 90
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-nez p2, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    const-string p2, "volume"

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getLeftVolume()F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v1, p2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :sswitch_3
    const-string v2, "priority"

    .line 112
    .line 113
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-nez p2, :cond_5

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    const-string p2, "priority"

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getPriority()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v1, p2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    const-string p2, "id"

    .line 134
    .line 135
    invoke-virtual {v1, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string p1, "success"

    .line 139
    .line 140
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-virtual {v1, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 143
    .line 144
    .line 145
    if-eqz p3, :cond_6

    .line 146
    .line 147
    invoke-interface {p3, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :goto_2
    :try_start_3
    const-string p2, "AudioEffectClient"

    .line 152
    .line 153
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    if-eqz p3, :cond_6

    .line 157
    .line 158
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :catchall_1
    move-exception p1

    .line 163
    goto :goto_4

    .line 164
    :cond_6
    :goto_3
    monitor-exit p0

    .line 165
    return-void

    .line 166
    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    throw p1

    .line 168
    nop

    .line 169
    :sswitch_data_0
    .sparse-switch
        -0x4577865c -> :sswitch_3
        -0x305518e6 -> :sswitch_2
        0x1bde4 -> :sswitch_1
        0x354ce0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public final declared-synchronized play(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "id"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    const-string p1, "AudioEffectClient"

    .line 24
    .line 25
    const-string v0, "app is on background, must not play!"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mPlayConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    .line 39
    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    .line 47
    :cond_2
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getResId()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mSoundPool:Landroid/media/SoundPool;

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getLeftVolume()F

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getRightVolume()F

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getPriority()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getLoop()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getRate()F

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/4 v0, 0x0

    .line 93
    :goto_1
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->setStreamId(Ljava/lang/Integer;)V

    .line 94
    .line 95
    .line 96
    if-eqz p2, :cond_7

    .line 97
    .line 98
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    if-eqz p2, :cond_6

    .line 103
    .line 104
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    .line 106
    .line 107
    :cond_6
    monitor-exit p0

    .line 108
    return-void

    .line 109
    :goto_2
    :try_start_4
    const-string v0, "AudioEffectClient"

    .line 110
    .line 111
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    if-eqz p2, :cond_7

    .line 115
    .line 116
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    goto :goto_4

    .line 122
    :cond_7
    :goto_3
    monitor-exit p0

    .line 123
    return-void

    .line 124
    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    throw p1
.end method

.method public final declared-synchronized releaseAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AudioEffectClient"

    .line 3
    .line 4
    const-string v1, "releaseAll !"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mPlayConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mSoundPool:Landroid/media/SoundPool;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    const-string v1, "AudioEffectClient"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    throw v0
.end method

.method public final setAppPause(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->isAPPPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mAppId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final declared-synchronized setOption(Landroid/content/Context;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "context"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "id"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mPlayConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    :goto_0
    const-string p1, "AudioEffectClient"

    .line 32
    .line 33
    new-instance p3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, " has existed!!!"

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :cond_1
    if-nez v0, :cond_2

    .line 56
    .line 57
    :try_start_2
    new-instance v0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    .line 58
    .line 59
    invoke-direct {v0, p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mPlayConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {v0, p3}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->convertParam(Lcom/google/gson/JsonObject;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-nez p3, :cond_4

    .line 72
    .line 73
    if-eqz p4, :cond_3

    .line 74
    .line 75
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 76
    .line 77
    .line 78
    :cond_3
    const-string p1, "AudioEffectClient"

    .line 79
    .line 80
    new-instance p3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p2, " convertParam error."

    .line 89
    .line 90
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getSrc()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->getLocalSrc(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    if-eqz p2, :cond_5

    .line 111
    .line 112
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    if-nez p3, :cond_6

    .line 117
    .line 118
    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getSrc()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->getStoreKVSrc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-eqz p2, :cond_8

    .line 127
    .line 128
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    if-nez p3, :cond_6

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mSoundPool:Landroid/media/SoundPool;

    .line 136
    .line 137
    if-eqz p1, :cond_7

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getPriority()I

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    invoke-virtual {p1, p2, p3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    goto :goto_1

    .line 152
    :cond_7
    const/4 p1, 0x0

    .line 153
    :goto_1
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->setResId(Ljava/lang/Integer;)V

    .line 154
    .line 155
    .line 156
    if-eqz p4, :cond_9

    .line 157
    .line 158
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_8
    :goto_2
    invoke-direct {p0, p1, v0, p4}, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->downloadAndLoad(Landroid/content/Context;Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    .line 164
    .line 165
    monitor-exit p0

    .line 166
    return-void

    .line 167
    :goto_3
    :try_start_4
    const-string p2, "AudioEffectClient"

    .line 168
    .line 169
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    if-eqz p4, :cond_9

    .line 173
    .line 174
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :catchall_1
    move-exception p1

    .line 179
    goto :goto_5

    .line 180
    :cond_9
    :goto_4
    monitor-exit p0

    .line 181
    return-void

    .line 182
    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 183
    throw p1
.end method

.method public final setSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->size:I

    .line 2
    .line 3
    return-void
.end method

.method public final declared-synchronized stop(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "id"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mPlayConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->getStreamId()Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_2
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mSoundPool:Landroid/media/SoundPool;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 49
    .line 50
    .line 51
    :cond_4
    if-eqz p2, :cond_5

    .line 52
    .line 53
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    :try_start_4
    const-string v0, "AudioEffectClient"

    .line 58
    .line 59
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    :goto_2
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    throw p1
.end method

.method public final declared-synchronized stopAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient;->mSoundPool:Landroid/media/SoundPool;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    const-string v1, "AudioEffectClient"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_1
    move-exception v0

    .line 19
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    throw v0
.end method
