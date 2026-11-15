.class public interface abstract Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canBeExecuted(Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;)Z
    .param p1    # Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onAllHostsAttemptsFinished(Z)V
.end method

.method public abstract onHostAttemptFinished(Z)V
.end method
