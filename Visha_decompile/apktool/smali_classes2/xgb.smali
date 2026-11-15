.class public final Lxgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lww4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxgb$a;
    }
.end annotation


# instance fields
.field public a:Lcom/cloud/tupdate/bean/UpdateEntity;

.field public b:Ljava/lang/ref/WeakReference;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Map;

.field public e:Ljava/util/Map;

.field public f:Ltw4;

.field public g:Lxw4;

.field public h:Lyw4;

.field public i:Z

.field public j:Lvw4;

.field public k:Lcom/cloud/tupdate/dialog/DialogPosition;

.field public l:F

.field public m:Z

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/cloud/tupdate/dialog/DialogPosition;->MIDDLE:Lcom/cloud/tupdate/dialog/DialogPosition;

    iput-object v0, p0, Lxgb;->k:Lcom/cloud/tupdate/dialog/DialogPosition;

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lxgb;->n:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxgb;-><init>()V

    return-void
.end method

.method public static final synthetic k(Lxgb;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lxgb;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic l(Lxgb;F)V
    .locals 0

    iput p1, p0, Lxgb;->l:F

    return-void
.end method

.method public static final synthetic m(Lxgb;Lcom/cloud/tupdate/dialog/DialogPosition;)V
    .locals 0

    iput-object p1, p0, Lxgb;->k:Lcom/cloud/tupdate/dialog/DialogPosition;

    return-void
.end method

.method public static final synthetic n(Lxgb;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lxgb;->d:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic o(Lxgb;Ltw4;)V
    .locals 0

    iput-object p1, p0, Lxgb;->f:Ltw4;

    return-void
.end method

.method public static final synthetic p(Lxgb;Lxw4;)V
    .locals 0

    iput-object p1, p0, Lxgb;->g:Lxw4;

    return-void
.end method

.method public static final synthetic q(Lxgb;Lyw4;)V
    .locals 0

    iput-object p1, p0, Lxgb;->h:Lyw4;

    return-void
.end method

.method public static final synthetic r(Lxgb;Z)V
    .locals 0

    iput-boolean p1, p0, Lxgb;->m:Z

    return-void
.end method

.method public static final synthetic s(Lxgb;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lxgb;->e:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic t(Lxgb;Lcw4;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static final synthetic u(Lxgb;Z)V
    .locals 0

    iput-boolean p1, p0, Lxgb;->i:Z

    return-void
.end method

.method public static final synthetic v(Lxgb;Lvw4;)V
    .locals 0

    iput-object p1, p0, Lxgb;->j:Lvw4;

    return-void
.end method

.method public static final synthetic w(Lxgb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxgb;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic x(Lxgb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxgb;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Lrv4;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lxgb;->i(Lrv4;Z)V

    return-void
.end method

.method public B(Lrv4;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lww4$a;->b(Lww4;Lrv4;ZILjava/lang/Object;)V

    return-void
.end method

.method public C()V
    .locals 0

    invoke-virtual {p0}, Lxgb;->z()V

    return-void
.end method

.method public a(Ljava/lang/String;)Lcom/cloud/tupdate/bean/UpdateEntity;
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lxgb;->g:Lxw4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lxw4;->a(Ljava/lang/String;)Lcom/cloud/tupdate/bean/UpdateEntity;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lxgb;->a:Lcom/cloud/tupdate/bean/UpdateEntity;

    return-object v1
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lxgb;->m:Z

    return p0
.end method

.method public c(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V
    .locals 1

    const-string/jumbo v0, "updateEntity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lxgb;->h:Lyw4;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lyw4;->b(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    :goto_0
    return-void
.end method

.method public d()Lcw4;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lxgb;->i:Z

    return p0
.end method

.method public f()Lvw4;
    .locals 0

    iget-object p0, p0, Lxgb;->j:Lvw4;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxgb;->n:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lxgb;->b:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    :goto_0
    return-object p0
.end method

.method public h()Lcom/cloud/tupdate/dialog/DialogPosition;
    .locals 0

    iget-object p0, p0, Lxgb;->k:Lcom/cloud/tupdate/dialog/DialogPosition;

    return-object p0
.end method

.method public i(Lrv4;Z)V
    .locals 8

    iget-object v0, p0, Lxgb;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lxgb;->f:Ltw4;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lxgb;->c:Ljava/lang/String;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v3, p0, Lxgb;->d:Ljava/util/Map;

    iget-object v4, p0, Lxgb;->e:Ljava/util/Map;

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-interface/range {v1 .. v7}, Ltw4;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lww4;Lrv4;Z)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "[UpdateManager] : mUpdateUrl \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V
    .locals 1

    const-string/jumbo v0, "updateEntity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lxgb;->h:Lyw4;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Lyw4;->a(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;)V

    :goto_0
    return-void
.end method

.method public y()V
    .locals 4

    iget-object v0, p0, Lxgb;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lxgb;->f:Ltw4;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lxgb;->c:Ljava/lang/String;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v2, p0, Lxgb;->d:Ljava/util/Map;

    iget-object v3, p0, Lxgb;->e:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Ltw4;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lww4;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "[UpdateManager] : mUpdateUrl \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z()V
    .locals 1

    sget-object v0, Ldhb;->a:Ldhb;

    invoke-virtual {v0}, Ldhb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxgb;->y()V

    :cond_0
    return-void
.end method
