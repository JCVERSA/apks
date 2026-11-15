.class public final synthetic Ll90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/BaseBottomBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll90;->b:Lcom/transsion/playercommon/widgets/BaseBottomBar;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Ll90;->b:Lcom/transsion/playercommon/widgets/BaseBottomBar;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->d(Lcom/transsion/playercommon/widgets/BaseBottomBar;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
