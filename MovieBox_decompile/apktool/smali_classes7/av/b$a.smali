.class public final Lav/b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/usercenter/edit/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lav/b;->e(Lcom/transsion/usercenter/edit/api/RequstUserEntity;)V
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
    iput-object p1, p0, Lav/b$a;->a:Lav/b;

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
    iget-object v0, p0, Lav/b$a;->a:Lav/b;

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
    iget-object v0, p0, Lav/b$a;->a:Lav/b;

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
    iget-object v0, p0, Lav/b$a;->a:Lav/b;

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
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lav/b$a;->c(Ljava/lang/String;ZLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "bucket"

    .line 2
    .line 3
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lav/b$a;->a:Lav/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lav/a;->d()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lav/b$a;->a:Lav/b;

    .line 15
    .line 16
    invoke-virtual {p1}, Lav/a;->c()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/transsion/usercenter/edit/b;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-interface {p1, p2}, Lcom/transsion/usercenter/edit/b;->onEditProfile(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
