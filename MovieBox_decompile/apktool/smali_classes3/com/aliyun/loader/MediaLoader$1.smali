.class final Lcom/aliyun/loader/MediaLoader$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/loader/MediaLoader;->nOnError(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/loader/MediaLoader$1;->val$url:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/aliyun/loader/MediaLoader$1;->val$code:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/aliyun/loader/MediaLoader$1;->val$msg:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/aliyun/loader/MediaLoader;->access$000(Lcom/aliyun/loader/MediaLoader;)Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/aliyun/loader/MediaLoader;->access$000(Lcom/aliyun/loader/MediaLoader;)Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/aliyun/loader/MediaLoader$1;->val$url:Ljava/lang/String;

    .line 20
    .line 21
    iget v2, p0, Lcom/aliyun/loader/MediaLoader$1;->val$code:I

    .line 22
    .line 23
    iget-object v3, p0, Lcom/aliyun/loader/MediaLoader$1;->val$msg:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v0, v1, v2, v3}, Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
