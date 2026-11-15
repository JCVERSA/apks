.class public final Lcom/transsion/widgetslib/widget/OSPopupWindow$d;
.super Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSPopupWindow;->t(Landroid/view/View;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$d;->b:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isInAbsoluteEnd()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$d;->b:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$d;->b:Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
