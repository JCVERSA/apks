.class public abstract Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils;->a:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils;->a:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
