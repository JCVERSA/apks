.class Lcom/blankj/utilcode/util/BusUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/BusUtils;

.field final synthetic val$arg:Ljava/lang/Object;

.field final synthetic val$bus:Ljava/lang/Object;

.field final synthetic val$busInfo:Lcom/blankj/utilcode/util/BusUtils$a;

.field final synthetic val$sticky:Z


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/BusUtils;Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/blankj/utilcode/util/BusUtils$1;->val$bus:Ljava/lang/Object;

    iput-object p3, p0, Lcom/blankj/utilcode/util/BusUtils$1;->val$arg:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/blankj/utilcode/util/BusUtils$1;->val$sticky:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils$1;->val$bus:Ljava/lang/Object;

    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils$1;->val$arg:Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/BusUtils$1;->val$sticky:Z

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2, p0}, Lcom/blankj/utilcode/util/BusUtils;->a(Lcom/blankj/utilcode/util/BusUtils;Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$a;Z)V

    return-void
.end method
