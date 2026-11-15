.class Lcom/transsion/playercommon/widgets/SearchFileView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/SearchFileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/widgets/SearchFileView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView$3;->this$0:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView$3;->this$0:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->k(Lcom/transsion/playercommon/widgets/SearchFileView;)Lcom/transsion/widgetslib/widget/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SearchFileView$3;->this$0:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->k(Lcom/transsion/playercommon/widgets/SearchFileView;)Lcom/transsion/widgetslib/widget/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView$3;->this$0:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->k(Lcom/transsion/playercommon/widgets/SearchFileView;)Lcom/transsion/widgetslib/widget/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->loadSearchData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
