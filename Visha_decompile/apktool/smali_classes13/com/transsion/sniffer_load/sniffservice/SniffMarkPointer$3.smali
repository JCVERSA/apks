.class Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$3;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffInjectSuccessDelay(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$markPointBean:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$3;->val$markPointBean:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$3;->val$markPointBean:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;->getMarkPointParams()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;

    move-result-object v0

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$MarkPointParams;->setStatus(Ljava/lang/Integer;)V

    .line 3
    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$3;->val$markPointBean:Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSnifSync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    .line 4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$3;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$3;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
