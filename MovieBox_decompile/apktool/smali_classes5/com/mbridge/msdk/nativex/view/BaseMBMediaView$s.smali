.class final enum Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

.field public static final enum b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

.field public static final enum c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

.field private static final synthetic d:[Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 2
    .line 3
    const-string v1, "BIG_IMAGE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 10
    .line 11
    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 12
    .line 13
    const-string v1, "VIDEO"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 20
    .line 21
    new-instance v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 22
    .line 23
    const-string v1, "GIF"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 30
    .line 31
    invoke-static {}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a()[Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->d:[Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic a()[Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 3
    .line 4
    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->c:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    .locals 1

    .line 1
    const-class v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->d:[Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 8
    .line 9
    return-object v0
.end method
