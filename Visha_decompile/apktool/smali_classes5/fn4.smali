.class public final synthetic Lfn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfn4;->a:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    iput-object p2, p0, Lfn4;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lfn4;->a:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    iget-object p0, p0, Lfn4;->b:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->l(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Landroid/content/Context;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
