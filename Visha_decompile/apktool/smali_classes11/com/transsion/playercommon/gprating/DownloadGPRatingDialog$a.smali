.class public Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog$a;->b:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog$a;->b:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    iget-object v0, v0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/200"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog$a;->b:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog$a;->b:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    iget-object v0, v0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->p:Landroid/widget/TextView;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog$a;->b:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    iget-object p1, p1, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->p:Landroid/widget/TextView;

    sget v0, Lcom/transsion/playercommon/R$color;->os_text_tertiary_color:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog$a;->b:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    invoke-static {p0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->F(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
