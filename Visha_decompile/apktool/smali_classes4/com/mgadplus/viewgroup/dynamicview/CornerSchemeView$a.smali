.class public final enum Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

.field public static final enum Center:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

.field public static final enum Harscreen:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

.field public static final enum Left:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

.field public static final enum Right:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Left:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    const-string v2, "Right"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Right:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    new-instance v2, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    const-string v3, "Center"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Center:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    new-instance v3, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    const-string v4, "Harscreen"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Harscreen:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    move-result-object v0

    sput-object v0, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->$VALUES:[Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;
    .locals 1

    const-class v0, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    return-object p0
.end method

.method public static values()[Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;
    .locals 1

    sget-object v0, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->$VALUES:[Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    invoke-virtual {v0}, [Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    return-object v0
.end method
