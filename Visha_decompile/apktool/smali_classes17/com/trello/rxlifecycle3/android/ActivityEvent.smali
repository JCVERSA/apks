.class public final enum Lcom/trello/rxlifecycle3/android/ActivityEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trello/rxlifecycle3/android/ActivityEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trello/rxlifecycle3/android/ActivityEvent;

.field public static final enum CREATE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

.field public static final enum DESTROY:Lcom/trello/rxlifecycle3/android/ActivityEvent;

.field public static final enum PAUSE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

.field public static final enum RESUME:Lcom/trello/rxlifecycle3/android/ActivityEvent;

.field public static final enum START:Lcom/trello/rxlifecycle3/android/ActivityEvent;

.field public static final enum STOP:Lcom/trello/rxlifecycle3/android/ActivityEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    const-string v1, "CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle3/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    new-instance v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    const-string v2, "START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/trello/rxlifecycle3/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/trello/rxlifecycle3/android/ActivityEvent;->START:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    new-instance v2, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    const-string v3, "RESUME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/trello/rxlifecycle3/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/trello/rxlifecycle3/android/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    new-instance v3, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    const-string v4, "PAUSE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/trello/rxlifecycle3/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/trello/rxlifecycle3/android/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    new-instance v4, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    const-string v5, "STOP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/trello/rxlifecycle3/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/trello/rxlifecycle3/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    new-instance v5, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    const-string v6, "DESTROY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/trello/rxlifecycle3/android/ActivityEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/trello/rxlifecycle3/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    filled-new-array/range {v0 .. v5}, [Lcom/trello/rxlifecycle3/android/ActivityEvent;

    move-result-object v0

    sput-object v0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->$VALUES:[Lcom/trello/rxlifecycle3/android/ActivityEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trello/rxlifecycle3/android/ActivityEvent;
    .locals 1

    const-class v0, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    return-object p0
.end method

.method public static values()[Lcom/trello/rxlifecycle3/android/ActivityEvent;
    .locals 1

    sget-object v0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->$VALUES:[Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {v0}, [Lcom/trello/rxlifecycle3/android/ActivityEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trello/rxlifecycle3/android/ActivityEvent;

    return-object v0
.end method
