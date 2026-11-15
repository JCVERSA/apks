.class public final synthetic Lsy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsy3;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    iput p2, p0, Lsy3;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lsy3;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    iget p0, p0, Lsy3;->c:I

    invoke-static {v0, p0, p1}, Lty3;->a(Lcom/transsion/widgetslib/flipper/FlipperLayout;ILandroid/view/View;)V

    return-void
.end method
