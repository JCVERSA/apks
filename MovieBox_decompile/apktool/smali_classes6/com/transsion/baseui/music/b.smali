.class public final synthetic Lcom/transsion/baseui/music/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/music/MusicFloatManager;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/music/MusicFloatManager;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baseui/music/b;->a:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/baseui/music/b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/music/b;->a:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baseui/music/b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/transsion/baseui/music/MusicFloatManager;->a(Lcom/transsion/baseui/music/MusicFloatManager;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
