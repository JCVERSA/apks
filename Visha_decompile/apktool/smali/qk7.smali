.class public abstract Lqk7;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/ref/WeakReference;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lqk7;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lqk7;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lqk7;->b()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0}, Lqk7;->c()V

    return-void
.end method

.method public abstract c()V
.end method
