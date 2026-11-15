.class public final synthetic Lfa7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa7;->a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    return-void
.end method


# virtual methods
.method public final onOverScrollUpdated(F)V
    .locals 0

    iget-object p0, p0, Lfa7;->a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->a(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;F)V

    return-void
.end method
