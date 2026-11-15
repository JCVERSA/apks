.class public final synthetic Lya7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lya7;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    iput-object p2, p0, Lya7;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lya7;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    iget-object p0, p0, Lya7;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->b(Lcom/transsion/widgetslib/widget/OSSegmentedTab;Landroid/view/View;)V

    return-void
.end method
