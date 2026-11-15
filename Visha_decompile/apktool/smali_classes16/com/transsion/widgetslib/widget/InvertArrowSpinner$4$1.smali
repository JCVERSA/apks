.class Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4$1;->this$1:Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4$1;->this$1:Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->a(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4$1;->this$1:Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$4;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->performClick()Z

    :cond_0
    return-void
.end method
