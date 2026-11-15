.class final Lcom/yandex/div/evaluable/types/DateTime$calendar$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/evaluable/types/DateTime;-><init>(JLjava/util/TimeZone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/Calendar;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yandex/div/evaluable/types/DateTime;


# direct methods
.method public constructor <init>(Lcom/yandex/div/evaluable/types/DateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/evaluable/types/DateTime$calendar$2;->this$0:Lcom/yandex/div/evaluable/types/DateTime;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/evaluable/types/DateTime$calendar$2;->invoke()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/Calendar;
    .locals 3

    .line 2
    invoke-static {}, Lcom/yandex/div/evaluable/types/DateTime;->a()Ljava/util/SimpleTimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/evaluable/types/DateTime$calendar$2;->this$0:Lcom/yandex/div/evaluable/types/DateTime;

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/types/DateTime;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method
