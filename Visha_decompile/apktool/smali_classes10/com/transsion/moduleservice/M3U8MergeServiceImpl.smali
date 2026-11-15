.class public Lcom/transsion/moduleservice/M3U8MergeServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/moduleservice/IM3U8MergeService;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mediabase/M3U8MergeService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public transformM3U8ToMp4(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V
    .locals 0
    .param p3    # Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/jeffmony/m3u8library/VideoProcessManager;->getInstance()Lcom/jeffmony/m3u8library/VideoProcessManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/jeffmony/m3u8library/VideoProcessManager;->transformM3U8ToMp4(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V

    return-void
.end method
