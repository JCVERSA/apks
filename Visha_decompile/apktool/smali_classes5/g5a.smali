.class public final synthetic Lg5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lg5a;->b:Lcom/transsion/aicore/nexusflow/client/SubtitleManager;

    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/client/SubtitleManager;->a(Lcom/transsion/aicore/nexusflow/client/SubtitleManager;)V

    return-void
.end method
