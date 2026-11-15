.class public final Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition$Companion;",
        "",
        "<init>",
        "()V",
        "getPopupPositionByValue",
        "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;",
        "value",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getPopupPositionByValue$default(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition$Companion;IILjava/lang/Object;)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->INSTANCE:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;

    invoke-virtual {p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getPopupPosition()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;->getValue()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition$Companion;->getPopupPositionByValue(I)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getPopupPositionByValue(I)Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;
    .locals 4

    invoke-static {}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;->values()[Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;->getValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->INSTANCE:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;

    invoke-virtual {p0}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;->getPopupPosition()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;

    move-result-object p0

    return-object p0
.end method
