.class public Lcom/cicada/player/utils/ass/AssUtils;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static loadClass()V
    .locals 0

    .line 1
    return-void
.end method

.method private static native nParseAssDialogue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private static native nParseAssHeader(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public static parseAssDialogue(Lcom/cicada/player/utils/ass/AssHeader;Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssDialogue;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cicada/player/utils/ass/AssUtils;->nParseAssDialogue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/cicada/player/utils/ass/AssDialogue;

    .line 6
    .line 7
    return-object p0
.end method

.method public static parseAssHeader(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssHeader;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cicada/player/utils/ass/AssUtils;->nParseAssHeader(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/cicada/player/utils/ass/AssHeader;

    .line 6
    .line 7
    return-object p0
.end method
