.class public final synthetic Lq2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2c;->b:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    iput-wide p2, p0, Lq2c;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lq2c;->b:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    iget-wide v1, p0, Lq2c;->c:J

    invoke-static {v0, v1, v2}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->Q(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;J)V

    return-void
.end method
