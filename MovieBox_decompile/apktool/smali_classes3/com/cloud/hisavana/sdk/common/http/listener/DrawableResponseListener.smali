.class public abstract Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.super Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;
.source "source.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end method

.method public final h(II[BLjava/lang/String;)V
    .locals 8

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x1

    .line 3
    if-le v0, v1, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-byte v0, p3, v0

    .line 7
    .line 8
    const/16 v2, 0x47

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    :cond_0
    :goto_0
    move v5, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, -0x1

    .line 16
    goto :goto_0

    .line 17
    :goto_1
    const/4 v0, 0x3

    .line 18
    if-ne p1, v0, :cond_3

    .line 19
    .line 20
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a:Landroid/os/Handler;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    new-instance p3, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;

    .line 25
    .line 26
    invoke-direct {p3, p0, p2, v5, p4}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    new-instance p1, Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    invoke-direct {p1, v5, p3, p4}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 44
    .line 45
    new-instance v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    .line 46
    .line 47
    move-object v2, v0

    .line 48
    move-object v3, p0

    .line 49
    move-object v4, p3

    .line 50
    move v6, p2

    .line 51
    move-object v7, p4

    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;[BIILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    :goto_2
    return-void
.end method
