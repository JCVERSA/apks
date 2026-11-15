.class Lcom/facebook/biddingkit/logging/EventLog$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/logging/EventLog;->saveEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/facebook/biddingkit/logging/EventLog;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/logging/EventLog;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/logging/EventLog;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/EventLog$1;->this$0:Lcom/facebook/biddingkit/logging/EventLog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/facebook/biddingkit/logging/EventLog;

    invoke-virtual {p0, p1}, Lcom/facebook/biddingkit/logging/EventLog$1;->doInBackground([Lcom/facebook/biddingkit/logging/EventLog;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Lcom/facebook/biddingkit/logging/EventLog;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    .line 2
    aget-object p0, p1, p0

    invoke-static {p0}, Lcom/facebook/biddingkit/logging/EventLogDatabaseAdapter;->insertEntry(Lcom/facebook/biddingkit/logging/EventLog;)V

    const/4 p0, 0x0

    return-object p0
.end method
