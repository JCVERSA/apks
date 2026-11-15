.class public final synthetic Lpyb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/SeekView$b;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic b:Lcom/transsion/playercommon/adapter/SpeedAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/playercommon/adapter/SpeedAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpyb;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lpyb;->b:Lcom/transsion/playercommon/adapter/SpeedAdapter;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lpyb;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p0, p0, Lpyb;->b:Lcom/transsion/playercommon/adapter/SpeedAdapter;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->s(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/playercommon/adapter/SpeedAdapter;ILjava/lang/String;)V

    return-void
.end method
