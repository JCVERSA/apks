.class public final synthetic Lcn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn4;->b:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcn4;->b:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->k(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
