.class public final synthetic Lb90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb90;->b:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;

    iput-object p2, p0, Lb90;->c:Landroid/content/Context;

    iput-object p3, p0, Lb90;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lb90;->b:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;

    iget-object v1, p0, Lb90;->c:Landroid/content/Context;

    iget-object p0, p0, Lb90;->d:Landroid/content/Intent;

    invoke-static {v0, v1, p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->a(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
