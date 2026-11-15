.class Lcom/mgtv/ssp/play/PlayerCore$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/authbase/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PlayerCore;->reStartPlay(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PlayerCore;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$chtoken:Ljava/lang/String;

.field final synthetic val$info:Lcom/mgtv/ssp/play/MediaInfo;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PlayerCore;Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$9;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    iput-object p2, p0, Lcom/mgtv/ssp/play/PlayerCore$9;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mgtv/ssp/play/PlayerCore$9;->val$info:Lcom/mgtv/ssp/play/MediaInfo;

    iput-object p4, p0, Lcom/mgtv/ssp/play/PlayerCore$9;->val$chtoken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$9;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$9;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore$9;->val$info:Lcom/mgtv/ssp/play/MediaInfo;

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$9;->val$chtoken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mgtv/ssp/play/PlayerCore;->prepare(Landroid/app/Activity;Lcom/mgtv/ssp/play/MediaInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
