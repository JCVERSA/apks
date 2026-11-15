.class final Lcom/aliyun/loader/MediaLoader$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/loader/MediaLoader;->nOnCanceled(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/loader/MediaLoader$3;->val$url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

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
    iget-object v1, p0, Lcom/aliyun/loader/MediaLoader$3;->val$url:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;->onCanceled(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
