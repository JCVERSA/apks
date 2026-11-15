.class Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1$1;->this$1:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1$1;->this$1:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;

    iget-object p0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V

    return-void
.end method
