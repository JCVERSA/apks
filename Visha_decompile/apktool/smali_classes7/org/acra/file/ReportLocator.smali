.class public final Lorg/acra/file/ReportLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/file/ReportLocator$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/acra/file/ReportLocator$a;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/acra/file/ReportLocator$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/file/ReportLocator$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/file/ReportLocator;->b:Lorg/acra/file/ReportLocator$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/file/ReportLocator;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 2

    iget-object p0, p0, Lorg/acra/file/ReportLocator;->a:Landroid/content/Context;

    const-string v0, "ACRA-approved"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v0, "context.getDir(APPROVED_\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b()[Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Lorg/acra/file/ReportLocator;->a()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Lorg/acra/file/ReportLocator$special$$inlined$sortedBy$1;

    invoke-direct {v1}, Lorg/acra/file/ReportLocator$special$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, v1}, Lhi;->L0([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/Collection;

    new-array v1, v0, [Ljava/io/File;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    if-nez p0, :cond_1

    :cond_0
    new-array p0, v0, [Ljava/io/File;

    :cond_1
    return-object p0
.end method

.method public final c()Ljava/io/File;
    .locals 2

    iget-object p0, p0, Lorg/acra/file/ReportLocator;->a:Landroid/content/Context;

    const-string v0, "ACRA-unapproved"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v0, "context.getDir(UNAPPROVE\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d()[Ljava/io/File;
    .locals 0

    invoke-virtual {p0}, Lorg/acra/file/ReportLocator;->c()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :cond_0
    return-object p0
.end method
