.class Lcom/cloud/sdk/commonutil/util/Preconditions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# direct methods
.method public constructor <init>(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/sdk/commonutil/util/Preconditions$1;->val$callback:Lcom/cloud/sdk/commonutil/util/Preconditions$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/sdk/commonutil/util/Preconditions$1;->val$callback:Lcom/cloud/sdk/commonutil/util/Preconditions$a;

    invoke-interface {p0}, Lcom/cloud/sdk/commonutil/util/Preconditions$a;->onRun()V

    return-void
.end method
