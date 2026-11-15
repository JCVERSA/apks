.class public final Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$typeMember$1$1$2$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$typeMember$1$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$typeMember$1$1$2$1$a;->a:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$typeMember$1$1$2$1$a;->a:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;->e0(Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;)Ljava/lang/String;

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
    const-string v1, " --> typeMember() --> onFailed() --> \u5f00\u901a\u4f1a\u5458\u5931\u8d25"

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
    invoke-virtual {v0, v1}, Lwj/h;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment$typeMember$1$1$2$1$a;->a:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;->f0(Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
