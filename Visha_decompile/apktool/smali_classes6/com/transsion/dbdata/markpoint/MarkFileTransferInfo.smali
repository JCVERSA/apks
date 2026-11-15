.class public final Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

.field public static e:J

.field public static f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-direct {v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    const-string v0, "vd_more"

    sput-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/transsion/utils/deviceinfo/a;->d:Lcom/transsion/utils/deviceinfo/a$a;

    invoke-virtual {v0}, Lcom/transsion/utils/deviceinfo/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 12

    new-instance p0, Lhv0;

    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-direct {p0, v0, v1}, Lhv0;-><init>(CC)V

    new-instance v0, Lhv0;

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-direct {v0, v1, v2}, Lhv0;-><init>(CC)V

    invoke-static {p0, v0}, Li81;->H0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-instance v0, Lhv0;

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-direct {v0, v1, v2}, Lhv0;-><init>(CC)V

    invoke-static {p0, v0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lu15;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lu15;-><init>(II)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lq15;

    invoke-virtual {v1}, Lq15;->nextInt()I

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {v1, v2}, Li81;->L0(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->b:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final f()Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->d:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    return-object p0
.end method

.method public final g()J
    .locals 2

    sget-wide v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->e:J

    return-wide v0
.end method

.method public final h(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "mContext"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "mContext"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public final l(Ljava/lang/Integer;)V
    .locals 0

    sput-object p1, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->f:Ljava/lang/Integer;

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->k()V

    return-void
.end method

.method public final n(Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;)V
    .locals 0

    sput-object p1, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->d:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    if-eqz p1, :cond_0

    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p1}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->getPermission()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/markpoint/a$a;->m(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->e:J

    :cond_0
    return-void
.end method
