.class public Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lyi5;

.field public final d:Lyi5;

.field public final e:Lyi5;

.field public final f:Lyi5;

.field public final g:Lyi5;

.field public final h:Lyi5;

.field public final i:Lyi5;

.field public final j:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->k:Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->b:Ljava/lang/String;

    new-instance p1, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$tmpsId$2;

    invoke-direct {p1, p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$tmpsId$2;-><init>(Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->c:Lyi5;

    new-instance p1, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$tmpsUniqueId$2;

    invoke-direct {p1, p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$tmpsUniqueId$2;-><init>(Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->d:Lyi5;

    new-instance p1, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$mcc$2;

    invoke-direct {p1, p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$mcc$2;-><init>(Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->e:Lyi5;

    sget-object p1, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$deviceName$2;->INSTANCE:Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$deviceName$2;

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->f:Lyi5;

    new-instance p1, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$appVersionName$2;

    invoke-direct {p1, p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$appVersionName$2;-><init>(Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->g:Lyi5;

    sget-object p1, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$osVersion$2;->INSTANCE:Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$osVersion$2;

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->h:Lyi5;

    sget-object p1, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$language$2;->INSTANCE:Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$language$2;

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->i:Lyi5;

    new-instance p1, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$appSignature$2;

    invoke-direct {p1, p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider$appSignature$2;-><init>(Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->j:Lyi5;

    return-void
.end method

.method public static final synthetic n(Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->A()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->z()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAppVAID(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public i()Z
    .locals 0

    invoke-static {p0}, Lqe$a;->a(Lqe;)Z

    move-result p0

    return p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->b:Ljava/lang/String;

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getGAId(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->j:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->g:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final s()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .locals 7

    const-string v0, "DefaultAppInfoProvider"

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "getContentResolver(...)"

    invoke-static {v1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content://com.hoffnung.DeviceInfoProvider"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p0, "parse(this)"

    invoke-static {v2, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "cpuid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    sget-object v2, Loq5;->a:Loq5;

    const-string v3, "get cpuid error,cursor is null"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v1, v2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :goto_2
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    sget-object v2, Loq5;->a:Loq5;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-object p0
.end method

.method public final u()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->f:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->i:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final w()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->e:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final x()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->h:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final y(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "DefaultAppInfoProvider"

    const-string v1, ""

    :try_start_0
    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://com.hoffnung.DeviceInfoProvider2"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string p0, "parse(this)"

    invoke-static {v3, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object p1, p0

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_1
    sget-object p1, Loq5;->a:Loq5;

    const-string v2, "get tpmsId error,cursor is null"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    invoke-static {p0, p1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {p0, p1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    sget-object p1, Loq5;->a:Loq5;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-object v1
.end method

.method public final z()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/clouddrive/sdk/DefaultAppInfoProvider;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
