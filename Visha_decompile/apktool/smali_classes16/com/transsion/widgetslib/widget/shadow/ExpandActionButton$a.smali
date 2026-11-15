.class public Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setMainButtonIconAndColor(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$a;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$a;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->a(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$a;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->b(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$a;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->expandItemButtons()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$a;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->collapseItemButtons()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$a;->b:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->d(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$f;

    :goto_0
    return-void
.end method
