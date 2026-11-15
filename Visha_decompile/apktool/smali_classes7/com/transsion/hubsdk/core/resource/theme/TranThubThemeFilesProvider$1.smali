.class Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->registerListener(Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;

.field final synthetic val$callback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider$1;->this$0:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider$1;->val$callback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider$1;->val$callback:Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;->onThemeUpdated()V

    return-void
.end method
