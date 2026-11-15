.class public final Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO0;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0O0O00;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO0;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0O0O00;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO0;->OooO00o:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "https://h5.dlight-app.com/outside/privacy-policy?lang="

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO0;->OooO00o:Ljava/lang/String;

    .line 20
    .line 21
    :goto_0
    sget-object v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0O0O00;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooOOO0;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0O0O00;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p1, v2}, Lcom/cloud/tmc/integration/net/UrlKt;->appendCommonParamUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/16 v5, 0xc

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;->launch$default(Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p1
.end method
