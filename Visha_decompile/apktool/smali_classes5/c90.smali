.class public final synthetic Lc90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc90;->b:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lc90;->b:Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;

    invoke-static {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->c(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;)V

    return-void
.end method
