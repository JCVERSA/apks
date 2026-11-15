.class final enum Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VkPlayerMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum DESTROY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum GET_CURRENT_TIME:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum GET_DURATION:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum GET_QUALITY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum GET_STATE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum GET_VOLUME:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum IS_MUTED:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field private static final JS_METHOD_CALL_PREFIX:Ljava/lang/String; = "javascript:window."

.field private static final JS_METHOD_CALL_SUFFIX:Ljava/lang/String; = ""

.field public static final enum MUTE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum PAUSE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum PLAY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum SEEK:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum SEEK_LIVE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum SET_VOLUME:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

.field public static final enum UN_MUTE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;


# instance fields
.field private final methodName:Ljava/lang/String;

.field public final resultType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;
    .locals 14

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->GET_CURRENT_TIME:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v1, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->PLAY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v2, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->PAUSE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v3, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->SEEK:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v4, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->SEEK_LIVE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v5, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->SET_VOLUME:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v6, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->GET_VOLUME:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v7, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->GET_DURATION:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v8, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->GET_QUALITY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v9, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->MUTE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v10, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->UN_MUTE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v11, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->IS_MUTED:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v12, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->GET_STATE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    sget-object v13, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->DESTROY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    filled-new-array/range {v0 .. v13}, [Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const-string v1, "GET_CURRENT_TIME"

    const/4 v2, 0x0

    const-string v3, "getCurrentTime()"

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->GET_CURRENT_TIME:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const/4 v1, 0x1

    const-string v2, "play()"

    const-string v3, "PLAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->PLAY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const/4 v1, 0x2

    const-string v2, "pause()"

    const-string v3, "PAUSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->PAUSE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const/4 v1, 0x3

    const-string v2, "seek"

    const-string v3, "SEEK"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->SEEK:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const/4 v1, 0x4

    const-string v2, "seekLive()"

    const-string v3, "SEEK_LIVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->SEEK_LIVE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const/4 v1, 0x5

    const-string v2, "setVolume"

    const-string v3, "SET_VOLUME"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->SET_VOLUME:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const-string v1, "getVolume()"

    const-class v2, Ljava/lang/Float;

    const-string v3, "GET_VOLUME"

    const/4 v5, 0x6

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->GET_VOLUME:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const/4 v1, 0x7

    const-string v2, "getDuration()"

    const-string v3, "GET_DURATION"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->GET_DURATION:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const/16 v1, 0x8

    const-string v2, "getQuality()"

    const-string v3, "GET_QUALITY"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->GET_QUALITY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const/16 v1, 0x9

    const-string v2, "mute()"

    const-string v3, "MUTE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->MUTE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const/16 v1, 0xa

    const-string v2, "unmute()"

    const-string v3, "UN_MUTE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->UN_MUTE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const-string v1, "isMuted()"

    const-class v2, Ljava/lang/Boolean;

    const-string v3, "IS_MUTED"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->IS_MUTED:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const-string v1, "getState()"

    const-class v2, Ljava/lang/String;

    const-string v3, "GET_STATE"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->GET_STATE:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    new-instance v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    const/16 v1, 0xd

    const-string v2, "destroy()"

    const-string v3, "DESTROY"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->DESTROY:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    invoke-static {}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->$values()[Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->$VALUES:[Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->methodName:Ljava/lang/String;

    .line 3
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->resultType:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->methodName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->resultType:Ljava/lang/Class;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->createJsMethodCall()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->createJsMethodCall([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createJsMethodCall()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs createJsMethodCall([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    const-string v1, "javascript:window."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 6
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    .line 7
    aget-object v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-eq p0, v1, :cond_0

    .line 9
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;
    .locals 1

    const-class v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    return-object p0
.end method

.method public static values()[Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->$VALUES:[Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    invoke-virtual {v0}, [Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerMethod;

    return-object v0
.end method
