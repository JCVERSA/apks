.class public final synthetic Lh38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/d$a;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/dialog/d$a;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh38;->b:Lcom/transsion/widgetslib/dialog/d$a;

    iput-object p2, p0, Lh38;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lh38;->b:Lcom/transsion/widgetslib/dialog/d$a;

    iget-object p0, p0, Lh38;->c:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lk38;->d(Lcom/transsion/widgetslib/dialog/d$a;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
