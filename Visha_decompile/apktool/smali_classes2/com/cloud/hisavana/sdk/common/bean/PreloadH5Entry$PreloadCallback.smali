.class public interface abstract Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreloadCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u0010\u001a\u00020\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u0013\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;",
        "",
        "Lzfb;",
        "onPageStart",
        "()V",
        "",
        "title",
        "onReceivedTitle",
        "(Ljava/lang/String;)V",
        "",
        "newProcess",
        "onProgressChanged",
        "(I)V",
        "url",
        "",
        "hasGesture",
        "shouldOverrideUrlLoading",
        "(Ljava/lang/String;Z)V",
        "errorCode",
        "onPageFailed",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onPageFailed(I)V
.end method

.method public abstract onPageStart()V
.end method

.method public abstract onProgressChanged(I)V
.end method

.method public abstract onReceivedTitle(Ljava/lang/String;)V
.end method

.method public abstract shouldOverrideUrlLoading(Ljava/lang/String;Z)V
.end method
