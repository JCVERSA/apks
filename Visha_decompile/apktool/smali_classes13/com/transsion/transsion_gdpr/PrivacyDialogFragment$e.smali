.class public final Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->j(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->m(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->o(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->n(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->g(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    invoke-static {}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->i()Lid4;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$e;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->h(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-interface {p1, p0}, Lid4;->c(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method
