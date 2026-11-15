.class Lcom/transsion/liblan/util/DisplayManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/util/DisplayManager;->updateDisplayType()V
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

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$3;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager$3;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-static {p0}, Lcom/transsion/liblan/util/DisplayManager;->a(Lcom/transsion/liblan/util/DisplayManager;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
