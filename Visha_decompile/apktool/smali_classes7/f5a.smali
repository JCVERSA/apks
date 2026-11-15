.class public final synthetic Lf5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic b:Lcom/transsion/livecaption/client/SubtitleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/livecaption/client/SubtitleManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5a;->b:Lcom/transsion/livecaption/client/SubtitleManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lf5a;->b:Lcom/transsion/livecaption/client/SubtitleManager;

    invoke-static {p0}, Lcom/transsion/livecaption/client/SubtitleManager;->a(Lcom/transsion/livecaption/client/SubtitleManager;)V

    return-void
.end method
