.class public Lag5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag5$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag5;->j(Landroid/app/Activity;Lag5$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lag5$c;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    invoke-static {p1}, Lag5;->b(I)V

    invoke-static {}, Lag5;->a()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lag5$c;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lag5$c;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lag5$c;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-static {}, Lag5;->a()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
