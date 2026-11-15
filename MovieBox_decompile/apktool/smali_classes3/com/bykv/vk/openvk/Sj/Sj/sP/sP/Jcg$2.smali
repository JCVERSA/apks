.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Ljava/io/File;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Dq/Jcg;

.field final synthetic sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Jcg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$2;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$2;->Sj:Lcom/bytedance/sdk/component/Dq/Jcg;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$2;->Sj:Lcom/bytedance/sdk/component/Dq/Jcg;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
