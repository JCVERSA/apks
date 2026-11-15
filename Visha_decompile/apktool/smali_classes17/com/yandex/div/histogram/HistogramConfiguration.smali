.class public interface abstract Lcom/yandex/div/histogram/HistogramConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loq4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/histogram/HistogramConfiguration$a;,
        Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div/histogram/HistogramConfiguration$a;

.field public static final b:Lcom/yandex/div/histogram/HistogramConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/histogram/HistogramConfiguration$a;->a:Lcom/yandex/div/histogram/HistogramConfiguration$a;

    sput-object v0, Lcom/yandex/div/histogram/HistogramConfiguration;->a:Lcom/yandex/div/histogram/HistogramConfiguration$a;

    new-instance v0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;

    invoke-direct {v0}, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;-><init>()V

    sput-object v0, Lcom/yandex/div/histogram/HistogramConfiguration;->b:Lcom/yandex/div/histogram/HistogramConfiguration;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Loj8;
.end method

.method public abstract g()Loj8;
.end method

.method public abstract h()Loj8;
.end method
