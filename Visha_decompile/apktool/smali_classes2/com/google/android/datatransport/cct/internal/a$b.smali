.class public final Lcom/google/android/datatransport/cct/internal/a$b;
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
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/google/android/datatransport/cct/internal/a$b;

.field public static final b:Lvp3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/internal/a$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/a$b;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$b;->a:Lcom/google/android/datatransport/cct/internal/a$b;

    const-string v0, "logRequest"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/a$b;->b:Lvp3;

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

    check-cast p1, Lnd0;

    check-cast p2, Lzb7;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/a$b;->b(Lnd0;Lzb7;)V

    return-void
.end method

.method public b(Lnd0;Lzb7;)V
    .locals 0

    sget-object p0, Lcom/google/android/datatransport/cct/internal/a$b;->b:Lvp3;

    invoke-virtual {p1}, Lnd0;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lzb7;->e(Lvp3;Ljava/lang/Object;)Lzb7;

    return-void
.end method
