.class public final Lcom/cloud/hisavana/sdk/J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/J;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/J;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/J$a;->b:Lcom/cloud/hisavana/sdk/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "event"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/J$a;->b:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/J;->l(F)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/J$a;->b:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/J;->n(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/J$a;->b:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/J;->b(F)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/J$a;->b:Lcom/cloud/hisavana/sdk/J;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/J;->j(F)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
