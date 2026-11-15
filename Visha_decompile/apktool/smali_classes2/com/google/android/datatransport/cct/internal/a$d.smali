.class public final Lcom/google/android/datatransport/cct/internal/a$d;
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
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/google/android/datatransport/cct/internal/a$d;

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

    new-instance v0, Lcom/google/android/datatransport/cct/internal/a$d;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/a$d;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$d;->a:Lcom/google/android/datatransport/cct/internal/a$d;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$d;->b:Lvp3;

    const-string v0, "eventCode"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$d;->c:Lvp3;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$d;->d:Lvp3;

    const-string/jumbo v0, "sourceExtension"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$d;->e:Lvp3;

    const-string/jumbo v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$d;->f:Lvp3;

    const-string/jumbo v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$d;->g:Lvp3;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$d;->h:Lvp3;

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

    check-cast p1, Lsp5;

    check-cast p2, Lzb7;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/a$d;->b(Lsp5;Lzb7;)V

    return-void
.end method

.method public b(Lsp5;Lzb7;)V
    .locals 2

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$d;->b:Lvp3;

    invoke-virtual {p1}, Lsp5;->c()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lzb7;->d(Lvp3;J)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$d;->c:Lvp3;

    invoke-virtual {p1}, Lsp5;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$d;->d:Lvp3;

    invoke-virtual {p1}, Lsp5;->d()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lzb7;->d(Lvp3;J)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$d;->e:Lvp3;

    invoke-virtual {p1}, Lsp5;->f()[B

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$d;->f:Lvp3;

    invoke-virtual {p1}, Lsp5;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$d;->g:Lvp3;

    invoke-virtual {p1}, Lsp5;->h()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lzb7;->d(Lvp3;J)Lzb7;

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$d;->h:Lvp3;

    invoke-virtual {p1}, Lsp5;->e()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    return-void
.end method
