.class final Lcom/aliyun/loader/VodMediaLoader$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/loader/VodMediaLoader;->nOnPrepared(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/loader/VodMediaLoader$1;->val$object:Ljava/lang/Object;

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
    iget-object v1, p0, Lcom/aliyun/loader/VodMediaLoader$1;->val$object:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;->onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
