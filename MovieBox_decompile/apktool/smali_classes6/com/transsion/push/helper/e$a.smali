.class public final Lcom/transsion/push/helper/e$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/helper/e;->c(Landroid/content/Context;Ljava/util/Map;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/transsion/baselib/db/notification/MsgBean;

.field final synthetic e:Lcom/transsion/push/bean/ServerMatchListItemData;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/helper/e$a;->a:Ljava/util/Map;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/helper/e$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/push/helper/e$a;->c:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/push/helper/e$a;->d:Lcom/transsion/baselib/db/notification/MsgBean;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/push/helper/e$a;->e:Lcom/transsion/push/bean/ServerMatchListItemData;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;Ljava/util/Map;)V
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
    const-string v2, "showMatchPush"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/push/helper/NotificationShowHelper;->t(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/CustomTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/transsion/push/helper/e$a;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/transsion/push/helper/e$a;->b:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/transsion/push/helper/e$a;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/transsion/push/helper/e$a;->c:Landroid/content/Context;

    iget-object p2, p0, Lcom/transsion/push/helper/e$a;->d:Lcom/transsion/baselib/db/notification/MsgBean;

    iget-object v0, p0, Lcom/transsion/push/helper/e$a;->e:Lcom/transsion/push/bean/ServerMatchListItemData;

    iget-object v1, p0, Lcom/transsion/push/helper/e$a;->a:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/transsion/push/helper/e$a;->a(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/helper/e$a;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
