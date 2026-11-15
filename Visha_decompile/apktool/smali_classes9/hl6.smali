.class public final synthetic Lhl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/mediasession/MediaSessionService;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl6;->b:Lcom/transsion/mediasession/MediaSessionService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lhl6;->b:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->e(Lcom/transsion/mediasession/MediaSessionService;)V

    return-void
.end method
