.class public final enum Lcom/transsion/audiotagger/logging/FileSystemMessage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/logging/FileSystemMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/logging/FileSystemMessage;

.field public static final enum ACCESS_IS_DENIED:Lcom/transsion/audiotagger/logging/FileSystemMessage;

.field public static final enum PERMISSION_DENIED:Lcom/transsion/audiotagger/logging/FileSystemMessage;


# instance fields
.field msg:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/logging/FileSystemMessage;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lcom/transsion/audiotagger/logging/FileSystemMessage;

    sget-object v1, Lcom/transsion/audiotagger/logging/FileSystemMessage;->PERMISSION_DENIED:Lcom/transsion/audiotagger/logging/FileSystemMessage;

    filled-new-array {v0, v1}, [Lcom/transsion/audiotagger/logging/FileSystemMessage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/logging/FileSystemMessage;

    const/4 v1, 0x0

    const-string v2, "Access is denied"

    const-string v3, "ACCESS_IS_DENIED"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/logging/FileSystemMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lcom/transsion/audiotagger/logging/FileSystemMessage;

    new-instance v0, Lcom/transsion/audiotagger/logging/FileSystemMessage;

    const/4 v1, 0x1

    const-string v2, "Permission denied"

    const-string v3, "PERMISSION_DENIED"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/logging/FileSystemMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/logging/FileSystemMessage;->PERMISSION_DENIED:Lcom/transsion/audiotagger/logging/FileSystemMessage;

    invoke-static {}, Lcom/transsion/audiotagger/logging/FileSystemMessage;->$values()[Lcom/transsion/audiotagger/logging/FileSystemMessage;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/logging/FileSystemMessage;->$VALUES:[Lcom/transsion/audiotagger/logging/FileSystemMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/logging/FileSystemMessage;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/logging/FileSystemMessage;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/logging/FileSystemMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/logging/FileSystemMessage;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/logging/FileSystemMessage;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/logging/FileSystemMessage;->$VALUES:[Lcom/transsion/audiotagger/logging/FileSystemMessage;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/logging/FileSystemMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/logging/FileSystemMessage;

    return-object v0
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/logging/FileSystemMessage;->msg:Ljava/lang/String;

    return-object p0
.end method
