.class public final Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a(Lcom/transsion/memberapi/MemberCheckResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

.field final synthetic b:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/player/longvideo/member/k;->a:Lcom/transsion/player/longvideo/member/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

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
    const-string v1, " --> llUnlockBtn{} --> ka\u5f00\u901a\u4f1a\u5458\u5931\u8d25 --> \u5546\u4e1a\u5316\u903b\u8f91"

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
    sget-object v2, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v0, "getSupportFragmentManager(...)"

    .line 38
    .line 39
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v4, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR:Lcom/transsion/memberapi/MemberSource;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getBean$p(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Lln/a;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getPageName$p(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    new-instance v7, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a$a;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 59
    .line 60
    invoke-direct {v7, v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a$a;-><init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->i(Landroidx/fragment/app/FragmentManager;Lcom/transsion/memberapi/MemberSource;Lln/a;Ljava/lang/String;Lnw/e;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$unlock(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/player/longvideo/member/k;->a:Lcom/transsion/player/longvideo/member/k;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

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
    const-string v1, " --> llUnlockBtn{} --> ka\u5f00\u901a\u4f1a\u5458\u6210\u529f"

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
