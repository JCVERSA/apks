.class final enum Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

.field public static final enum b:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

.field public static final enum c:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

.field private static final synthetic d:[Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 2
    .line 3
    const-string v1, "AD_STATE_IDLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 10
    .line 11
    new-instance v0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 12
    .line 13
    const-string v1, "AD_STATE_VISIBLE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 20
    .line 21
    new-instance v0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 22
    .line 23
    const-string v1, "AD_STATE_NOTVISIBLE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 30
    .line 31
    invoke-static {}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->a()[Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->d:[Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

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

.method private static synthetic a()[Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 3
    .line 4
    sget-object v1, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;
    .locals 1

    .line 1
    const-class v0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->d:[Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    .line 8
    .line 9
    return-object v0
.end method
