.class public final synthetic Lo/qf5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lo/bx2;


# direct methods
.method public synthetic constructor <init>(Lo/bx2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/qf5;->a:Lo/bx2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/qf5;->a:Lo/bx2;

    invoke-static {v0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->b(Lo/bx2;Landroid/view/View;)V

    const/4 v1, 0x1

    return-void
.end method
