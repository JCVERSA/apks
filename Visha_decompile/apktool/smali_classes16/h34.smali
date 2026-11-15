.class public final synthetic Lh34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh34;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput-object p2, p0, Lh34;->c:Landroid/view/View;

    iput p3, p0, Lh34;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lh34;->b:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget-object v1, p0, Lh34;->c:Landroid/view/View;

    iget p0, p0, Lh34;->d:I

    invoke-static {v0, v1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->a(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;I)V

    return-void
.end method
