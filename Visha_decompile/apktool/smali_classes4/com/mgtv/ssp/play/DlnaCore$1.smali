.class Lcom/mgtv/ssp/play/DlnaCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/DlnaCore;->dlnaPrepare(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/DlnaCore;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/DlnaCore;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/DlnaCore$1;->this$0:Lcom/mgtv/ssp/play/DlnaCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlnaError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/DlnaCore$1;->this$0:Lcom/mgtv/ssp/play/DlnaCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/DlnaCore;->access$000(Lcom/mgtv/ssp/play/DlnaCore;)Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/DlnaCore$1;->this$0:Lcom/mgtv/ssp/play/DlnaCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/DlnaCore;->access$000(Lcom/mgtv/ssp/play/DlnaCore;)Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;->onDlnaError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDlnaPrepare(Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/DlnaCore$1;->this$0:Lcom/mgtv/ssp/play/DlnaCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/DlnaCore;->access$000(Lcom/mgtv/ssp/play/DlnaCore;)Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/DlnaCore$1;->this$0:Lcom/mgtv/ssp/play/DlnaCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/DlnaCore;->access$000(Lcom/mgtv/ssp/play/DlnaCore;)Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/dlnasdk/OnDlnaListener;->onDlnaPrepared(Lcom/mgtv/ssp/play/dlnasdk/DlnaInfo;)V

    :cond_0
    return-void
.end method
