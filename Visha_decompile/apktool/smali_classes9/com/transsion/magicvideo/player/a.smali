.class public final synthetic Lcom/transsion/magicvideo/player/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/PlayerStates;

.field public final synthetic c:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/player/a;->b:Lcom/transsion/dbdata/beans/PlayerStates;

    iput-object p2, p0, Lcom/transsion/magicvideo/player/a;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/player/a;->b:Lcom/transsion/dbdata/beans/PlayerStates;

    iget-object p0, p0, Lcom/transsion/magicvideo/player/a;->c:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$4;->c(Lcom/transsion/dbdata/beans/PlayerStates;Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    return-void
.end method
