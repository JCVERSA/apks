.class public Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/net/NetworkStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetWorkLocationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo$DataBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4b58a3912a89db47L


# instance fields
.field public code:I

.field public data:Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWorkFlowContentMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo;->data:Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo$DataBean;

    if-eqz v1, :cond_0

    const-string v2, "ip"

    iget-object v1, v1, Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo$DataBean;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo;->data:Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo$DataBean;

    iget-object v1, v1, Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo$DataBean;->isp:Ljava/lang/String;

    const-string v2, "operater"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo;->data:Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo$DataBean;

    iget-object p0, p0, Lcom/hunantv/imgo/net/NetworkStateManager$NetWorkLocationInfo$DataBean;->city:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
