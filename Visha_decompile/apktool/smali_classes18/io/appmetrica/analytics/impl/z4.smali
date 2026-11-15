.class public final Lio/appmetrica/analytics/impl/z4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/h4;)Lio/appmetrica/analytics/impl/x4;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/h4;->e:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    sget-object v0, Lio/appmetrica/analytics/impl/y4;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Lio/appmetrica/analytics/impl/rc;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/rc;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lio/appmetrica/analytics/impl/rc;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/rc;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lio/appmetrica/analytics/impl/uh;

    new-instance v0, Lio/appmetrica/analytics/impl/Hj;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Hj;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/uh;-><init>(Lio/appmetrica/analytics/impl/n5;)V

    goto :goto_0

    :pswitch_3
    new-instance p0, Lio/appmetrica/analytics/impl/uh;

    new-instance v0, Lio/appmetrica/analytics/impl/wh;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/wh;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/uh;-><init>(Lio/appmetrica/analytics/impl/n5;)V

    goto :goto_0

    :pswitch_4
    new-instance p0, Lio/appmetrica/analytics/impl/bj;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/bj;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p0, Lio/appmetrica/analytics/impl/Yi;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Yi;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance p0, Lio/appmetrica/analytics/impl/fc;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/fc;-><init>()V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
