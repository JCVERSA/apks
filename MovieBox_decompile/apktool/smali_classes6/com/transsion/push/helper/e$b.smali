.class public final Lcom/transsion/push/helper/e$b;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/helper/e;->k(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/notification/MsgBean;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/notification/MsgBean;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/helper/e$b;->a:Lcom/transsion/baselib/db/notification/MsgBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/helper/e$b;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/push/helper/e$b;->a:Lcom/transsion/baselib/db/notification/MsgBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/db/notification/MsgBean;->isPermanent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/push/helper/e$b;->b:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/push/helper/e$b;->a:Lcom/transsion/baselib/db/notification/MsgBean;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/push/helper/NotificationShowHelper;->s(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/push/helper/e$b;->b:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/transsion/push/helper/e$b;->a:Lcom/transsion/baselib/db/notification/MsgBean;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/push/helper/NotificationShowHelper;->r(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Landroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "PushImageHelper"

    .line 6
    .line 7
    const-string v2, "onLoadCleared"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/CustomTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x0

    .line 8
    const-string v1, "PushImageHelper"

    .line 9
    .line 10
    const-string v2, "onFailure"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-direct {p0, p1}, Lcom/transsion/push/helper/e$b;->a(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 6

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PushImageHelper"

    const-string v2, "onSuccess"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/push/helper/e$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/helper/e$b;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
