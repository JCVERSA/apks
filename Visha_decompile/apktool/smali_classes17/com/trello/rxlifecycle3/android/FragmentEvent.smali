.class public final enum Lcom/trello/rxlifecycle3/android/FragmentEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trello/rxlifecycle3/android/FragmentEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trello/rxlifecycle3/android/FragmentEvent;

.field public static final enum ATTACH:Lcom/trello/rxlifecycle3/android/FragmentEvent;

.field public static final enum CREATE:Lcom/trello/rxlifecycle3/android/FragmentEvent;

.field public static final enum CREATE_VIEW:Lcom/trello/rxlifecycle3/android/FragmentEvent;

.field public static final enum DESTROY:Lcom/trello/rxlifecycle3/android/FragmentEvent;

.field public static final enum DESTROY_VIEW:Lcom/trello/rxlifecycle3/android/FragmentEvent;

.field public static final enum DETACH:Lcom/trello/rxlifecycle3/android/FragmentEvent;

.field public static final enum PAUSE:Lcom/trello/rxlifecycle3/android/FragmentEvent;

.field public static final enum RESUME:Lcom/trello/rxlifecycle3/android/FragmentEvent;

.field public static final enum START:Lcom/trello/rxlifecycle3/android/FragmentEvent;

.field public static final enum STOP:Lcom/trello/rxlifecycle3/android/FragmentEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    const-string v1, "ATTACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle3/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle3/android/FragmentEvent;->ATTACH:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    new-instance v1, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    const-string v2, "CREATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/trello/rxlifecycle3/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/trello/rxlifecycle3/android/FragmentEvent;->CREATE:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    new-instance v2, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    const-string v3, "CREATE_VIEW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/trello/rxlifecycle3/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/trello/rxlifecycle3/android/FragmentEvent;->CREATE_VIEW:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    new-instance v3, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    const-string v4, "START"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/trello/rxlifecycle3/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/trello/rxlifecycle3/android/FragmentEvent;->START:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    new-instance v4, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    const-string v5, "RESUME"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/trello/rxlifecycle3/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/trello/rxlifecycle3/android/FragmentEvent;->RESUME:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    new-instance v5, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    const-string v6, "PAUSE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/trello/rxlifecycle3/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/trello/rxlifecycle3/android/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    new-instance v6, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    const-string v7, "STOP"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/trello/rxlifecycle3/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/trello/rxlifecycle3/android/FragmentEvent;->STOP:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    new-instance v7, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    const-string v8, "DESTROY_VIEW"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/trello/rxlifecycle3/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/trello/rxlifecycle3/android/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    new-instance v8, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    const-string v9, "DESTROY"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/trello/rxlifecycle3/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/trello/rxlifecycle3/android/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    new-instance v9, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    const-string v10, "DETACH"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/trello/rxlifecycle3/android/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/trello/rxlifecycle3/android/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle3/android/FragmentEvent;

    filled-new-array/range {v0 .. v9}, [Lcom/trello/rxlifecycle3/android/FragmentEvent;

    move-result-object v0

    sput-object v0, Lcom/trello/rxlifecycle3/android/FragmentEvent;->$VALUES:[Lcom/trello/rxlifecycle3/android/FragmentEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/trello/rxlifecycle3/android/FragmentEvent;
    .locals 1

    const-class v0, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trello/rxlifecycle3/android/FragmentEvent;

    return-object p0
.end method

.method public static values()[Lcom/trello/rxlifecycle3/android/FragmentEvent;
    .locals 1

    sget-object v0, Lcom/trello/rxlifecycle3/android/FragmentEvent;->$VALUES:[Lcom/trello/rxlifecycle3/android/FragmentEvent;

    invoke-virtual {v0}, [Lcom/trello/rxlifecycle3/android/FragmentEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trello/rxlifecycle3/android/FragmentEvent;

    return-object v0
.end method
