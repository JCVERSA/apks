.class public Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOppOp00/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/model/data/AccountRes;

.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;

.field public final synthetic c:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;Lcom/transsion/xuanniao/account/model/data/AccountRes;Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$a;->c:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$a;->a:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iput-object p3, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$a;->b:Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$a;->a:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$a;->c:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$a;->c:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    sget v1, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->k:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/transsion/xuanniao/account/R$drawable;->xn_portrait_default:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity$a;->b:Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
