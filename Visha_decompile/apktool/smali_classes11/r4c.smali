.class public final synthetic Lr4c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4c;->a:Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lr4c;->a:Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;

    check-cast p1, Lwoc;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;->a(Lcom/transsion/playercommon/widgets/VideoPlayerSpeedChooserView;Lwoc;)V

    return-void
.end method
