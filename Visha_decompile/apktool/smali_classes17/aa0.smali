.class public final synthetic Laa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Ls74;


# direct methods
.method public synthetic constructor <init>(Ls74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laa0;->b:Ls74;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Laa0;->b:Ls74;

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->a(Ls74;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
