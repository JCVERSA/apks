package com.onesignal.session.internal.outcomes.impl;

import app.fast.ssh.ProtectedFastSSH;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.core.internal.http.HttpResponse;
import com.onesignal.core.internal.http.IHttpClient;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J@\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventsBackendService;", "Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsBackendService;", "_http", "Lcom/onesignal/core/internal/http/IHttpClient;", "(Lcom/onesignal/core/internal/http/IHttpClient;)V", "sendOutcomeEvent", "", "appId", "", "userId", "subscriptionId", "deviceType", "direct", "", "event", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeEvent;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/onesignal/session/internal/outcomes/impl/OutcomeEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "com.onesignal.core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OutcomeEventsBackendService implements IOutcomeEventsBackendService {
    private final IHttpClient _http;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsBackendService", f = "OutcomeEventsBackendService.kt", i = {}, l = {49}, m = "sendOutcomeEvent", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsBackendService.this.sendOutcomeEvent(null, null, null, null, null, null, this);
        }
    }

    public OutcomeEventsBackendService(IHttpClient iHttpClient) {
        Intrinsics.checkNotNullParameter(iHttpClient, ProtectedFastSSH.s("ꝏ"));
        this._http = iHttpClient;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override
    public Object sendOutcomeEvent(String str, String str2, String str3, String str4, Boolean bool, OutcomeEvent outcomeEvent, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objPost$default = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPost$default);
            JSONObject jSONObjectPut = new JSONObject().put(ProtectedFastSSH.s("ꝑ"), str).put(ProtectedFastSSH.s("Ꝓ"), str2);
            JSONObject jSONObject = new JSONObject();
            String strS = ProtectedFastSSH.s("ꝓ");
            JSONObject jSONObjectPut2 = jSONObjectPut.put(ProtectedFastSSH.s("ꝕ"), jSONObject.put(strS, str3).put(ProtectedFastSSH.s("Ꝕ"), str4));
            if (bool != null) {
                jSONObjectPut2.put(ProtectedFastSSH.s("Ꝗ"), bool.booleanValue());
            }
            if (outcomeEvent.getNotificationIds() != null && outcomeEvent.getNotificationIds().length() > 0) {
                jSONObjectPut2.put(ProtectedFastSSH.s("ꝗ"), outcomeEvent.getNotificationIds());
            }
            jSONObjectPut2.put(strS, outcomeEvent.getName());
            if (outcomeEvent.getWeight() > 0.0f) {
                jSONObjectPut2.put(ProtectedFastSSH.s("Ꝙ"), Boxing.boxFloat(outcomeEvent.getWeight()));
            }
            if (outcomeEvent.getTimestamp() > 0) {
                jSONObjectPut2.put(ProtectedFastSSH.s("ꝙ"), outcomeEvent.getTimestamp());
            }
            if (outcomeEvent.getSessionTime() > 0) {
                jSONObjectPut2.put(ProtectedFastSSH.s("Ꝛ"), outcomeEvent.getSessionTime());
            }
            IHttpClient iHttpClient = this._http;
            Intrinsics.checkNotNull(jSONObjectPut2);
            anonymousClass1.label = 1;
            objPost$default = IHttpClient.DefaultImpls.post$default(iHttpClient, ProtectedFastSSH.s("ꝛ"), jSONObjectPut2, null, anonymousClass1, 4, null);
            if (objPost$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException(ProtectedFastSSH.s("Ꝑ"));
            }
            ResultKt.throwOnFailure(objPost$default);
        }
        HttpResponse httpResponse = (HttpResponse) objPost$default;
        if (httpResponse.isSuccess()) {
            return Unit.INSTANCE;
        }
        throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
    }
}
