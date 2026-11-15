.class public Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/admoblibrary/check/ExistsCheck$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/admoblibrary/excuter/AdmobNative;->initNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;


# direct methods
.method public constructor <init>(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->g(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->h(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {v3}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->i(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)Lcom/hisavana/common/bean/Network;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/google/android/gms/ads/AdLoader$Builder;)Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdmobNative"

    const-string v2, "start load native ad"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->j(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->k(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-static {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->b(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "codeSeatId is null"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->c(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdmobNative"

    const-string v2, "failed load native ad"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$a;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_INIT_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {p0, v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->b(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
