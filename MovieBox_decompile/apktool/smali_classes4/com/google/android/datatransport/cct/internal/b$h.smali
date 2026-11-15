.class final Lcom/google/android/datatransport/cct/internal/b$h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ldc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$h;

.field private static final b:Ldc/b;

.field private static final c:Ldc/b;

.field private static final d:Ldc/b;

.field private static final e:Ldc/b;

.field private static final f:Ldc/b;

.field private static final g:Ldc/b;

.field private static final h:Ldc/b;

.field private static final i:Ldc/b;

.field private static final j:Ldc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->a:Lcom/google/android/datatransport/cct/internal/b$h;

    .line 7
    .line 8
    const-string v0, "eventTimeMs"

    .line 9
    .line 10
    invoke-static {v0}, Ldc/b;->d(Ljava/lang/String;)Ldc/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->b:Ldc/b;

    .line 15
    .line 16
    const-string v0, "eventCode"

    .line 17
    .line 18
    invoke-static {v0}, Ldc/b;->d(Ljava/lang/String;)Ldc/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->c:Ldc/b;

    .line 23
    .line 24
    const-string v0, "complianceData"

    .line 25
    .line 26
    invoke-static {v0}, Ldc/b;->d(Ljava/lang/String;)Ldc/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->d:Ldc/b;

    .line 31
    .line 32
    const-string v0, "eventUptimeMs"

    .line 33
    .line 34
    invoke-static {v0}, Ldc/b;->d(Ljava/lang/String;)Ldc/b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->e:Ldc/b;

    .line 39
    .line 40
    const-string v0, "sourceExtension"

    .line 41
    .line 42
    invoke-static {v0}, Ldc/b;->d(Ljava/lang/String;)Ldc/b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->f:Ldc/b;

    .line 47
    .line 48
    const-string v0, "sourceExtensionJsonProto3"

    .line 49
    .line 50
    invoke-static {v0}, Ldc/b;->d(Ljava/lang/String;)Ldc/b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->g:Ldc/b;

    .line 55
    .line 56
    const-string v0, "timezoneOffsetSeconds"

    .line 57
    .line 58
    invoke-static {v0}, Ldc/b;->d(Ljava/lang/String;)Ldc/b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->h:Ldc/b;

    .line 63
    .line 64
    const-string v0, "networkConnectionInfo"

    .line 65
    .line 66
    invoke-static {v0}, Ldc/b;->d(Ljava/lang/String;)Ldc/b;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->i:Ldc/b;

    .line 71
    .line 72
    const-string v0, "experimentIds"

    .line 73
    .line 74
    invoke-static {v0}, Ldc/b;->d(Ljava/lang/String;)Ldc/b;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->j:Ldc/b;

    .line 79
    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/datatransport/cct/internal/q;

    .line 2
    .line 3
    check-cast p2, Ldc/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$h;->b(Lcom/google/android/datatransport/cct/internal/q;Ldc/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/q;Ldc/d;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->b:Ldc/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface {p2, v0, v1, v2}, Ldc/d;->d(Ldc/b;J)Ldc/d;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->c:Ldc/b;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->c()Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p2, v0, v1}, Ldc/d;->a(Ldc/b;Ljava/lang/Object;)Ldc/d;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->d:Ldc/b;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->b()Lcom/google/android/datatransport/cct/internal/ComplianceData;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p2, v0, v1}, Ldc/d;->a(Ldc/b;Ljava/lang/Object;)Ldc/d;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->e:Ldc/b;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->e()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-interface {p2, v0, v1, v2}, Ldc/d;->d(Ldc/b;J)Ldc/d;

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->f:Ldc/b;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->h()[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p2, v0, v1}, Ldc/d;->a(Ldc/b;Ljava/lang/Object;)Ldc/d;

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->g:Ldc/b;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->i()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {p2, v0, v1}, Ldc/d;->a(Ldc/b;Ljava/lang/Object;)Ldc/d;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->h:Ldc/b;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->j()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    invoke-interface {p2, v0, v1, v2}, Ldc/d;->d(Ldc/b;J)Ldc/d;

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->i:Ldc/b;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->g()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {p2, v0, v1}, Ldc/d;->a(Ldc/b;Ljava/lang/Object;)Ldc/d;

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$h;->j:Ldc/b;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/q;->f()Lcom/google/android/datatransport/cct/internal/n;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p2, v0, p1}, Ldc/d;->a(Ldc/b;Ljava/lang/Object;)Ldc/d;

    .line 80
    .line 81
    .line 82
    return-void
.end method
