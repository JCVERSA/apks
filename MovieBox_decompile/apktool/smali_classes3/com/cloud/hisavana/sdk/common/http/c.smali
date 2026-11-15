.class public final synthetic Lcom/cloud/hisavana/sdk/common/http/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/c;->a:Landroid/widget/ImageView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/c;->b:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/http/c;->c:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/c;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/c;->b:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/c;->c:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
