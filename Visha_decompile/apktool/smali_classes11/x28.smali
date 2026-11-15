.class public final synthetic Lx28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/fragments/PlayBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx28;->b:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lx28;->b:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->S(Lcom/transsion/playercommon/fragments/PlayBaseFragment;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
