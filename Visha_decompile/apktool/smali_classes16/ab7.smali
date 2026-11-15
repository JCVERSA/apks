.class public final synthetic Lab7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lab7;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lab7;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->d(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
