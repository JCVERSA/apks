.class public Lqk0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqk0;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lqk0;


# direct methods
.method public constructor <init>(Lqk0;)V
    .locals 0

    iput-object p1, p0, Lqk0$b;->b:Lqk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lqk0$b;->b:Lqk0;

    iget-object p1, p1, Lqk0;->c:Lqk0$c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lqk0$c;->onClose()V

    iget-object p1, p0, Lqk0$b;->b:Lqk0;

    invoke-static {p1}, Lqk0;->a(Lqk0;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lqk0$b;->b:Lqk0;

    invoke-static {p0}, Lqk0;->a(Lqk0;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
