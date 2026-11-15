.class public final synthetic Lhc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;

    iput-wide p2, p0, Lhc4;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lhc4;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;

    iget-wide v1, p0, Lhc4;->c:J

    invoke-static {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->b(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;J)V

    return-void
.end method
