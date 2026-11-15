.class public final Lcom/transsion/videofloat/manager/i$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lgw/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videofloat/manager/i;->u(Ldw/a;ZLgw/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgw/a;

.field final synthetic b:Lcom/transsion/videofloat/manager/i;


# direct methods
.method constructor <init>(Lgw/a;Lcom/transsion/videofloat/manager/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/videofloat/manager/i$a;->a:Lgw/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/videofloat/manager/i$a;->b:Lcom/transsion/videofloat/manager/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ldw/a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->a:Lgw/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lgw/a;->a(Ldw/a;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public b(Ldw/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->b:Lcom/transsion/videofloat/manager/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/transsion/videofloat/manager/i;->l(Lcom/transsion/videofloat/manager/i;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->a:Lgw/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lgw/a;->b(Ldw/a;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->b:Lcom/transsion/videofloat/manager/i;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/transsion/videofloat/manager/i;->m(Lcom/transsion/videofloat/manager/i;Lcom/transsion/videofloat/view/VideoFloatView;)V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ldw/a;->k()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object v0, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/transsion/videofloat/manager/a0;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public c(Ldw/a;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->b:Lcom/transsion/videofloat/manager/i;

    .line 4
    .line 5
    invoke-virtual {p1}, Ldw/a;->r()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ldw/a;->v()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    invoke-virtual {p1}, Ldw/a;->h()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p1}, Ldw/a;->e()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/videofloat/manager/i;->k(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->a:Lgw/a;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0, p1}, Lgw/a;->c(Ldw/a;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method
