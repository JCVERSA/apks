.class public interface abstract Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a$b;

.field public static final b:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a$b;->a:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a$b;

    sput-object v0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;->a:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a$b;

    new-instance v0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a$a;

    invoke-direct {v0}, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a$a;-><init>()V

    sput-object v0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;->b:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;

    return-void
.end method


# virtual methods
.method public abstract reportEvent(Ljava/lang/String;Ljava/util/Map;)V
.end method
