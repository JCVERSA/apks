.class public final Lfm2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfm2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfm2;

    invoke-direct {v0}, Lfm2;-><init>()V

    sput-object v0, Lfm2;->a:Lfm2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lzb9;)Lac9;
    .locals 0

    const-string p1, "context"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lcom/yandex/div/histogram/a;)Lcom/yandex/div/internal/viewpool/ViewCreator;
    .locals 1

    const-string v0, "cpuUsageHistogramReporter"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/internal/viewpool/ViewCreator;

    invoke-direct {v0, p0}, Lcom/yandex/div/internal/viewpool/ViewCreator;-><init>(Lcom/yandex/div/histogram/a;)V

    return-object v0
.end method
