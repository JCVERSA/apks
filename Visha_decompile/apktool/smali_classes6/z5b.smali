.class public final synthetic Lz5b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5b;->b:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    iput-boolean p2, p0, Lz5b;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lz5b;->b:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    iget-boolean p0, p0, Lz5b;->c:Z

    invoke-static {v0, p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->Q(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;ZLandroid/view/View;)V

    return-void
.end method
