.class public final enum Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FastScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "HORIZONTAL",
        "VERTICAL",
        "Companion",
        "common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

.field public static final Companion:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection$Companion;

.field public static final enum HORIZONTAL:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

.field public static final enum VERTICAL:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;
    .locals 2

    sget-object v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->HORIZONTAL:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    sget-object v1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->VERTICAL:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    filled-new-array {v0, v1}, [Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->HORIZONTAL:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    new-instance v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->VERTICAL:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    invoke-static {}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->$values()[Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->$VALUES:[Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->$ENTRIES:Ldb3;

    new-instance v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->Companion:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->value:I

    return-void
.end method

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;
    .locals 1

    const-class v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    return-object p0
.end method

.method public static values()[Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;
    .locals 1

    sget-object v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->$VALUES:[Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;->value:I

    return p0
.end method
