.class public final synthetic Ln90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/BaseBottomBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln90;->b:Lcom/transsion/playercommon/widgets/BaseBottomBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ln90;->b:Lcom/transsion/playercommon/widgets/BaseBottomBar;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->b(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V

    return-void
.end method
