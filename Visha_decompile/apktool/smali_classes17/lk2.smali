.class public final Llk2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llk2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llk2;

    invoke-direct {v0}, Llk2;-><init>()V

    sput-object v0, Llk2;->a:Llk2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lsq4;)Lrq4;
    .locals 0

    const-string p0, "histogramReporterDelegate"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/div/core/dagger/DivHistogramsModuleKt;->a(Lsq4;)Lrq4;

    move-result-object p0

    return-object p0
.end method
