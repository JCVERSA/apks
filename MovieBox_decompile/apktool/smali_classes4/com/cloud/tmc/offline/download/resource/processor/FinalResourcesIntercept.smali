.class public final Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept;",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;",
        "()V",
        "intercept",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;",
        "chain",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;",
        "Companion",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept$Companion;

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: FinalResourcesIntercept"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept;->Companion:Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public intercept(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;
    .locals 2

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;->params()Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "No found for resources: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "TmcOfflineDownload: FinalResourcesIntercept"

    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {p1, v0, v1, v0}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    return-object p1
.end method
