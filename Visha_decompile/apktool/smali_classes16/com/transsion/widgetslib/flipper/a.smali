.class public final synthetic Lcom/transsion/widgetslib/flipper/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/a;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/a;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/flipper/FlipperLayout$onTouchListener$2;->a(Lcom/transsion/widgetslib/flipper/FlipperLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
