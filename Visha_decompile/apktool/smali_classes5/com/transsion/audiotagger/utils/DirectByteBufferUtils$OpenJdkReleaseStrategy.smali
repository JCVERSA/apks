.class final Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/utils/DirectByteBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenJdkReleaseStrategy"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

.field private static final cleanMethod:Ljava/lang/reflect/Method;

.field private static final cleanerMethod:Ljava/lang/reflect/Method;

.field private static final viewedBufferMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;

    invoke-direct {v0}, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->INSTANCE:Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    const-string v0, "cleaner"

    const-string v1, "sun.nio.ch.DirectBuffer"

    invoke-static {v1, v0}, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->cleanerMethod:Ljava/lang/reflect/Method;

    const-string v0, "sun.misc.Cleaner"

    const-string v2, "clean"

    invoke-static {v0, v2}, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->cleanMethod:Ljava/lang/reflect/Method;

    const-string v0, "viewedBuffer"

    invoke-static {v1, v0}, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "attachment"

    invoke-static {v1, v0}, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_0
    sput-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->viewedBufferMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->INSTANCE:Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    return-object v0
.end method


# virtual methods
.method public release(Ljava/nio/Buffer;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->cleanerMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->cleanMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->viewedBufferMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$OpenJdkReleaseStrategy;->release(Ljava/nio/Buffer;)V

    goto :goto_2

    :cond_1
    sget-object p0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t release direct buffer as neither cleaner nor viewedBuffer were available on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    sget-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authorisation failed to invoke release on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
