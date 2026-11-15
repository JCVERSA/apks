.class public Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$b;
.super Luob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b1(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$b;->c:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-boolean p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$b;->b:Z

    invoke-direct {p0}, Luob;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$b;->c:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$b;->b:Z

    invoke-static {p1, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->F0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
