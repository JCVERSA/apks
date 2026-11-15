.class public final synthetic Lv97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsmotionlibrary/b;

.field public final synthetic c:Lcom/transsion/widgetsmotionlibrary/b$c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsmotionlibrary/b;Lcom/transsion/widgetsmotionlibrary/b$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv97;->b:Lcom/transsion/widgetsmotionlibrary/b;

    iput-object p2, p0, Lv97;->c:Lcom/transsion/widgetsmotionlibrary/b$c;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lv97;->b:Lcom/transsion/widgetsmotionlibrary/b;

    iget-object p0, p0, Lv97;->c:Lcom/transsion/widgetsmotionlibrary/b$c;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/widgetsmotionlibrary/b;->a(Lcom/transsion/widgetsmotionlibrary/b;Lcom/transsion/widgetsmotionlibrary/b$c;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
