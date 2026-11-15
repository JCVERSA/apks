.class public final synthetic Lde2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde2;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lde2;->b:Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->a(Ljava/util/List;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
