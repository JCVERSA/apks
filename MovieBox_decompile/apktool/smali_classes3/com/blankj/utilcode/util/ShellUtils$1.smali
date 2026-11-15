.class Lcom/blankj/utilcode/util/ShellUtils$1;
.super Lcom/blankj/utilcode/util/Utils$Task;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/Utils$Task<",
        "Lcom/blankj/utilcode/util/z$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$commands:[Ljava/lang/String;

.field final synthetic val$isNeedResultMsg:Z

.field final synthetic val$isRooted:Z


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/Utils$b;[Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$commands:[Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$isRooted:Z

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$isNeedResultMsg:Z

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/Utils$Task;-><init>(Lcom/blankj/utilcode/util/Utils$b;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/blankj/utilcode/util/z$a;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$commands:[Ljava/lang/String;

    iget-boolean v1, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$isRooted:Z

    iget-boolean v2, p0, Lcom/blankj/utilcode/util/ShellUtils$1;->val$isNeedResultMsg:Z

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/z;->b([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/z$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShellUtils$1;->doInBackground()Lcom/blankj/utilcode/util/z$a;

    move-result-object v0

    return-object v0
.end method
