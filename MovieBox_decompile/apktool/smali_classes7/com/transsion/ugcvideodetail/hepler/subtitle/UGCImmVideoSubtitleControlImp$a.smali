.class public final Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->w(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$a;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$a;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->l(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSpeed()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$a;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->m(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp$a;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;->k(Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
