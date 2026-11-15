.class public final Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lwj/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->c(Lcom/transsion/memberapi/MemberCheckResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$b;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwj/g$a;->a(Lwj/g;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onFail()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/player/longvideo/member/k;->a:Lcom/transsion/player/longvideo/member/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$b;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> llUnlockBtn{} --> \u4e09\u5408\u4e00\u5f39\u7a97 \u5931\u8d25"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/member/k;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$b;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$unlock(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/player/longvideo/member/k;->a:Lcom/transsion/player/longvideo/member/k;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$b;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " --> showTreasureDialog() --> \u4e09\u5408\u4e00\u5f39\u7a97 \u6210\u529f"

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/member/k;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
