.class public final Lio/appmetrica/analytics/impl/vl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/xl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/xl;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/xl;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/vl;->a:Lio/appmetrica/analytics/impl/xl;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/internal/IdentifiersResult;)Lio/appmetrica/analytics/StartupParamsItem;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/StartupParamsItem;

    iget-object v1, p1, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/vl;->a:Lio/appmetrica/analytics/impl/xl;

    iget-object v2, p1, Lio/appmetrica/analytics/internal/IdentifiersResult;->status:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lio/appmetrica/analytics/impl/wl;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p0, p0, v2

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lio/appmetrica/analytics/StartupParamsItemStatus;->UNKNOWN_ERROR:Lio/appmetrica/analytics/StartupParamsItemStatus;

    goto :goto_0

    :pswitch_0
    sget-object p0, Lio/appmetrica/analytics/StartupParamsItemStatus;->FORBIDDEN_BY_CLIENT_CONFIG:Lio/appmetrica/analytics/StartupParamsItemStatus;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lio/appmetrica/analytics/StartupParamsItemStatus;->FEATURE_DISABLED:Lio/appmetrica/analytics/StartupParamsItemStatus;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lio/appmetrica/analytics/StartupParamsItemStatus;->NETWORK_ERROR:Lio/appmetrica/analytics/StartupParamsItemStatus;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lio/appmetrica/analytics/StartupParamsItemStatus;->INVALID_VALUE_FROM_PROVIDER:Lio/appmetrica/analytics/StartupParamsItemStatus;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lio/appmetrica/analytics/StartupParamsItemStatus;->PROVIDER_UNAVAILABLE:Lio/appmetrica/analytics/StartupParamsItemStatus;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lio/appmetrica/analytics/StartupParamsItemStatus;->OK:Lio/appmetrica/analytics/StartupParamsItemStatus;

    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/internal/IdentifiersResult;->errorExplanation:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lio/appmetrica/analytics/StartupParamsItem;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/StartupParamsItemStatus;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
