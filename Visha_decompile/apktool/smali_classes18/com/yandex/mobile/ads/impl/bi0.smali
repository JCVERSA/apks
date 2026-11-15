.class public final Lcom/yandex/mobile/ads/impl/bi0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lt33;->c:Lt33$a;

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lv33;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide v1

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v3}, Lt33;->D(JLkotlin/time/DurationUnit;)I

    move-result v1

    sput v1, Lcom/yandex/mobile/ads/impl/bi0;->a:I

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lv33;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide v1

    invoke-static {v1, v2, v3}, Lt33;->D(JLkotlin/time/DurationUnit;)I

    move-result v1

    sput v1, Lcom/yandex/mobile/ads/impl/bi0;->b:I

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lv33;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1, v3}, Lt33;->D(JLkotlin/time/DurationUnit;)I

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/impl/bi0;->a:I

    return v0
.end method
