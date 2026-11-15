.class public final synthetic Lk10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk10;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk10;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->f(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
