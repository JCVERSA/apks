.class public final synthetic Lnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioCarousel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioCarousel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnn;->b:Lcom/transsion/audio/widgets/AudioCarousel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lnn;->b:Lcom/transsion/audio/widgets/AudioCarousel;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioCarousel;->a(Lcom/transsion/audio/widgets/AudioCarousel;)V

    return-void
.end method
