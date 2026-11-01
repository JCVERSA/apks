.class public final enum Lapp/fast/ssh/BillingManager$State;
.super Ljava/lang/Enum;
.source "BillingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/BillingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lapp/fast/ssh/BillingManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lapp/fast/ssh/BillingManager$State;

.field public static final enum FAILED:Lapp/fast/ssh/BillingManager$State;

.field public static final enum NOT_SUBSCRIBED:Lapp/fast/ssh/BillingManager$State;

.field public static final enum SUBSCRIBED:Lapp/fast/ssh/BillingManager$State;

.field public static final enum UNKNOWN:Lapp/fast/ssh/BillingManager$State;


# direct methods
.method private static synthetic $values()[Lapp/fast/ssh/BillingManager$State;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lapp/fast/ssh/BillingManager$State;

    sget-object v1, Lapp/fast/ssh/BillingManager$State;->UNKNOWN:Lapp/fast/ssh/BillingManager$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lapp/fast/ssh/BillingManager$State;->NOT_SUBSCRIBED:Lapp/fast/ssh/BillingManager$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lapp/fast/ssh/BillingManager$State;->SUBSCRIBED:Lapp/fast/ssh/BillingManager$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lapp/fast/ssh/BillingManager$State;->FAILED:Lapp/fast/ssh/BillingManager$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lapp/fast/ssh/BillingManager$State;

    const-string/jumbo v1, "\u2e05"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lapp/fast/ssh/BillingManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/fast/ssh/BillingManager$State;->UNKNOWN:Lapp/fast/ssh/BillingManager$State;

    new-instance v0, Lapp/fast/ssh/BillingManager$State;

    const-string/jumbo v1, "\u2e06"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lapp/fast/ssh/BillingManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/fast/ssh/BillingManager$State;->NOT_SUBSCRIBED:Lapp/fast/ssh/BillingManager$State;

    new-instance v0, Lapp/fast/ssh/BillingManager$State;

    const-string/jumbo v1, "\u2e07"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lapp/fast/ssh/BillingManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/fast/ssh/BillingManager$State;->SUBSCRIBED:Lapp/fast/ssh/BillingManager$State;

    new-instance v0, Lapp/fast/ssh/BillingManager$State;

    const-string/jumbo v1, "\u2e08"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lapp/fast/ssh/BillingManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapp/fast/ssh/BillingManager$State;->FAILED:Lapp/fast/ssh/BillingManager$State;

    invoke-static {}, Lapp/fast/ssh/BillingManager$State;->$values()[Lapp/fast/ssh/BillingManager$State;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/BillingManager$State;->$VALUES:[Lapp/fast/ssh/BillingManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/fast/ssh/BillingManager$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lapp/fast/ssh/BillingManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lapp/fast/ssh/BillingManager$State;

    return-object p0
.end method

.method public static values()[Lapp/fast/ssh/BillingManager$State;
    .locals 1

    sget-object v0, Lapp/fast/ssh/BillingManager$State;->$VALUES:[Lapp/fast/ssh/BillingManager$State;

    invoke-virtual {v0}, [Lapp/fast/ssh/BillingManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapp/fast/ssh/BillingManager$State;

    return-object v0
.end method
