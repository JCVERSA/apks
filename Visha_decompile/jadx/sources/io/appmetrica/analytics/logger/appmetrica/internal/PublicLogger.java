package io.appmetrica.analytics.logger.appmetrica.internal;

import io.appmetrica.analytics.logger.common.BaseReleaseLogger;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;", "Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;", "", "partialApiKey", MethodDecl.initName, "(Ljava/lang/String;)V", "Companion", "logger_release"}, k = 1, mv = {1, 6, 0})
public final class PublicLogger extends BaseReleaseLogger {

    public static final Companion INSTANCE = new Companion(null);
    private static final PublicLogger a = new PublicLogger("");

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0007R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;", "", "Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;", "getAnonymousInstance", "ANONYMOUS_INSTANCE", "Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;", "logger_release"}, k = 1, mv = {1, 6, 0})
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PublicLogger getAnonymousInstance() {
            return PublicLogger.a;
        }

        private Companion() {
        }
    }

    public PublicLogger(String str) {
        super("AppMetrica", "[" + str + ']');
    }

    public static final PublicLogger getAnonymousInstance() {
        return INSTANCE.getAnonymousInstance();
    }
}
