package org.chromium.net;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.chromium.net.a;
import org.json.JSONException;
import org.json.JSONObject;

public final class a extends ICronetEngineBuilder {
    public static final Set d = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 3)));
    public JSONObject a;
    public final List b = new ArrayList();
    public final ICronetEngineBuilder c;

    public interface InterfaceC0435a {
        void a(JSONObject jSONObject);
    }

    public a(ICronetEngineBuilder iCronetEngineBuilder) {
        this.c = iCronetEngineBuilder;
    }

    public static JSONObject d(JSONObject jSONObject, String str) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
            try {
                jSONObject.put(str, jSONObjectOptJSONObject);
            } catch (JSONException e) {
                throw new IllegalArgumentException("Failed adding a default object for key [" + str + "]", e);
            }
        }
        return jSONObjectOptJSONObject;
    }

    public static void e(ConnectionMigrationOptions connectionMigrationOptions, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectD = d(jSONObject, "QUIC");
        if (connectionMigrationOptions.getEnableDefaultNetworkMigration() != null) {
            jSONObjectD.put("migrate_sessions_on_network_change_v2", connectionMigrationOptions.getEnableDefaultNetworkMigration());
        }
        if (connectionMigrationOptions.getAllowServerMigration() != null) {
            jSONObjectD.put("allow_server_migration", connectionMigrationOptions.getAllowServerMigration());
        }
        if (connectionMigrationOptions.getMigrateIdleConnections() != null) {
            jSONObjectD.put("migrate_idle_sessions", connectionMigrationOptions.getMigrateIdleConnections());
        }
        if (connectionMigrationOptions.getIdleMigrationPeriodSeconds() != null) {
            jSONObjectD.put("idle_session_migration_period_seconds", connectionMigrationOptions.getIdleMigrationPeriodSeconds());
        }
        if (connectionMigrationOptions.getRetryPreHandshakeErrorsOnAlternateNetwork() != null) {
            jSONObjectD.put("retry_on_alternate_network_before_handshake", connectionMigrationOptions.getRetryPreHandshakeErrorsOnAlternateNetwork());
        }
        if (connectionMigrationOptions.getMaxTimeOnNonDefaultNetworkSeconds() != null) {
            jSONObjectD.put("max_time_on_non_default_network_seconds", connectionMigrationOptions.getMaxTimeOnNonDefaultNetworkSeconds());
        }
        if (connectionMigrationOptions.getMaxPathDegradingEagerMigrationsCount() != null) {
            jSONObjectD.put("max_migrations_to_non_default_network_on_path_degrading", connectionMigrationOptions.getMaxPathDegradingEagerMigrationsCount());
        }
        if (connectionMigrationOptions.getMaxWriteErrorEagerMigrationsCount() != null) {
            jSONObjectD.put("max_migrations_to_non_default_network_on_write_error", connectionMigrationOptions.getMaxWriteErrorEagerMigrationsCount());
        }
        if (connectionMigrationOptions.getEnablePathDegradationMigration() != null) {
            boolean zBooleanValue = connectionMigrationOptions.getEnablePathDegradationMigration().booleanValue();
            if (connectionMigrationOptions.getAllowNonDefaultNetworkUsage() != null) {
                boolean zBooleanValue2 = connectionMigrationOptions.getAllowNonDefaultNetworkUsage().booleanValue();
                if (!zBooleanValue && zBooleanValue2) {
                    throw new IllegalArgumentException("Unable to turn on non-default network usage without path degradation migration!");
                }
                if (zBooleanValue && zBooleanValue2) {
                    jSONObjectD.put("migrate_sessions_early_v2", true);
                    return;
                }
                jSONObjectD.put("migrate_sessions_early_v2", false);
            }
            jSONObjectD.put("allow_port_migration", zBooleanValue);
        }
    }

    public static void f(DnsOptions dnsOptions, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectD = d(jSONObject, "AsyncDNS");
        if (dnsOptions.getUseBuiltInDnsResolver() != null) {
            jSONObjectD.put("enable", dnsOptions.getUseBuiltInDnsResolver());
        }
        JSONObject jSONObjectD2 = d(jSONObject, "StaleDNS");
        if (dnsOptions.getEnableStaleDns() != null) {
            jSONObjectD2.put("enable", dnsOptions.getEnableStaleDns());
        }
        if (dnsOptions.getPersistHostCache() != null) {
            jSONObjectD2.put("persist_to_disk", dnsOptions.getPersistHostCache());
        }
        if (dnsOptions.getPersistHostCachePeriodMillis() != null) {
            jSONObjectD2.put("persist_delay_ms", dnsOptions.getPersistHostCachePeriodMillis());
        }
        if (dnsOptions.getStaleDnsOptions() != null) {
            DnsOptions.StaleDnsOptions staleDnsOptions = dnsOptions.getStaleDnsOptions();
            if (staleDnsOptions.getAllowCrossNetworkUsage() != null) {
                jSONObjectD2.put("allow_other_network", staleDnsOptions.getAllowCrossNetworkUsage());
            }
            if (staleDnsOptions.getFreshLookupTimeoutMillis() != null) {
                jSONObjectD2.put("delay_ms", staleDnsOptions.getFreshLookupTimeoutMillis());
            }
            if (staleDnsOptions.getUseStaleOnNameNotResolved() != null) {
                jSONObjectD2.put("use_stale_on_name_not_resolved", staleDnsOptions.getUseStaleOnNameNotResolved());
            }
            if (staleDnsOptions.getMaxExpiredDelayMillis() != null) {
                jSONObjectD2.put("max_expired_time_ms", staleDnsOptions.getMaxExpiredDelayMillis());
            }
        }
        JSONObject jSONObjectD3 = d(jSONObject, "QUIC");
        if (dnsOptions.getPreestablishConnectionsToStaleDnsResults() != null) {
            jSONObjectD3.put("race_stale_dns_on_connection", dnsOptions.getPreestablishConnectionsToStaleDnsResults());
        }
    }

    public static void g(QuicOptions quicOptions, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectD = d(jSONObject, "QUIC");
        if (!quicOptions.getQuicHostAllowlist().isEmpty()) {
            jSONObjectD.put("host_whitelist", String.join(StringUtils.COMMA, quicOptions.getQuicHostAllowlist()));
        }
        if (!quicOptions.getEnabledQuicVersions().isEmpty()) {
            jSONObjectD.put("quic_version", String.join(StringUtils.COMMA, quicOptions.getEnabledQuicVersions()));
        }
        if (!quicOptions.getConnectionOptions().isEmpty()) {
            jSONObjectD.put("connection_options", String.join(StringUtils.COMMA, quicOptions.getConnectionOptions()));
        }
        if (!quicOptions.getClientConnectionOptions().isEmpty()) {
            jSONObjectD.put("client_connection_options", String.join(StringUtils.COMMA, quicOptions.getClientConnectionOptions()));
        }
        if (!quicOptions.getExtraQuicheFlags().isEmpty()) {
            jSONObjectD.put("set_quic_flags", String.join(StringUtils.COMMA, quicOptions.getExtraQuicheFlags()));
        }
        if (quicOptions.getInMemoryServerConfigsCacheSize() != null) {
            jSONObjectD.put("max_server_configs_stored_in_properties", quicOptions.getInMemoryServerConfigsCacheSize());
        }
        if (quicOptions.getHandshakeUserAgent() != null) {
            jSONObjectD.put("user_agent_id", quicOptions.getHandshakeUserAgent());
        }
        if (quicOptions.getRetryWithoutAltSvcOnQuicErrors() != null) {
            jSONObjectD.put("retry_without_alt_svc_on_quic_errors", quicOptions.getRetryWithoutAltSvcOnQuicErrors());
        }
        if (quicOptions.getEnableTlsZeroRtt() != null) {
            jSONObjectD.put("disable_tls_zero_rtt", !quicOptions.getEnableTlsZeroRtt().booleanValue());
        }
        if (quicOptions.getPreCryptoHandshakeIdleTimeoutSeconds() != null) {
            jSONObjectD.put("max_idle_time_before_crypto_handshake_seconds", quicOptions.getPreCryptoHandshakeIdleTimeoutSeconds());
        }
        if (quicOptions.getCryptoHandshakeTimeoutSeconds() != null) {
            jSONObjectD.put("max_time_before_crypto_handshake_seconds", quicOptions.getCryptoHandshakeTimeoutSeconds());
        }
        if (quicOptions.getIdleConnectionTimeoutSeconds() != null) {
            jSONObjectD.put("idle_connection_timeout_seconds", quicOptions.getIdleConnectionTimeoutSeconds());
        }
        if (quicOptions.getRetransmittableOnWireTimeoutMillis() != null) {
            jSONObjectD.put("retransmittable_on_wire_timeout_milliseconds", quicOptions.getRetransmittableOnWireTimeoutMillis());
        }
        if (quicOptions.getCloseSessionsOnIpChange() != null) {
            jSONObjectD.put("close_sessions_on_ip_change", quicOptions.getCloseSessionsOnIpChange());
        }
        if (quicOptions.getGoawaySessionsOnIpChange() != null) {
            jSONObjectD.put("goaway_sessions_on_ip_change", quicOptions.getGoawaySessionsOnIpChange());
        }
        if (quicOptions.getInitialBrokenServicePeriodSeconds() != null) {
            jSONObjectD.put("initial_delay_for_broken_alternative_service_seconds", quicOptions.getInitialBrokenServicePeriodSeconds());
        }
        if (quicOptions.getIncreaseBrokenServicePeriodExponentially() != null) {
            jSONObjectD.put("exponential_backoff_on_initial_delay", quicOptions.getIncreaseBrokenServicePeriodExponentially());
        }
        if (quicOptions.getDelayJobsWithAvailableSpdySession() != null) {
            jSONObjectD.put("delay_main_job_with_available_spdy_session", quicOptions.getDelayJobsWithAvailableSpdySession());
        }
    }

    public static JSONObject h(String str) {
        try {
            return new JSONObject(str);
        } catch (JSONException e) {
            throw new IllegalArgumentException("Experimental options parsing failed", e);
        }
    }

    @Override
    public ICronetEngineBuilder addPublicKeyPins(String str, Set set, boolean z, Date date) {
        this.c.addPublicKeyPins(str, set, z, date);
        return this;
    }

    @Override
    public ICronetEngineBuilder addQuicHint(String str, int i, int i2) {
        this.c.addQuicHint(str, i, i2);
        return this;
    }

    @Override
    public ExperimentalCronetEngine build() {
        if (this.a == null && this.b.isEmpty()) {
            return this.c.build();
        }
        if (this.a == null) {
            this.a = new JSONObject();
        }
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            try {
                ((InterfaceC0435a) it.next()).a(this.a);
            } catch (JSONException e) {
                throw new IllegalStateException("Unable to apply JSON patch!", e);
            }
        }
        this.c.setExperimentalOptions(this.a.toString());
        return this.c.build();
    }

    @Override
    public ICronetEngineBuilder enableBrotli(boolean z) {
        this.c.enableBrotli(z);
        return this;
    }

    @Override
    public ICronetEngineBuilder enableHttp2(boolean z) {
        this.c.enableHttp2(z);
        return this;
    }

    @Override
    public ICronetEngineBuilder enableHttpCache(int i, long j) {
        this.c.enableHttpCache(i, j);
        return this;
    }

    @Override
    public ICronetEngineBuilder enableNetworkQualityEstimator(boolean z) {
        this.c.enableNetworkQualityEstimator(z);
        return this;
    }

    @Override
    public ICronetEngineBuilder enablePublicKeyPinningBypassForLocalTrustAnchors(boolean z) {
        this.c.enablePublicKeyPinningBypassForLocalTrustAnchors(z);
        return this;
    }

    @Override
    public ICronetEngineBuilder enableQuic(boolean z) {
        this.c.enableQuic(z);
        return this;
    }

    @Override
    public ICronetEngineBuilder enableSdch(boolean z) {
        this.c.enableSdch(z);
        return this;
    }

    @Override
    public String getDefaultUserAgent() {
        return this.c.getDefaultUserAgent();
    }

    @Override
    public Set getSupportedConfigOptions() {
        return d;
    }

    @Override
    public ICronetEngineBuilder setConnectionMigrationOptions(final ConnectionMigrationOptions connectionMigrationOptions) {
        if (this.c.getSupportedConfigOptions().contains(1)) {
            this.c.setConnectionMigrationOptions(connectionMigrationOptions);
            return this;
        }
        this.b.add(new InterfaceC0435a() {
            @Override
            public final void a(JSONObject jSONObject) throws JSONException {
                a.e(connectionMigrationOptions, jSONObject);
            }
        });
        return this;
    }

    @Override
    public ICronetEngineBuilder setDnsOptions(final DnsOptions dnsOptions) {
        if (this.c.getSupportedConfigOptions().contains(2)) {
            this.c.setDnsOptions(dnsOptions);
            return this;
        }
        this.b.add(new InterfaceC0435a() {
            @Override
            public final void a(JSONObject jSONObject) throws JSONException {
                a.f(dnsOptions, jSONObject);
            }
        });
        return this;
    }

    @Override
    public ICronetEngineBuilder setExperimentalOptions(String str) {
        if (str == null || str.isEmpty()) {
            this.a = null;
        } else {
            this.a = h(str);
        }
        return this;
    }

    @Override
    public ICronetEngineBuilder setLibraryLoader(CronetEngine.Builder.LibraryLoader libraryLoader) {
        this.c.setLibraryLoader(libraryLoader);
        return this;
    }

    @Override
    public ICronetEngineBuilder setQuicOptions(final QuicOptions quicOptions) {
        if (this.c.getSupportedConfigOptions().contains(3)) {
            this.c.setQuicOptions(quicOptions);
            return this;
        }
        this.b.add(new InterfaceC0435a() {
            @Override
            public final void a(JSONObject jSONObject) throws JSONException {
                a.g(quicOptions, jSONObject);
            }
        });
        return this;
    }

    @Override
    public ICronetEngineBuilder setStoragePath(String str) {
        this.c.setStoragePath(str);
        return this;
    }

    @Override
    public ICronetEngineBuilder setThreadPriority(int i) {
        this.c.setThreadPriority(i);
        return this;
    }

    @Override
    public ICronetEngineBuilder setUserAgent(String str) {
        this.c.setUserAgent(str);
        return this;
    }
}
