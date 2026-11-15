.class Lcom/transsion/onlinevideo/history/HistoryManager$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/history/HistoryManager$4;->onResponse(Ljq0;Lgu8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/onlinevideo/history/HistoryManager$4;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/history/HistoryManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/history/HistoryManager$4$1;->this$0:Lcom/transsion/onlinevideo/history/HistoryManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/HistoryManager$4$1;->this$0:Lcom/transsion/onlinevideo/history/HistoryManager$4;

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/HistoryManager$4;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Lsg7;->deleteHistories(Ljava/util/List;)I

    return-void
.end method
