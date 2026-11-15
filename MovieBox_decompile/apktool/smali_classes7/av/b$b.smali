.class public final Lav/b$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/usercenter/edit/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lav/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lav/b;


# direct methods
.method constructor <init>(Lav/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lav/b$b;->a:Lav/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lav/b$b;->a:Lav/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lav/a;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lav/b$b;->a:Lav/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lav/a;->c()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/transsion/usercenter/edit/b;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {v0, v1}, Lcom/transsion/usercenter/edit/b;->onEditProfile(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lav/b$b;->a:Lav/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Lav/a;->c()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/transsion/usercenter/edit/b;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0, p1, p2}, Lcom/transsion/usercenter/edit/b;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lav/b$b;->c(Lcom/transsnet/loginapi/bean/UserInfo;ZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/transsnet/loginapi/bean/UserInfo;ZLjava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "bucket"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lav/b$b;->a:Lav/b;

    .line 7
    .line 8
    invoke-virtual {p2}, Lav/a;->d()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lav/b$b;->a:Lav/b;

    .line 17
    .line 18
    invoke-virtual {p2}, Lav/a;->c()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lcom/transsion/usercenter/edit/b;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-interface {p2, p1}, Lcom/transsion/usercenter/edit/b;->onUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lav/b$b;->a:Lav/b;

    .line 31
    .line 32
    invoke-virtual {p1}, Lav/a;->c()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/transsion/usercenter/edit/b;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-interface {p1, p2}, Lcom/transsion/usercenter/edit/b;->onUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method
