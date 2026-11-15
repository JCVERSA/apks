.class public final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/share/OnShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->systemShare(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;->onShare$lambda$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;->onShare$lambda$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onShare$lambda$0()V
    .locals 7

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_shared_success:I

    .line 2
    .line 3
    const/16 v5, 0xe

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final onShare$lambda$1()V
    .locals 7

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_shared_failed:I

    .line 2
    .line 3
    const/16 v5, 0xe

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onShare(II)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const-string v0, "share"

    .line 3
    .line 4
    const-string v1, "ImagePreviewActivity"

    .line 5
    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    const-string p1, "Share file successfully"

    .line 9
    .line 10
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getMTaskQueue(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Lcom/cloud/tmc/miniapp/task/OooO00o;

    .line 20
    .line 21
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/a;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ui/a;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v0, v1}, Lcom/cloud/tmc/miniapp/task/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, "Share file failed"

    .line 34
    .line 35
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getMTaskQueue(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lcom/cloud/tmc/miniapp/task/OooO00o;

    .line 45
    .line 46
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/b;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ui/b;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, v0, v1}, Lcom/cloud/tmc/miniapp/task/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method
