.class public final synthetic Lcom/cloud/tmc/offline/download/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/TmcProxy$LazyGetter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->d()Lcom/cloud/tmc/offline/download/resource/IOfflineResourceManagerProxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
