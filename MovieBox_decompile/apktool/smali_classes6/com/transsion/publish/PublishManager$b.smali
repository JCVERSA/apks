.class public final Lcom/transsion/publish/PublishManager$b;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/PublishManager;->create(Lcom/transsion/publish/api/bean/RequestPostEntity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/publish/PublishManager;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/transsion/publish/PublishManager;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/PublishManager$b;->d:Lcom/transsion/publish/PublishManager;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/publish/PublishManager$b;->e:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$b;->d:Lcom/transsion/publish/PublishManager;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/publish/PublishManager$b;->e:Z

    .line 4
    .line 5
    invoke-static {v0, p1, p2, v1}, Lcom/transsion/publish/PublishManager;->access$failureCallback(Lcom/transsion/publish/PublishManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/publish/net/PostResuleEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/publish/PublishManager$b;->e(Lcom/transsion/publish/net/PostResuleEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/publish/net/PostResuleEntity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$b;->d:Lcom/transsion/publish/PublishManager;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/publish/PublishManager;->access$successCallback(Lcom/transsion/publish/PublishManager;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
