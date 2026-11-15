.class public Lcom/transsion/sniffer_load/DownloadTipActivity$b;
.super Los8;
.source "SourceFile"


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

.field public final synthetic c:Lcom/transsion/sniffer_load/DownloadTipActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadTipActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$b;->c:Lcom/transsion/sniffer_load/DownloadTipActivity;

    iput-object p2, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$b;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    invoke-direct {p0}, Los8;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadTipActivity$b;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditField;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
