.class Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$6;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$6;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

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
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$6;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bytedance/sdk/component/utils/LqL;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$6;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bytedance/sdk/component/utils/LqL;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj/Sj;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$6;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bytedance/sdk/component/utils/LqL;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/utils/LqL;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$6;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Lcom/bytedance/sdk/component/utils/LqL;)Lcom/bytedance/sdk/component/utils/LqL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :catchall_0
    :cond_0
    return-void
.end method
