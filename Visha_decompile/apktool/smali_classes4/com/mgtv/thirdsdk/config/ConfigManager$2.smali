.class Lcom/mgtv/thirdsdk/config/ConfigManager$2;
.super Lcom/mgtv/task/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/config/ConfigManager;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/task/http/c<",
        "Lcom/mgtv/thirdsdk/config/ConfigManager$GUID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/thirdsdk/config/ConfigManager;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/config/ConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/config/ConfigManager$2;->a:Lcom/mgtv/thirdsdk/config/ConfigManager;

    invoke-direct {p0}, Lcom/mgtv/task/http/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/thirdsdk/config/ConfigManager$GUID;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/thirdsdk/config/ConfigManager$GUID;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/config/ConfigManager$2;->b(Lcom/mgtv/thirdsdk/config/ConfigManager$GUID;)V

    return-void
.end method

.method public b(Lcom/mgtv/thirdsdk/config/ConfigManager$GUID;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    const-string p0, "recommend_guid"

    iget-object p1, p1, Lcom/mgtv/thirdsdk/config/ConfigManager$GUID;->data:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/thirdsdk/config/ConfigManager$GUID;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/config/ConfigManager$2;->a(Lcom/mgtv/thirdsdk/config/ConfigManager$GUID;)V

    return-void
.end method
