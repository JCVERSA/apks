.class public final synthetic Lga7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/OSPopupWindow;

.field public final synthetic c:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/OSPopupWindow;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga7;->b:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    iput-object p2, p0, Lga7;->c:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lga7;->b:Lcom/transsion/widgetslib/widget/OSPopupWindow;

    iget-object p0, p0, Lga7;->c:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v0, p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->b(Lcom/transsion/widgetslib/widget/OSPopupWindow;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method
