.class public Lcom/transsion/utils/ToastUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/utils/ToastUtils$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/utils/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/widget/Toast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/utils/ToastUtils$b;->a:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/utils/ToastUtils$b;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/utils/ToastUtils$b;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setDuration(I)V

    return-void
.end method

.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/utils/ToastUtils$b;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/utils/ToastUtils$b;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/utils/ToastUtils$b;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/utils/ToastUtils$b;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
