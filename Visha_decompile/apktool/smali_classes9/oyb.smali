.class public final synthetic Loyb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/adapter/SpeedAdapter$a;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/transsion/playercommon/widgets/SeekView;

.field public final synthetic d:Lcom/transsion/playercommon/adapter/SpeedAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Ljava/util/List;Lcom/transsion/playercommon/widgets/SeekView;Lcom/transsion/playercommon/adapter/SpeedAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loyb;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Loyb;->b:Ljava/util/List;

    iput-object p3, p0, Loyb;->c:Lcom/transsion/playercommon/widgets/SeekView;

    iput-object p4, p0, Loyb;->d:Lcom/transsion/playercommon/adapter/SpeedAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 3

    iget-object v0, p0, Loyb;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Loyb;->b:Ljava/util/List;

    iget-object v2, p0, Loyb;->c:Lcom/transsion/playercommon/widgets/SeekView;

    iget-object p0, p0, Loyb;->d:Lcom/transsion/playercommon/adapter/SpeedAdapter;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->X(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Ljava/util/List;Lcom/transsion/playercommon/widgets/SeekView;Lcom/transsion/playercommon/adapter/SpeedAdapter;I)V

    return-void
.end method
