.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;->invoke(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroidx/core/view/WindowInsetsCompat;",
        "it",
        "Lzfb;",
        "invoke",
        "(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $this_flexWindow:Landroid/view/Window;

.field final synthetic this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    iput-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    check-cast p2, Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->invoke(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4

    const-string v0, "$this$flexWindowInsets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-static {p2, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->n(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->d(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    .line 5
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {p2}, Lt05;->a(Landroid/view/WindowManager$LayoutParams;)I

    move-result p2

    invoke-static {}, Lzr9;->a()I

    move-result v0

    and-int/2addr p2, v0

    if-nez p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lt05;->a(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    invoke-static {}, Lzr9;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 8
    invoke-static {p2, v0}, Lu05;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 9
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, 0x0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 10
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-static {p2}, Lt05;->a(Landroid/view/WindowManager$LayoutParams;)I

    move-result p2

    invoke-static {}, Lzr9;->a()I

    move-result v0

    and-int/2addr p2, v0

    if-lez p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lt05;->a(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    invoke-static {}, Lzr9;->a()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 14
    invoke-static {p2, v0}, Lu05;->a(Landroid/view/WindowManager$LayoutParams;I)V

    if-eqz p1, :cond_1

    .line 15
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 16
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->D(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 17
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 18
    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 19
    :cond_2
    :goto_0
    invoke-static {}, Lzr9;->a()I

    move-result p2

    not-int p2, p2

    .line 20
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lt05;->a(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowInsets.Type.ime().inv() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " attributes.fitInsetsTypes = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " attributesTemp.y = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " visible = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {p2}, Lbq5;->o(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-static {p2, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->n(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 23
    :cond_3
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->t(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->u(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 24
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->c(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    :cond_4
    return-void
.end method
