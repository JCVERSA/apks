.class public final synthetic Lvv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/service/MusicService;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/service/MusicService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvv6;->b:Lcom/transsion/audio/service/MusicService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lvv6;->b:Lcom/transsion/audio/service/MusicService;

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/audio/service/MusicService;->c(Lcom/transsion/audio/service/MusicService;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
