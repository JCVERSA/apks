package org.chromium.net;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

final class e extends ICronetEngineBuilder {

    private static final Set f68521d = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 3)));

    private JSONObject f68522a;

    private final List f68523b = new ArrayList();

    private final ICronetEngineBuilder f68524c;

    interface a {
        void a(JSONObject jSONObject);
    }

    e(ICronetEngineBuilder iCronetEngineBuilder) {
        this.f68524c = iCronetEngineBuilder;
    }

    private static JSONObject d(JSONObject jSONObject, String str) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
            try {
                jSONObject.put(str, jSONObjectOptJSONObject);
            } catch (JSONException e10) {
                throw new IllegalArgumentException("Failed adding a default object for key [" + str + "]", e10);
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
            jSONObjectD.put(OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, dnsOptions.getUseBuiltInDnsResolver());
        }
        JSONObject jSONObjectD2 = d(jSONObject, "StaleDNS");
        if (dnsOptions.getEnableStaleDns() != null) {
            jSONObjectD2.put(OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, dnsOptions.getEnableStaleDns());
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
            jSONObjectD.put("host_whitelist", org.chromium.net.a.a(",", quicOptions.getQuicHostAllowlist()));
        }
        if (!quicOptions.getEnabledQuicVersions().isEmpty()) {
            jSONObjectD.put("quic_version", org.chromium.net.a.a(",", quicOptions.getEnabledQuicVersions()));
        }
        if (!quicOptions.getConnectionOptions().isEmpty()) {
            jSONObjectD.put("connection_options", org.chromium.net.a.a(",", quicOptions.getConnectionOptions()));
        }
        if (!quicOptions.getClientConnectionOptions().isEmpty()) {
            jSONObjectD.put("client_connection_options", org.chromium.net.a.a(",", quicOptions.getClientConnectionOptions()));
        }
        if (!quicOptions.getExtraQuicheFlags().isEmpty()) {
            jSONObjectD.put("set_quic_flags", org.chromium.net.a.a(",", quicOptions.getExtraQuicheFlags()));
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

    private static JSONObject h(String str) {
        try {
            return new JSONObject(str);
        } catch (JSONException e10) {
            throw new IllegalArgumentException("Experimental options parsing failed", e10);
        }
    }

    @Override
    public ICronetEngineBuilder addPublicKeyPins(String str, Set set, boolean z10, Date date) {
        this.f68524c.addPublicKeyPins(str, set, z10, date);
        return this;
    }

    @Override
    public ICronetEngineBuilder addQuicHint(String str, int i10, int i11) {
        this.f68524c.addQuicHint(str, i10, i11);
        return this;
    }

    @Override
    public ExperimentalCronetEngine build() {
        if (this.f68522a == null && this.f68523b.isEmpty()) {
            return this.f68524c.build();
        }
        if (this.f68522a == null) {
            this.f68522a = new JSONObject();
        }
        Iterator it = this.f68523b.iterator();
        while (it.hasNext()) {
            try {
                ((a) it.next()).a(this.f68522a);
            } catch (JSONException e10) {
                throw new IllegalStateException("Unable to apply JSON patch!", e10);
            }
        }
        this.f68524c.setExperimentalOptions(this.f68522a.toString());
        return this.f68524c.build();
    }

    @Override
    public ICronetEngineBuilder enableBrotli(boolean z10) {
        this.f68524c.enableBrotli(z10);
        return this;
    }

    @Override
    public ICronetEngineBuilder enableHttp2(boolean z10) {
        this.f68524c.enableHttp2(z10);
        return this;
    }

    @Override
    public ICronetEngineBuilder enableHttpCache(int i10, long j10) {
        this.f68524c.enableHttpCache(i10, j10);
        return this;
    }

    @Override
    public ICronetEngineBuilder enableNetworkQualityEstimator(boolean z10) {
        this.f68524c.enableNetworkQualityEstimator(z10);
        return this;
    }

    @Override
    public ICronetEngineBuilder enablePublicKeyPinningBypassForLocalTrustAnchors(boolean z10) {
        this.f68524c.enablePublicKeyPinningBypassForLocalTrustAnchors(z10);
        return this;
    }

    @Override
    public ICronetEngineBuilder enableQuic(boolean z10) {
        this.f68524c.enableQuic(z10);
        return this;
    }

    @Override
    public ICronetEngineBuilder enableSdch(boolean z10) {
        this.f68524c.enableSdch(z10);
        return this;
    }

    @Override
    public String getDefaultUserAgent() {
        return this.f68524c.getDefaultUserAgent();
    }

    @Override
    protected Set getSupportedConfigOptions() {
        return f68521d;
    }

    @Override
    public ICronetEngineBuilder setConnectionMigrationOptions(final ConnectionMigrationOptions connectionMigrationOptions) {
        if (this.f68524c.getSupportedConfigOptions().contains(1)) {
            this.f68524c.setConnectionMigrationOptions(connectionMigrationOptions);
            return this;
        }
        this.f68523b.add(new a() {
            @Override
            public final void a(JSONObject jSONObject) throws JSONException {
                e.e(connectionMigrationOptions, jSONObject);
            }
        });
        return this;
    }

    @Override
    public ICronetEngineBuilder setDnsOptions(final DnsOptions dnsOptions) {
        if (this.f68524c.getSupportedConfigOptions().contains(2)) {
            this.f68524c.setDnsOptions(dnsOptions);
            return this;
        }
        this.f68523b.add(new a() {
            @Override
            public final void a(JSONObject jSONObject) throws JSONException {
                e.f(dnsOptions, jSONObject);
            }
        });
        return this;
    }

    @Override
    public ICronetEngineBuilder setExperimentalOptions(String str) {
        if (str == null || str.isEmpty()) {
            this.f68522a = null;
        } else {
            this.f68522a = h(str);
        }
        return this;
    }

    @Override
    public ICronetEngineBuilder setLibraryLoader(CronetEngine.Builder.LibraryLoader libraryLoader) {
        this.f68524c.setLibraryLoader(libraryLoader);
        return this;
    }

    @Override
    public ICronetEngineBuilder setQuicOptions(final QuicOptions quicOptions) {
        if (this.f68524c.getSupportedConfigOptions().contains(3)) {
            this.f68524c.setQuicOptions(quicOptions);
            return this;
        }
        this.f68523b.add(new a() {
            @Override
            public final void a(JSONObject jSONObject) throws JSONException {
                e.g(quicOptions, jSONObject);
            }
        });
        return this;
    }

    @Override
    public ICronetEngineBuilder setStoragePath(String str) {
        this.f68524c.setStoragePath(str);
        return this;
    }

    @Override
    public ICronetEngineBuilder setThreadPriority(int i10) {
        this.f68524c.setThreadPriority(i10);
        return this;
    }

    @Override
    public ICronetEngineBuilder setUserAgent(String str) {
        this.f68524c.setUserAgent(str);
        return this;
    }
}
