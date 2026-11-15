.class public final synthetic Lrm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/widgets/LrcViewNew$OnTapListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrm4;->a:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    return-void
.end method


# virtual methods
.method public final onTap(Lcom/transsion/audio/widgets/LrcViewNew;FF)V
    .locals 0

    iget-object p0, p0, Lrm4;->a:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->b(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Lcom/transsion/audio/widgets/LrcViewNew;FF)V

    return-void
.end method
