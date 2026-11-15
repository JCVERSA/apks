.class public Lcom/transsion/sniffer_load/DownloadTipActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/DownloadTipActivity;->p0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

.field public final synthetic c:Landroidx/core/widget/NestedScrollView;

.field public final synthetic d:Lcom/transsion/sniffer_load/DownloadTipActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$a;->d:Lcom/transsion/sniffer_load/DownloadTipActivity;

    iput-object p2, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$a;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    iput-object p3, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$a;->c:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$a;->c:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$a;->d:Lcom/transsion/sniffer_load/DownloadTipActivity;

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$a;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/sniffer_load/DownloadTipActivity;->n0(Lcom/transsion/sniffer_load/DownloadTipActivity;Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$a;->c:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_0
    return p2
.end method
