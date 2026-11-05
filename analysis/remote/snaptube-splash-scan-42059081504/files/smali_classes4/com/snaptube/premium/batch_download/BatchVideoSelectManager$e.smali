.class public Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->t(Lo/ru8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo/ru8;

.field public final synthetic b:Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;


# direct methods
.method public constructor <init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Lo/ru8;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$e;->b:Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;

    iput-object p2, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$e;->a:Lo/ru8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$e;->b:Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;

    invoke-static {v0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->g(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)Lcom/snaptube/mixed_list/view/FABBatchDownload;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$e;->b:Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;

    iget-object v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$e;->a:Lo/ru8;

    invoke-static {v0, v1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->i(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Lo/ru8;)V

    const/4 v0, 0x1

    return v0
.end method
