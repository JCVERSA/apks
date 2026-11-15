.class final Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/uA/vS$TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createWebView(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/webkit/WebView;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/content/MutableContextWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    if-nez p3, :cond_1

    .line 10
    .line 11
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/uA/HiB;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/uA/HiB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/uA/HiB;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/uA/HiB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :catch_0
    if-nez p3, :cond_2

    .line 24
    .line 25
    new-instance p3, Lcom/bytedance/sdk/component/uA/HiB;

    .line 26
    .line 27
    invoke-direct {p3, p1, p2}, Lcom/bytedance/sdk/component/uA/HiB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    .line 29
    .line 30
    return-object p3

    .line 31
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/component/uA/HiB;

    .line 32
    .line 33
    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/uA/HiB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method
