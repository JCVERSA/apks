.class final enum Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "INVALID_PATH",
        "FILE_NOT_FOUND",
        "LOAD_FAILED",
        "RESIZE_FAILED",
        "SAVE_FAILED",
        "OUT_OF_MEMORY",
        "UNKNOWN",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum FILE_NOT_FOUND:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

.field public static final enum INVALID_PATH:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

.field public static final enum LOAD_FAILED:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

.field public static final enum OUT_OF_MEMORY:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

.field public static final enum RESIZE_FAILED:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

.field public static final enum SAVE_FAILED:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

.field public static final enum UNKNOWN:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

.field public static final synthetic b:[Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

.field public static final synthetic c:Ldb3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    const-string v1, "INVALID_PATH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->INVALID_PATH:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    new-instance v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    const-string v1, "FILE_NOT_FOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->FILE_NOT_FOUND:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    new-instance v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    const-string v1, "LOAD_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->LOAD_FAILED:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    new-instance v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    const-string v1, "RESIZE_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->RESIZE_FAILED:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    new-instance v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    const-string v1, "SAVE_FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->SAVE_FAILED:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    new-instance v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    const-string v1, "OUT_OF_MEMORY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->OUT_OF_MEMORY:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    new-instance v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->UNKNOWN:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    invoke-static {}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->a()[Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->b:[Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->c:Ldb3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;
    .locals 7

    sget-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->INVALID_PATH:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    sget-object v1, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->FILE_NOT_FOUND:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    sget-object v2, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->LOAD_FAILED:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    sget-object v3, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->RESIZE_FAILED:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    sget-object v4, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->SAVE_FAILED:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    sget-object v5, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->OUT_OF_MEMORY:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    sget-object v6, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->UNKNOWN:Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    filled-new-array/range {v0 .. v6}, [Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    move-result-object v0

    return-object v0
.end method

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->c:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;
    .locals 1

    const-class v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    return-object p0
.end method

.method public static values()[Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;->b:[Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils$Companion$ProcessError;

    return-object v0
.end method
