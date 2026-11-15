.class public Lcom/transsion/xuanniao/account/center/view/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/center/view/o$c;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/q;->a:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/q;->a:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->portrait:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/q;->a:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/q;->a:Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->k:LOppOOO0/OppOp0;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-object p1, v1, LOppOOO0/OppOp0;->c:Lvk7;

    invoke-virtual {v1}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v6

    new-instance v7, Lfs7;

    invoke-virtual {v1}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v2

    const-class v3, Lcom/transsion/xuanniao/account/model/data/AvatarRes;

    const-string v4, "jpg"

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lfs7;-><init>(LOppOOO0/OppOp0;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "jpg"

    invoke-virtual {p1, v6, v0, p0, v7}, Lvk7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LOppOOp0/OppO0O0;)V

    return-void
.end method
