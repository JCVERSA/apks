.class Lcom/transsion/liblan/util/DisplayManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/util/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/liblan/util/DisplayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/util/DisplayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$2;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/liblan/util/DisplayManager$2;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-static {v0}, Lcom/transsion/liblan/util/DisplayManager;->b(Lcom/transsion/liblan/util/DisplayManager;)Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$2;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/liblan/util/DisplayManager;->e(Lcom/transsion/liblan/util/DisplayManager;Lcom/transsion/liblan/util/DisplayManager$SecondaryDisplay;)V

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager$2;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/transsion/liblan/util/DisplayManager;->f(Lcom/transsion/liblan/util/DisplayManager;I)V

    :cond_0
    return-void
.end method
