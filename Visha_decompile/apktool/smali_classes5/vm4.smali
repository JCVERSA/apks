.class public final synthetic Lvm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/GestureUtil$ScorllToListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvm4;->a:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    return-void
.end method


# virtual methods
.method public final scrollTo(I)V
    .locals 0

    iget-object p0, p0, Lvm4;->a:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->t(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;I)V

    return-void
.end method
