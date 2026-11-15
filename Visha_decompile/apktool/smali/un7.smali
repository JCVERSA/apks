.class public Lun7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;)V
    .locals 0

    iput-object p1, p0, Lun7;->a:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q(Z)V
    .locals 7

    iget-object p0, p0, Lun7;->a:Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->l:I

    const/4 v4, 0x1

    if-nez v3, :cond_0

    aget v0, v0, v4

    iget-object v3, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    iput v3, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->l:I

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v5, v2

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpg-double v0, v5, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-string v0, "originalEmailBottom:"

    invoke-static {v0}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.palm.id.log"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->k:I

    :cond_2
    const-string v0, "space:"

    invoke-static {v0}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->k:I

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Lc39;->a(F)I

    move-result v3

    if-ge v0, v3, :cond_3

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->k:I

    invoke-static {v1}, Lc39;->a(F)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_3
    const-string p1, "No Change"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->m:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method
