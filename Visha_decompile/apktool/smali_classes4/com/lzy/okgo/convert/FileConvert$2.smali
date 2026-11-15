.class Lcom/lzy/okgo/convert/FileConvert$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Liq3;

.field final synthetic val$progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Liq3;Lcom/lzy/okgo/model/Progress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/lzy/okgo/convert/FileConvert$2;->val$progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Liq3;->a(Liq3;)Luq0;

    throw p0
.end method
