.class public interface abstract Lcom/transsion/moduleservice/IM3U8MergeService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/IProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moduleservice/IM3U8MergeService$ServiceInstance;,
        Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;
    }
.end annotation


# virtual methods
.method public abstract transformM3U8ToMp4(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V
    .param p3    # Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
