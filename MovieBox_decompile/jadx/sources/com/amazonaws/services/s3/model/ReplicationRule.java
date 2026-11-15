package com.amazonaws.services.s3.model;

public class ReplicationRule {

    private String f18176a;

    private String f18177b;

    private ReplicationDestinationConfig f18178c;

    public void a(ReplicationDestinationConfig replicationDestinationConfig) {
        if (replicationDestinationConfig == null) {
            throw new IllegalArgumentException("Destination cannot be null in the replication rule");
        }
        this.f18178c = replicationDestinationConfig;
    }

    public void b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Prefix cannot be null for a replication rule");
        }
        this.f18176a = str;
    }

    public void c(String str) {
        this.f18177b = str;
    }
}
