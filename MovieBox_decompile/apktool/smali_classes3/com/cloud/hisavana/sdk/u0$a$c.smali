.class public final Lcom/cloud/hisavana/sdk/u0$a$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/u0$a;->a(ILandroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->c:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->d:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MiniApp"

    .line 6
    .line 7
    const-string v2, "On click miniapp guide\'s skip button."

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->d:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->e:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/J0;->R(Landroid/content/Context;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MiniApp"

    .line 6
    .line 7
    const-string v2, "On click miniapp guide\'s sure button and show system add homescreen."

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/cloud/hisavana/sdk/v0;->a:Lcom/cloud/hisavana/sdk/v0;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 21
    .line 22
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->c:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    .line 27
    .line 28
    new-instance v3, Lcom/cloud/hisavana/sdk/u0$a$c$a;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->d:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v6, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->e:Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {v3, v4, v5, v6}, Lcom/cloud/hisavana/sdk/u0$a$c$a;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/v0;->g(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MiniApp"

    .line 6
    .line 7
    const-string v2, "On click miniapp guide\'s cancel button."

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->U(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
