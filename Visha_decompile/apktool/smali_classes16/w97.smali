.class public final synthetic Lw97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsmotionlibrary/b;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Lcom/transsion/widgetsmotionlibrary/b$c;

.field public final synthetic e:Landroid/view/View$OnTouchListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/ViewGroup;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View$OnTouchListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw97;->b:Lcom/transsion/widgetsmotionlibrary/b;

    iput-object p2, p0, Lw97;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lw97;->d:Lcom/transsion/widgetsmotionlibrary/b$c;

    iput-object p4, p0, Lw97;->e:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lw97;->b:Lcom/transsion/widgetsmotionlibrary/b;

    iget-object v1, p0, Lw97;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lw97;->d:Lcom/transsion/widgetsmotionlibrary/b$c;

    iget-object v3, p0, Lw97;->e:Landroid/view/View$OnTouchListener;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetsmotionlibrary/b;->b(Lcom/transsion/widgetsmotionlibrary/b;Landroid/view/ViewGroup;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View$OnTouchListener;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
