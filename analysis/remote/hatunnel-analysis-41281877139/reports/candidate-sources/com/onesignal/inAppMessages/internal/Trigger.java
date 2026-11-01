package com.onesignal.inAppMessages.internal;

import app.fast.ssh.ProtectedFastSSH;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\b\u0000\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0016\u001a\u00020\u0003J\b\u0010\u0017\u001a\u00020\u000eH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, d2 = {"Lcom/onesignal/inAppMessages/internal/Trigger;", "", "json", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "kind", "Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;", "getKind", "()Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;", "operatorType", "Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;", "getOperatorType", "()Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;", "property", "", "getProperty", "()Ljava/lang/String;", "triggerId", "getTriggerId", "value", "getValue", "()Ljava/lang/Object;", "toJSONObject", "toString", "OSTriggerKind", "OSTriggerOperator", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Trigger {
    private final OSTriggerKind kind;
    private final OSTriggerOperator operatorType;
    private final String property;
    private final String triggerId;
    private final Object value;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "TIME_SINCE_LAST_IN_APP", "SESSION_TIME", "CUSTOM", "UNKNOWN", "Companion", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public enum OSTriggerKind {
        TIME_SINCE_LAST_IN_APP(ProtectedFastSSH.s("齻")),
        SESSION_TIME(ProtectedFastSSH.s("齽")),
        CUSTOM(ProtectedFastSSH.s("齿")),
        UNKNOWN(ProtectedFastSSH.s("龁"));

        private final String value;
        private static final EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static final Companion INSTANCE = new Companion(null);

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind$Companion;", "", "()V", "fromString", "Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;", "value", "", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final OSTriggerKind fromString(String value) {
                for (OSTriggerKind oSTriggerKind : OSTriggerKind.values()) {
                    if (StringsKt.equals(OSTriggerKind.access$getValue$p(oSTriggerKind), value, true)) {
                        return oSTriggerKind;
                    }
                }
                return OSTriggerKind.UNKNOWN;
            }
        }

        OSTriggerKind(String str) {
            this.value = str;
        }

        public static final String access$getValue$p(OSTriggerKind oSTriggerKind) {
            return oSTriggerKind.value;
        }

        public static EnumEntries<OSTriggerKind> getEntries() {
            return $ENTRIES;
        }

        @Override
        public String toString() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010\u0007\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, d2 = {"Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;", "", "text", "", "(Ljava/lang/String;ILjava/lang/String;)V", "checksEquality", "", "toString", "GREATER_THAN", "LESS_THAN", "EQUAL_TO", "NOT_EQUAL_TO", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EXISTS", "NOT_EXISTS", "CONTAINS", "Companion", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public enum OSTriggerOperator {
        GREATER_THAN(ProtectedFastSSH.s("龃")),
        LESS_THAN(ProtectedFastSSH.s("龅")),
        EQUAL_TO(ProtectedFastSSH.s("龇")),
        NOT_EQUAL_TO(ProtectedFastSSH.s("龉")),
        LESS_THAN_OR_EQUAL_TO(ProtectedFastSSH.s("龋")),
        GREATER_THAN_OR_EQUAL_TO(ProtectedFastSSH.s("龍")),
        EXISTS(ProtectedFastSSH.s("龏")),
        NOT_EXISTS(ProtectedFastSSH.s("龑")),
        CONTAINS(ProtectedFastSSH.s("龓"));

        private final String text;
        private static final EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static final Companion INSTANCE = new Companion(null);

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator$Companion;", "", "()V", "fromString", "Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;", "text", "", "com.onesignal.inAppMessages"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final OSTriggerOperator fromString(String text) {
                for (OSTriggerOperator oSTriggerOperator : OSTriggerOperator.values()) {
                    if (StringsKt.equals(OSTriggerOperator.access$getText$p(oSTriggerOperator), text, true)) {
                        return oSTriggerOperator;
                    }
                }
                return OSTriggerOperator.EQUAL_TO;
            }
        }

        OSTriggerOperator(String str) {
            this.text = str;
        }

        public static final String access$getText$p(OSTriggerOperator oSTriggerOperator) {
            return oSTriggerOperator.text;
        }

        public static EnumEntries<OSTriggerOperator> getEntries() {
            return $ENTRIES;
        }

        public final boolean checksEquality() {
            return this == EQUAL_TO || this == NOT_EQUAL_TO;
        }

        @Override
        public String toString() {
            return this.text;
        }
    }

    public Trigger(JSONObject jSONObject) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONObject, ProtectedFastSSH.s("龕"));
        String string = jSONObject.getString(ProtectedFastSSH.s("龖"));
        Intrinsics.checkNotNullExpressionValue(string, ProtectedFastSSH.s("龗"));
        this.triggerId = string;
        this.kind = OSTriggerKind.INSTANCE.fromString(jSONObject.getString(ProtectedFastSSH.s("龘")));
        this.property = jSONObject.optString(ProtectedFastSSH.s("龙"), null);
        this.operatorType = OSTriggerOperator.INSTANCE.fromString(jSONObject.getString(ProtectedFastSSH.s("龚")));
        this.value = jSONObject.opt(ProtectedFastSSH.s("龛"));
    }

    public final OSTriggerKind getKind() {
        return this.kind;
    }

    public final OSTriggerOperator getOperatorType() {
        return this.operatorType;
    }

    public final String getProperty() {
        return this.property;
    }

    public final String getTriggerId() {
        return this.triggerId;
    }

    public final Object getValue() {
        return this.value;
    }

    public final JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ProtectedFastSSH.s("龖"), this.triggerId);
            jSONObject.put(ProtectedFastSSH.s("龘"), this.kind);
            jSONObject.put(ProtectedFastSSH.s("龙"), this.property);
            jSONObject.put(ProtectedFastSSH.s("龚"), this.operatorType.toString());
            jSONObject.put(ProtectedFastSSH.s("龛"), this.value);
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    public String toString() {
        return ProtectedFastSSH.s("龜") + this.triggerId + ProtectedFastSSH.s("龝") + this.kind + ProtectedFastSSH.s("龞") + this.property + ProtectedFastSSH.s("龟") + this.operatorType + ProtectedFastSSH.s("龠") + this.value + AbstractJsonLexerKt.END_OBJ;
    }
}
