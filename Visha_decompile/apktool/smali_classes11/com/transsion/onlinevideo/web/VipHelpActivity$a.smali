.class public Lcom/transsion/onlinevideo/web/VipHelpActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/web/VipHelpActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/web/VipHelpActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/web/VipHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/web/VipHelpActivity$a;->a:Lcom/transsion/onlinevideo/web/VipHelpActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/web/VipHelpActivity$a;->a:Lcom/transsion/onlinevideo/web/VipHelpActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/web/VipHelpActivity;->S:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipHelpActivity$a;->a:Lcom/transsion/onlinevideo/web/VipHelpActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/web/VipHelpActivity;->S:Landroid/widget/SeekBar;

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
