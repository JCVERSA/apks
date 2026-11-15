.class public final Lio/appmetrica/analytics/impl/jg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Va;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/hg;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No class: com.android.installreferrer.api.InstallReferrerClient"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
