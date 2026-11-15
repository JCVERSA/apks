.class Lcom/blankj/utilcode/util/LogUtils$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$tagHead:Lcom/blankj/utilcode/util/q;

.field final synthetic val$type_low:I


# direct methods
.method constructor <init>(ILcom/blankj/utilcode/util/q;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$type_low:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/blankj/utilcode/util/LogUtils$1;->val$body:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
