.class public Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/GestureDetector;

.field public final synthetic c:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;Landroid/view/GestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$c;->c:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    iput-object p2, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$c;->b:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$c;->b:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method
