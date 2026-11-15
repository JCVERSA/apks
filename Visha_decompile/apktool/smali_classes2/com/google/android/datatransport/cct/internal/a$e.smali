.class public final Lcom/google/android/datatransport/cct/internal/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Lcom/google/android/datatransport/cct/internal/a$e;

.field public static final b:Lvp3;

.field public static final c:Lvp3;

.field public static final d:Lvp3;

.field public static final e:Lvp3;

.field public static final f:Lvp3;

.field public static final g:Lvp3;

.field public static final h:Lvp3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/internal/a$e;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/a$e;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$e;->a:Lcom/google/android/datatransport/cct/internal/a$e;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$e;->b:Lvp3;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$e;->c:Lvp3;

    const-string v0, "clientInfo"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$e;->d:Lvp3;

    const-string v0, "logSource"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$e;->e:Lvp3;

    const-string v0, "logSourceName"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$e;->f:Lvp3;

    const-string v0, "logEvent"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$e;->g:Lvp3;

    const-string v0, "qosTier"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$e;->h:Lvp3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lxp5;

    check-cast p2, Lzb7;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/a$e;->b(Lxp5;Lzb7;)V

    return-void
.end method

.method public b(Lxp5;Lzb7;)V
    .locals 2

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$e;->b:Lvp3;

    invoke-virtual {p1}, Lxp5;->g()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lzb7;->d(Lvp3;J)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$e;->c:Lvp3;

    invoke-virtual {p1}, Lxp5;->h()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lzb7;->d(Lvp3;J)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$e;->d:Lvp3;

    invoke-virtual {p1}, Lxp5;->b()Lcom/google/android/datatransport/cct/internal/ClientInfo;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$e;->e:Lvp3;

    invoke-virtual {p1}, Lxp5;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$e;->f:Lvp3;

    invoke-virtual {p1}, Lxp5;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$e;->g:Lvp3;

    invoke-virtual {p1}, Lxp5;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$e;->h:Lvp3;

    invoke-virtual {p1}, Lxp5;->f()Lcom/google/android/datatransport/cct/internal/QosTier;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    return-void
.end method
