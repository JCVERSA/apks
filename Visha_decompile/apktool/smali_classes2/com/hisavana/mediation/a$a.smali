.class public Lcom/hisavana/mediation/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/mediation/a;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/a$a;->a:Lcom/hisavana/mediation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired(Lcom/hisavana/common/interfacz/ICacheAd;)V
    .locals 1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "CacheHandler"

    const-string v0, "ad expired"

    invoke-virtual {p0, p1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
