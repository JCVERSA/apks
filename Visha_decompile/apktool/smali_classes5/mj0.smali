.class public final synthetic Lmj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/GestureUtil$ScorllToListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/BottomAudioBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmj0;->a:Lcom/transsion/audio/widgets/BottomAudioBar;

    return-void
.end method


# virtual methods
.method public final scrollTo(I)V
    .locals 0

    iget-object p0, p0, Lmj0;->a:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->z(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    return-void
.end method
