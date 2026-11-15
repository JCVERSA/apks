.class public Lcom/hunantv/media/source/jni/ImgoSourceNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;,
        Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;,
        Lcom/hunantv/media/source/jni/ImgoSourceNative$CbStartParams;,
        Lcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;,
        Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final OK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ImgoSourceNative"

.field private static sCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/hunantv/media/source/jni/ImgoSourceNative;->sCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native cancelCache(JLjava/lang/String;)V
.end method

.method public static native freeCacheManager(J)V
.end method

.method public static native getDynamicIntervalBytes(J)J
.end method

.method private static native_errorcallback(Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V
    .locals 2

    sget-object v0, Lcom/hunantv/media/source/jni/ImgoSourceNative;->sCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;->onError(Lcom/hunantv/media/source/jni/ImgoSourceNative$CbErrorParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static native_logger(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hunantv/media/source/ImgoCacheLogger;->cbLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native_resultcallback(ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V
    .locals 2

    sget-object v0, Lcom/hunantv/media/source/jni/ImgoSourceNative;->sCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1}, Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;->onResult(ILcom/hunantv/media/source/jni/ImgoSourceNative$CbResultParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static native newCacheManager(Ljava/lang/String;Lcom/hunantv/media/source/jni/ImgoSourceNative$InitParams;)J
.end method

.method public static native pauseCache(JLjava/lang/String;)V
.end method

.method public static removeCallback(Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;)V
    .locals 3

    sget-object v0, Lcom/hunantv/media/source/jni/ImgoSourceNative;->sCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lcom/hunantv/media/source/jni/ImgoSourceNative;->sCallbacks:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static native resumeCache(JLjava/lang/String;)V
.end method

.method public static native setMaxTask(JI)V
.end method

.method public static native startCache(JLjava/lang/String;Ljava/lang/String;IIII)Lcom/hunantv/media/source/jni/ImgoSourceNative$CbStartParams;
.end method

.method public static subscribeCallback(Lcom/hunantv/media/source/jni/ImgoSourceNative$Callback;)V
    .locals 2

    sget-object v0, Lcom/hunantv/media/source/jni/ImgoSourceNative;->sCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static native testJNI()Ljava/lang/String;
.end method
