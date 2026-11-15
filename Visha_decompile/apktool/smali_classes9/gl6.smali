.class public final synthetic Lgl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;


# instance fields
.field public final synthetic a:Lcom/transsion/mediasession/MediaSessionService;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl6;->a:Lcom/transsion/mediasession/MediaSessionService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lgl6;->a:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->f(Lcom/transsion/mediasession/MediaSessionService;Ljava/util/ArrayList;)V

    return-void
.end method
