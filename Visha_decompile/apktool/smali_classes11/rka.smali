.class public final Lrka;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/hisavana/mediation/ad/TNativeAd;

.field public final c:Lcom/hisavana/common/bean/TAdNativeInfo;

.field public final d:Ljava/lang/String;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(ILcom/hisavana/mediation/ad/TNativeAd;Lcom/hisavana/common/bean/TAdNativeInfo;Ljava/lang/String;)V
    .locals 1

    const-string v0, "nativeAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeInfo"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingId"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrka;->a:I

    iput-object p2, p0, Lrka;->b:Lcom/hisavana/mediation/ad/TNativeAd;

    iput-object p3, p0, Lrka;->c:Lcom/hisavana/common/bean/TAdNativeInfo;

    iput-object p4, p0, Lrka;->d:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lrka;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lrka;->e:I

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lrka;->f:Z

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lrka;->a:I

    return p0
.end method

.method public final d()Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 0

    iget-object p0, p0, Lrka;->b:Lcom/hisavana/mediation/ad/TNativeAd;

    return-object p0
.end method

.method public final e()Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 0

    iget-object p0, p0, Lrka;->c:Lcom/hisavana/common/bean/TAdNativeInfo;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lrka;->c:Lcom/hisavana/common/bean/TAdNativeInfo;

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lrka;->c:Lcom/hisavana/common/bean/TAdNativeInfo;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object p0, p0, Lrka;->b:Lcom/hisavana/mediation/ad/TNativeAd;

    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/TNativeAd;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lrka;->e:I

    return-void
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Lrka;->f:Z

    return-void
.end method
