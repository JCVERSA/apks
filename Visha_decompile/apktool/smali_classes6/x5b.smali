.class public final synthetic Lx5b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

.field public final synthetic c:Lcom/transsion/moduleservice/IBtDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;Lcom/transsion/moduleservice/IBtDownloadService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5b;->b:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    iput-object p2, p0, Lx5b;->c:Lcom/transsion/moduleservice/IBtDownloadService;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lx5b;->b:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    iget-object p0, p0, Lx5b;->c:Lcom/transsion/moduleservice/IBtDownloadService;

    invoke-static {v0, p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->U(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;Lcom/transsion/moduleservice/IBtDownloadService;Landroid/view/View;)V

    return-void
.end method
