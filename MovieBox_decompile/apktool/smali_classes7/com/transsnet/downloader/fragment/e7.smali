.class public final synthetic Lcom/transsnet/downloader/fragment/e7;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/e7;->a:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsnet/downloader/fragment/e7;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/transsnet/downloader/fragment/e7;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/e7;->a:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsnet/downloader/fragment/e7;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/transsnet/downloader/fragment/e7;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->a(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
