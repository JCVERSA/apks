.class public Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospAudioModeChangeListenerExt;,
        Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospAudioModeChangeCallbackExt;,
        Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospVolumeGroupChangedCallbackExt;,
        Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mObserver:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;",
            "Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospVolumeGroupChangedCallbackExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mObserver:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public registerAudioModeChangeListeners(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospAudioModeChangeCallbackExt;)V
    .locals 4

    :try_start_0
    const-string v0, "com.transsion.os.audio.IAudioModeChangeListener$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.transsion.os.audio.AudioModeHelper"

    invoke-static {v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospAudioModeChangeListenerExt;

    invoke-direct {v2, p0, p2}, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospAudioModeChangeListenerExt;-><init>(Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospAudioModeChangeCallbackExt;)V

    iget-object p2, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {p2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    const-string p1, "getInstance"

    const/4 p2, 0x0

    new-array v3, p2, [Ljava/lang/Class;

    invoke-static {v1, p1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, v3, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "registerAudioModeChangeListeners"

    const-class v3, Landroid/content/Context;

    filled-new-array {v0, v3}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mContext:Landroid/content/Context;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerAudioModeChangeListeners error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospAudioManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public registerVolumeGroupCallback(Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospVolumeGroupChangedCallbackExt;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospVolumeGroupChangedCallbackExt;-><init>(Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mObserver:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mAudioManager:Landroid/media/AudioManager;

    new-instance p1, Lur1;

    invoke-direct {p1}, Lur1;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->registerVolumeGroupCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$VolumeGroupCallback;)V

    return-void
.end method

.method public unregisterAudioModeChangeListeners(Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.transsion.os.audio.AudioModeHelper"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "getInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {v0, p1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unregisterAudioModeChangeListeners"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mContext:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public unregisterVolumeGroupCallback(Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$ITranAospVolumeGroupChangedCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mObserver:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt$AospVolumeGroupChangedCallbackExt;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterVolumeGroupCallback(Landroid/media/AudioManager$VolumeGroupCallback;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManagerExt;->mObserver:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
