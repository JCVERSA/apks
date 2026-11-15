.class public final synthetic Lva2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/d;

.field public final synthetic c:Lwa2$c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/dialog/d;Lwa2$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva2;->b:Lcom/transsion/widgetslib/dialog/d;

    iput-object p2, p0, Lva2;->c:Lwa2$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lva2;->b:Lcom/transsion/widgetslib/dialog/d;

    iget-object p0, p0, Lva2;->c:Lwa2$c;

    invoke-static {v0, p0, p1}, Lwa2$a;->f(Lcom/transsion/widgetslib/dialog/d;Lwa2$c;Landroid/view/View;)V

    return-void
.end method
