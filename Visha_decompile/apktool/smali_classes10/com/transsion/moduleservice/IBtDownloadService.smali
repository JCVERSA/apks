.class public interface abstract Lcom/transsion/moduleservice/IBtDownloadService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/IProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moduleservice/IBtDownloadService$ServiceInstance;
    }
.end annotation


# static fields
.field public static final BT_ENABLE:Z = true


# virtual methods
.method public abstract gotoTorrentDownloadActivity(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract hasTaskRunning()Z
.end method

.method public abstract sniffTorrent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)Z
.end method
