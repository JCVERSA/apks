.class Lcom/blankj/utilcode/util/NetworkUtils$5;
.super Lcom/blankj/utilcode/util/Utils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/Utils$Task<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$useIPv4:Z


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/Utils$b;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/blankj/utilcode/util/NetworkUtils$5;->val$useIPv4:Z

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/Utils$Task;-><init>(Lcom/blankj/utilcode/util/Utils$b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/NetworkUtils$5;->doInBackground()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 2
    iget-boolean p0, p0, Lcom/blankj/utilcode/util/NetworkUtils$5;->val$useIPv4:Z

    invoke-static {p0}, Lcom/blankj/utilcode/util/NetworkUtils;->j(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
