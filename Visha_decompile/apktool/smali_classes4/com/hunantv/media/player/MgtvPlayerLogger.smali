.class public Lcom/hunantv/media/player/MgtvPlayerLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/MgtvPlayerLogger$OnLogCallback;
    }
.end annotation


# static fields
.field public static final REPORT_LOG_LEVEL_DEBUG:I = 0x0

.field public static final REPORT_LOG_LEVEL_ERROR:I = 0x3

.field public static final REPORT_LOG_LEVEL_INFO:I = 0x1

.field public static final REPORT_LOG_LEVEL_WARN:I = 0x2

.field private static mOnLogCallback:Lcom/hunantv/media/player/MgtvPlayerLogger$OnLogCallback; = null

.field private static sDebugMode:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogCallback()Lcom/hunantv/media/player/MgtvPlayerLogger$OnLogCallback;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/MgtvPlayerLogger;->mOnLogCallback:Lcom/hunantv/media/player/MgtvPlayerLogger$OnLogCallback;

    return-object v0
.end method

.method public static isDebugMode()Z
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/player/MgtvPlayerLogger;->sDebugMode:Z

    return v0
.end method

.method public static openDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/hunantv/media/player/MgtvPlayerLogger;->sDebugMode:Z

    return-void
.end method

.method public static setLogCallback(Lcom/hunantv/media/player/MgtvPlayerLogger$OnLogCallback;)V
    .locals 0

    sput-object p0, Lcom/hunantv/media/player/MgtvPlayerLogger;->mOnLogCallback:Lcom/hunantv/media/player/MgtvPlayerLogger$OnLogCallback;

    return-void
.end method
