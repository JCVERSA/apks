.class final enum Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/OSPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HorizontalAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;",
        "",
        "(Ljava/lang/String;I)V",
        "START",
        "END",
        "CENTER",
        "widgetsLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum CENTER:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

.field public static final enum END:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

.field public static final enum START:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

.field public static final synthetic b:[Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->START:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    new-instance v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    const-string v1, "END"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->END:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    new-instance v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    const-string v1, "CENTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->CENTER:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    invoke-static {}, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->a()[Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->b:[Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;
    .locals 3

    sget-object v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->START:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    sget-object v1, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->END:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    sget-object v2, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->CENTER:Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;
    .locals 1

    const-class v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    return-object p0
.end method

.method public static values()[Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;->b:[Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/widgetslib/widget/OSPopupWindow$HorizontalAlign;

    return-object v0
.end method
