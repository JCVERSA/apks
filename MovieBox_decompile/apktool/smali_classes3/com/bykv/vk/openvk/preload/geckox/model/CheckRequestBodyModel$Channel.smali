.class public Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel$Channel;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation


# instance fields
.field channelName:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "c"
    .end annotation
.end field

.field public localVersion:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "l_v"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/model/CheckRequestBodyModel$Channel;->channelName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method
