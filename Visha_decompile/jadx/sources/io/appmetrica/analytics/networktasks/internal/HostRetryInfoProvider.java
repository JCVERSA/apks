package io.appmetrica.analytics.networktasks.internal;

public interface HostRetryInfoProvider {
    long getLastAttemptTimeSeconds();

    int getNextSendAttemptNumber();

    void saveLastAttemptTimeSeconds(long j);

    void saveNextSendAttemptNumber(int i);
}
