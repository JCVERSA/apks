.class public final Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity;
.super Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u0000 \u00132\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\r\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity;",
        "Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Lzfb;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/webkit/WebView;",
        "view",
        "",
        "url",
        "onPageFinished",
        "(Landroid/webkit/WebView;Ljava/lang/String;)V",
        "v0",
        "(Ljava/lang/String;)V",
        "F0",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "b0",
        "a",
        "clouddrive_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b0:Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity;->b0:Lcom/transsion/cloud/activity/CloudPaymentWebViewActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public F0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Z:Z

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string p1, "pay.html"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "service.html"

    invoke-static {p2, p1, v0, v1, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->Z:Z

    :cond_2
    return-void
.end method

.method public v0(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lw41;->l:Lw41$a;

    invoke-virtual {v0, p1}, Lw41$a;->a(Ljava/lang/String;)Lrfc;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;->N:Lrfc;

    return-void
.end method
