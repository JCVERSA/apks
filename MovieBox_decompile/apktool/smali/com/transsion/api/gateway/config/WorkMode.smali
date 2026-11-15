.class public final enum Lcom/transsion/api/gateway/config/WorkMode;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/api/gateway/config/WorkMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/api/gateway/config/WorkMode;

.field public static final enum MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

.field public static final enum MODE_TEST:Lcom/transsion/api/gateway/config/WorkMode;


# instance fields
.field private mode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/transsion/api/gateway/config/WorkMode;

    .line 2
    .line 3
    const-string v1, "MODE_TEST"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/api/gateway/config/WorkMode;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/transsion/api/gateway/config/WorkMode;->MODE_TEST:Lcom/transsion/api/gateway/config/WorkMode;

    .line 11
    .line 12
    new-instance v1, Lcom/transsion/api/gateway/config/WorkMode;

    .line 13
    .line 14
    const-string v4, "MODE_ONLINE"

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/transsion/api/gateway/config/WorkMode;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    new-array v4, v4, [Lcom/transsion/api/gateway/config/WorkMode;

    .line 24
    .line 25
    aput-object v0, v4, v2

    .line 26
    .line 27
    aput-object v1, v4, v3

    .line 28
    .line 29
    sput-object v4, Lcom/transsion/api/gateway/config/WorkMode;->$VALUES:[Lcom/transsion/api/gateway/config/WorkMode;

    .line 30
    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/transsion/api/gateway/config/WorkMode;->mode:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/api/gateway/config/WorkMode;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/api/gateway/config/WorkMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/api/gateway/config/WorkMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/api/gateway/config/WorkMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/config/WorkMode;->$VALUES:[Lcom/transsion/api/gateway/config/WorkMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/transsion/api/gateway/config/WorkMode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/api/gateway/config/WorkMode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/api/gateway/config/WorkMode;->mode:I

    .line 2
    .line 3
    return v0
.end method
