.class Lcom/transsion/liblan/util/DisplayManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/util/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/transsion/liblan/RendererItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/liblan/util/DisplayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/util/DisplayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$1;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/transsion/liblan/RendererItem;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager$1;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-static {v0}, Lcom/transsion/liblan/util/DisplayManager;->d(Lcom/transsion/liblan/util/DisplayManager;)Lcom/transsion/liblan/RendererItem;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager$1;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-static {v0, p1}, Lcom/transsion/liblan/util/DisplayManager;->g(Lcom/transsion/liblan/util/DisplayManager;Lcom/transsion/liblan/RendererItem;)V

    .line 4
    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager$1;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-static {p0}, Lcom/transsion/liblan/util/DisplayManager;->i(Lcom/transsion/liblan/util/DisplayManager;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/liblan/RendererItem;

    invoke-virtual {p0, p1}, Lcom/transsion/liblan/util/DisplayManager$1;->onChanged(Lcom/transsion/liblan/RendererItem;)V

    return-void
.end method
