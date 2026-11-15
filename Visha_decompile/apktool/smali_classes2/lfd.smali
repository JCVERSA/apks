.class public final synthetic Llfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lxh5;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;


# direct methods
.method public synthetic constructor <init>(Lxh5;Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llfd;->b:Lxh5;

    iput-object p2, p0, Llfd;->c:Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Llfd;->b:Lxh5;

    iget-object p0, p0, Llfd;->c:Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/g0;->b(Lxh5;Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;)V

    return-void
.end method
