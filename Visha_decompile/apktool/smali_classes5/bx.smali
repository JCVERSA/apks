.class public final synthetic Lbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbx;->b:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    iput-object p2, p0, Lbx;->c:Ljava/lang/String;

    iput-object p3, p0, Lbx;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbx;->b:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    iget-object v1, p0, Lbx;->c:Ljava/lang/String;

    iget-object p0, p0, Lbx;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->e(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
