.class public final Lcom/cloud/hisavana/sdk/E0$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/activity/MiniAppPopUpActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/E0$a;->a(ILandroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->c:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "MiniApp"

    const-string v2, "On click miniapp guide\'s skip button."

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->d:Landroid/content/Context;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->e:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/U0;->S(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public b()V
    .locals 6

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "MiniApp"

    const-string v2, "On click miniapp guide\'s sure button and show system add homescreen."

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    sget-object v0, Lcom/cloud/hisavana/sdk/F0;->a:Lcom/cloud/hisavana/sdk/F0;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->c:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    new-instance v3, Lcom/cloud/hisavana/sdk/E0$a$c$a;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->d:Landroid/content/Context;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v5, p0}, Lcom/cloud/hisavana/sdk/E0$a$c$a;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/F0;->h(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Le74;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "MiniApp"

    const-string v2, "On click miniapp guide\'s cancel button."

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/E0$a$c;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method
