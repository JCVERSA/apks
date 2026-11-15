.class public Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsv3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->fingerPrintMethod(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    iput-object p2, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->Y(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;IZ)V

    return-void
.end method

.method public c(II)V
    .locals 0

    const/16 p2, 0x16

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;->a:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->X(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->T(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6$1;

    invoke-direct {p2, p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6$1;-><init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment$6;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
