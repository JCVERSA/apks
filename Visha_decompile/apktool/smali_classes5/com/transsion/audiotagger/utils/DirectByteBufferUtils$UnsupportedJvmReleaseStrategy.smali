.class final Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$UnsupportedJvmReleaseStrategy;
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
    name = "UnsupportedJvmReleaseStrategy"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$UnsupportedJvmReleaseStrategy;

    invoke-direct {v0}, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$UnsupportedJvmReleaseStrategy;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$UnsupportedJvmReleaseStrategy;->INSTANCE:Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$UnsupportedJvmReleaseStrategy;->INSTANCE:Lcom/transsion/audiotagger/utils/DirectByteBufferUtils$ReleaseStrategy;

    return-object v0
.end method


# virtual methods
.method public release(Ljava/nio/Buffer;)V
    .locals 1

    sget-object p0, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Can\'t release direct buffer as this JVM is unsupported."

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method
