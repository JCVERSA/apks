.class public final synthetic Lf57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/dialog/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/dialog/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf57;->a:Lcom/transsion/widgetslib/dialog/a;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    iget-object p0, p0, Lf57;->a:Lcom/transsion/widgetslib/dialog/a;

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/a;->a(Lcom/transsion/widgetslib/dialog/a;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
