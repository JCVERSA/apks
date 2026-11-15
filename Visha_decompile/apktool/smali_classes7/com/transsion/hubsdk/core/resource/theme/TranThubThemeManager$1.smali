.class Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/resource/theme/TranThemeManager$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Lcom/transsion/hubsdk/resource/theme/TranThemeManager$ResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;

.field final synthetic val$apiCallback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager$1;->this$0:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager$1;->val$apiCallback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager$1;->val$apiCallback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;->onResult(I)V

    return-void
.end method
