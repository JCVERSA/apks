.class Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->onPhotoSelected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->v(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->v(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->z(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->y(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->w(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
