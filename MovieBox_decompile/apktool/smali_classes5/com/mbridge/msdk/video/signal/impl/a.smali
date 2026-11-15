.class public abstract Lcom/mbridge/msdk/video/signal/impl/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/video/signal/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/signal/impl/a$a;,
        Lcom/mbridge/msdk/video/signal/impl/a$b;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Ljava/lang/String;

.field protected k:Lcom/mbridge/msdk/videocommon/setting/c;

.field protected l:Lcom/mbridge/msdk/click/a;

.field public m:Lcom/mbridge/msdk/video/signal/a$a;

.field protected n:I

.field protected o:I

.field private p:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field private q:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private r:Lcom/iab/omid/library/mmadbridge/adsession/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    .line 8
    .line 9
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->c:I

    .line 10
    .line 11
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->d:I

    .line 12
    .line 13
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->e:I

    .line 14
    .line 15
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->f:I

    .line 16
    .line 17
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->g:I

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->h:I

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->i:I

    .line 24
    .line 25
    new-instance v0, Lcom/mbridge/msdk/video/signal/impl/a$a;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/mbridge/msdk/video/signal/impl/a$a;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->m:Lcom/mbridge/msdk/video/signal/a$a;

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->n:I

    .line 34
    .line 35
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->o:I

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->p:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->q:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->i:I

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statistics,type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",json:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultJSCommon"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mbridge/msdk/video/signal/a$a;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTrackingListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->m:Lcom/mbridge/msdk/video/signal/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 8
    const-string p1, "DefaultJSCommon"

    const-string v0, "setNotchArea"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsShowingTransparent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->g:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->c:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->a:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 2
    const-string v0, "DefaultJSCommon"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string v0, "{}"

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->e:I

    return-void
.end method

.method public click(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "click:type"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ",pt:"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "DefaultJSCommon"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public d()I
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlertDialogRole "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->h:I

    return v0
.end method

.method public d(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlertDialogRole "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultJSCommon"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->h:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 2
    const-string v0, "DefaultJSCommon"

    const-string v1, "getNotchArea"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->d:I

    return-void
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p1, "DefaultJSCommon"

    const-string v0, "getSDKInfo"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string p1, "{}"

    return-object p1
.end method

.method public f()V
    .locals 2

    .line 3
    const-string v0, "DefaultJSCommon"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "{}"

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->n:I

    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public handlerH5Exception(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "handlerH5Exception,code="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ",msg:"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "DefaultJSCommon"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public j()Lcom/iab/omid/library/mmadbridge/adsession/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->p:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->c:I

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->c:I

    .line 13
    .line 14
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->d:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->d:I

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->d:I

    .line 13
    .line 14
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->e:I

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->e:I

    .line 13
    .line 14
    return v0
.end method

.method public o()Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->q:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public release()V
    .locals 2

    .line 1
    const-string v0, "DefaultJSCommon"

    .line 2
    .line 3
    const-string v1, "release"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->l:Lcom/mbridge/msdk/click/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->l:Lcom/mbridge/msdk/click/a;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/impl/a;->l:Lcom/mbridge/msdk/click/a;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mbridge/msdk/click/a;->c()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string p1, "DefaultJSCommon"

    .line 2
    .line 3
    const-string v0, "setActivity "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->r:Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 2
    .line 3
    return-void
.end method

.method public setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->p:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 2
    .line 3
    return-void
.end method

.method public setRewardUnitSetting(Lcom/mbridge/msdk/videocommon/setting/c;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setSetting:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DefaultJSCommon"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->k:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 24
    .line 25
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setUnitId:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DefaultJSCommon"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->j:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->q:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 2
    .line 3
    return-void
.end method

.method public setWebViewFront(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/a;->g:I

    .line 2
    .line 3
    return-void
.end method
