.class public final Lcom/transsion/cloud/fragment/SearchCloudFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/SearchCloudFragment;->y1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/cloud/fragment/SearchCloudFragment;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/cloud/fragment/SearchCloudFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$d;->c:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const-string v0, "editable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$d;->b:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lg1a;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$d;->c:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-virtual {p0, v3}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->setButtonEnable(Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/fragment/SearchCloudFragment$d;->c:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->setButtonEnable(Z)V

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

    const-string p0, "charSequence"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
