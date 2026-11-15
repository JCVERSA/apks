.class public final enum Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

.field public static final enum COLLAPSE:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

.field public static final enum EXPAND:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;


# direct methods
.method private static synthetic $values()[Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;
    .locals 2

    sget-object v0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->EXPAND:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    sget-object v1, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->COLLAPSE:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    filled-new-array {v0, v1}, [Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    const-string v1, "EXPAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->EXPAND:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    new-instance v0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    const-string v1, "COLLAPSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->COLLAPSE:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    invoke-static {}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->$values()[Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    move-result-object v0

    sput-object v0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->$VALUES:[Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;
    .locals 1

    const-class v0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    return-object p0
.end method

.method public static values()[Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;
    .locals 1

    sget-object v0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->$VALUES:[Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    invoke-virtual {v0}, [Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    return-object v0
.end method
