.class Lcom/hisavana/admoblibrary/excuter/AdmobNative$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/admoblibrary/excuter/AdmobNative;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/admoblibrary/excuter/AdmobNative;


# direct methods
.method public constructor <init>(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$1;->this$0:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$1;->this$0:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Z)Z

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobNative$1;->this$0:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_TIME_OUT:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {p0, v0}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a(Lcom/hisavana/admoblibrary/excuter/AdmobNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
