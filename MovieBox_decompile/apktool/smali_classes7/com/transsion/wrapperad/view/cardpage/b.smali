.class public final synthetic Lcom/transsion/wrapperad/view/cardpage/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatTextView;

.field public final synthetic b:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

.field public final synthetic c:Lcom/transsion/wrapperad/view/cardpage/f;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/b;->b:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/wrapperad/view/cardpage/b;->c:Lcom/transsion/wrapperad/view/cardpage/f;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/b;->b:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/b;->c:Lcom/transsion/wrapperad/view/cardpage/f;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->c(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
