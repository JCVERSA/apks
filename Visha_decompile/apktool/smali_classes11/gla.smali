.class public final synthetic Lgla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iput-wide p2, p0, Lgla;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lgla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iget-wide v1, p0, Lgla;->c:J

    invoke-static {v0, v1, v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->w(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;J)V

    return-void
.end method
