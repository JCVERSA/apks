.class public final Lcom/transsion/cloud/fragment/SearchCloudFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/SearchCloudFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/SearchCloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/SearchCloudFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$b;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$b;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->T0(Lcom/transsion/cloud/fragment/SearchCloudFragment;)Lcom/transsion/widgetslib/widget/SearchBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$b;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->V0(Lcom/transsion/cloud/fragment/SearchCloudFragment;Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "s"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Laz5;->a:Laz5$a;

    iget-object p0, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$b;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->U0(Lcom/transsion/cloud/fragment/SearchCloudFragment;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Laz5$a;->M(Ljava/lang/String;)V

    return-void
.end method
