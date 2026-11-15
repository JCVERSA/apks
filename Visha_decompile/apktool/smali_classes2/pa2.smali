.class public final synthetic Lpa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/d;

.field public final synthetic c:Lwa2$b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/dialog/d;Lwa2$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa2;->b:Lcom/transsion/widgetslib/dialog/d;

    iput-object p2, p0, Lpa2;->c:Lwa2$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lpa2;->b:Lcom/transsion/widgetslib/dialog/d;

    iget-object p0, p0, Lpa2;->c:Lwa2$b;

    invoke-static {v0, p0, p1}, Lwa2$a;->b(Lcom/transsion/widgetslib/dialog/d;Lwa2$b;Landroid/view/View;)V

    return-void
.end method
