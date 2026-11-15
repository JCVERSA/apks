.class public final Lcom/yandex/div2/DivVisibilityAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;
.implements Lwp2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivVisibilityAction$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/yandex/div2/DivVisibilityAction$a;

.field public static final n:Lcom/yandex/div/json/expressions/Expression;

.field public static final o:Lcom/yandex/div/json/expressions/Expression;

.field public static final p:Lcom/yandex/div/json/expressions/Expression;

.field public static final q:Lcom/yandex/div/json/expressions/Expression;

.field public static final r:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivDownloadCallbacks;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public final d:Lcom/yandex/div/json/expressions/Expression;

.field public final e:Lorg/json/JSONObject;

.field public final f:Lcom/yandex/div/json/expressions/Expression;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/yandex/div2/DivActionTyped;

.field public final i:Lcom/yandex/div/json/expressions/Expression;

.field public final j:Lcom/yandex/div/json/expressions/Expression;

.field public final k:Lcom/yandex/div/json/expressions/Expression;

.field public l:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivVisibilityAction$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivVisibilityAction$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivVisibilityAction;->m:Lcom/yandex/div2/DivVisibilityAction$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivVisibilityAction;->n:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivVisibilityAction;->o:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x320

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivVisibilityAction;->p:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivVisibilityAction;->q:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivVisibilityAction$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivVisibilityAction$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivVisibilityAction;->r:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivDownloadCallbacks;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lorg/json/JSONObject;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 1

    const-string v0, "isEnabled"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logLimit"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityDuration"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityPercentage"

    invoke-static {p11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivVisibilityAction;->a:Lcom/yandex/div2/DivDownloadCallbacks;

    iput-object p2, p0, Lcom/yandex/div2/DivVisibilityAction;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p3, p0, Lcom/yandex/div2/DivVisibilityAction;->c:Lcom/yandex/div/json/expressions/Expression;

    iput-object p4, p0, Lcom/yandex/div2/DivVisibilityAction;->d:Lcom/yandex/div/json/expressions/Expression;

    iput-object p5, p0, Lcom/yandex/div2/DivVisibilityAction;->e:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/yandex/div2/DivVisibilityAction;->f:Lcom/yandex/div/json/expressions/Expression;

    iput-object p7, p0, Lcom/yandex/div2/DivVisibilityAction;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/yandex/div2/DivVisibilityAction;->h:Lcom/yandex/div2/DivActionTyped;

    iput-object p9, p0, Lcom/yandex/div2/DivVisibilityAction;->i:Lcom/yandex/div/json/expressions/Expression;

    iput-object p10, p0, Lcom/yandex/div2/DivVisibilityAction;->j:Lcom/yandex/div/json/expressions/Expression;

    iput-object p11, p0, Lcom/yandex/div2/DivVisibilityAction;->k:Lcom/yandex/div/json/expressions/Expression;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/div2/DivDownloadCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->a:Lcom/yandex/div2/DivDownloadCallbacks;

    return-object p0
.end method

.method public b()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->c:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public c()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->d:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public d()Lcom/yandex/div2/DivActionTyped;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->h:Lcom/yandex/div2/DivActionTyped;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->g:Ljava/lang/String;

    return-object p0
.end method

.method public f()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->f:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public final g(Lcom/yandex/div2/DivVisibilityAction;Loj3;Loj3;)Z
    .locals 7

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->a()Lcom/yandex/div2/DivDownloadCallbacks;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->a()Lcom/yandex/div2/DivDownloadCallbacks;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivDownloadCallbacks;->a(Lcom/yandex/div2/DivDownloadCallbacks;Loj3;Loj3;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->a()Lcom/yandex/div2/DivDownloadCallbacks;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->isEnabled()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->isEnabled()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v1, v3, :cond_9

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->getPayload()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->getPayload()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->d()Lcom/yandex/div2/DivActionTyped;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->d()Lcom/yandex/div2/DivActionTyped;

    move-result-object v4

    invoke-virtual {v1, v4, p2, p3}, Lcom/yandex/div2/DivActionTyped;->a(Lcom/yandex/div2/DivActionTyped;Loj3;Loj3;)Z

    move-result v1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->d()Lcom/yandex/div2/DivActionTyped;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->getUrl()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_4

    :cond_7
    move-object v1, v3

    :goto_4
    invoke-virtual {p1}, Lcom/yandex/div2/DivVisibilityAction;->getUrl()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    :cond_8
    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/yandex/div2/DivVisibilityAction;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p1, Lcom/yandex/div2/DivVisibilityAction;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object p0, p1, Lcom/yandex/div2/DivVisibilityAction;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_9

    move v0, v2

    :cond_9
    return v0
.end method

.method public getPayload()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->e:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getUrl()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->i:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public hash()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div2/DivVisibilityAction;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivVisibilityAction;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->a()Lcom/yandex/div2/DivDownloadCallbacks;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div2/DivDownloadCallbacks;->hash()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->isEnabled()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->getPayload()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->d()Lcom/yandex/div2/DivActionTyped;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/yandex/div2/DivActionTyped;->hash()I

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yandex/div2/DivVisibilityAction;->getUrl()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/yandex/div2/DivVisibilityAction;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivVisibilityAction;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivVisibilityAction;->l:Ljava/lang/Integer;

    return v0
.end method

.method public isEnabled()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->b:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/l5$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/l5$b;->e(Lex7;Lcom/yandex/div2/DivVisibilityAction;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
