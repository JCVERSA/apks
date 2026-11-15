.class public final synthetic Leaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/player/c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/player/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leaa;->b:Lcom/transsion/playercommon/player/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Leaa;->b:Lcom/transsion/playercommon/player/c;

    invoke-static {p0}, Lcom/transsion/playercommon/player/c;->U(Lcom/transsion/playercommon/player/c;)V

    return-void
.end method
