.class public final Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->o(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    invoke-static {p0, v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->n(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Z)V

    :cond_2
    return p1
.end method
