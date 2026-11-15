.class Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->p(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$filePath:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$imageView:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->lambda$run$1(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->lambda$run$0(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_BITMAP_TOO_LARGE:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$run$1(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const/16 p0, 0xc8

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$filePath:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/J0;->w(Landroid/content/Context;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/b;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/common/http/b;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$filePath:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/m;->c(Ljava/io/File;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Ln7/c;->b([B)Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$imageView:Landroid/widget/ImageView;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 47
    .line 48
    new-instance v3, Lcom/cloud/hisavana/sdk/common/http/c;

    .line 49
    .line 50
    invoke-direct {v3, v1, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/c;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_BITMAP_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_2
    return-void
.end method
