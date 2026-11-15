.class public final synthetic Lyq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/adapter/AudioItemAdapter;

.field public final synthetic c:Lcom/chad/library/adapter/base/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/adapter/AudioItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyq;->b:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iput-object p2, p0, Lyq;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lyq;->b:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object p0, p0, Lyq;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->A(Lcom/transsion/audio/adapter/AudioItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
