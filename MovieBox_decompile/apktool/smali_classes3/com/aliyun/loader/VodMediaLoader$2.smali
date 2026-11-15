.class final Lcom/aliyun/loader/VodMediaLoader$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/loader/VodMediaLoader;->nOnError(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$code:I

.field final synthetic val$index:I

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$vid:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$index:I

    .line 4
    .line 5
    iput p3, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$code:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$msg:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/aliyun/loader/VodMediaLoader;->getInstance()Lcom/aliyun/loader/VodMediaLoader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/aliyun/loader/VodMediaLoader;->access$000(Lcom/aliyun/loader/VodMediaLoader;)Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/aliyun/loader/VodMediaLoader;->getInstance()Lcom/aliyun/loader/VodMediaLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/aliyun/loader/VodMediaLoader;->access$000(Lcom/aliyun/loader/VodMediaLoader;)Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$vid:Ljava/lang/String;

    .line 20
    .line 21
    iget v2, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$index:I

    .line 22
    .line 23
    iget v3, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$code:I

    .line 24
    .line 25
    iget-object v4, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$msg:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;->onError(Ljava/lang/String;IILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
