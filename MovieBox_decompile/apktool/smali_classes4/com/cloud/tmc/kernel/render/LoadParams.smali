.class public Lcom/cloud/tmc/kernel/render/LoadParams;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public beforeScript:Ljava/lang/String;

.field public forceLoad:Z

.field public isReload:Z

.field public pagePath:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/render/LoadParams;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 4
    iget-boolean v0, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->isReload:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->isReload:Z

    .line 5
    iget-boolean v0, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->forceLoad:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->forceLoad:Z

    .line 6
    iget-object v0, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "LoadParams{url=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x7d

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
