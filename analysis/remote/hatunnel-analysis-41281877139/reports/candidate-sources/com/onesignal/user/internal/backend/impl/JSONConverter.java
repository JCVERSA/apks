package com.onesignal.user.internal.backend.impl;

import app.fast.ssh.ProtectedFastSSH;
import com.onesignal.common.JSONObjectExtensionsKt;
import com.onesignal.common.consistency.RywData;
import com.onesignal.user.internal.backend.CreateUserResponse;
import com.onesignal.user.internal.backend.PropertiesDeltasObject;
import com.onesignal.user.internal.backend.PropertiesObject;
import com.onesignal.user.internal.backend.PurchaseObject;
import com.onesignal.user.internal.backend.SubscriptionObject;
import com.onesignal.user.internal.backend.SubscriptionObjectType;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rJ\u0014\u0010\u0007\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u0010¨\u0006\u0011"}, d2 = {"Lcom/onesignal/user/internal/backend/impl/JSONConverter;", "", "()V", "convertToCreateUserResponse", "Lcom/onesignal/user/internal/backend/CreateUserResponse;", "jsonObject", "Lorg/json/JSONObject;", "convertToJSON", "propertiesDeltas", "Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;", "properties", "Lcom/onesignal/user/internal/backend/PropertiesObject;", "subscription", "Lcom/onesignal/user/internal/backend/SubscriptionObject;", "Lorg/json/JSONArray;", "subscriptions", "", "com.onesignal.core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class JSONConverter {
    public static final JSONConverter INSTANCE = new JSONConverter();

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lorg/json/JSONObject;", "it", "Lcom/onesignal/user/internal/backend/PurchaseObject;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
    static final class AnonymousClass1 extends Lambda implements Function1<PurchaseObject, JSONObject> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override
        public JSONObject invoke(PurchaseObject purchaseObject) {
            return invoke2(purchaseObject);
        }

        public final JSONObject invoke2(PurchaseObject purchaseObject) throws JSONException {
            Intrinsics.checkNotNullParameter(purchaseObject, ProtectedFastSSH.s("ꣀ"));
            return new JSONObject().put(ProtectedFastSSH.s("ꣁ"), purchaseObject.getSku()).put(ProtectedFastSSH.s("ꣂ"), purchaseObject.getIso()).put(ProtectedFastSSH.s("ꣃ"), purchaseObject.getAmount().toString());
        }
    }

    private JSONConverter() {
    }

    public final CreateUserResponse convertToCreateUserResponse(JSONObject jsonObject) throws JSONException {
        LinkedHashMap linkedHashMapEmptyMap;
        LinkedHashMap linkedHashMap;
        JSONObject jSONObjectSafeJSONObject;
        Map<String, Object> map;
        Map<String, Object> map2;
        Intrinsics.checkNotNullParameter(jsonObject, ProtectedFastSSH.s("꣄"));
        JSONObject jSONObjectSafeJSONObject2 = JSONObjectExtensionsKt.safeJSONObject(jsonObject, ProtectedFastSSH.s("ꣅ"));
        if (jSONObjectSafeJSONObject2 == null || (map2 = JSONObjectExtensionsKt.toMap(jSONObjectSafeJSONObject2)) == null) {
            linkedHashMapEmptyMap = MapsKt.emptyMap();
        } else {
            linkedHashMapEmptyMap = new LinkedHashMap(MapsKt.mapCapacity(map2.size()));
            Iterator<T> it = map2.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMapEmptyMap.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        JSONObject jSONObjectSafeJSONObject3 = JSONObjectExtensionsKt.safeJSONObject(jsonObject, ProtectedFastSSH.s("\ua8c6"));
        if (jSONObjectSafeJSONObject3 == null || (jSONObjectSafeJSONObject = JSONObjectExtensionsKt.safeJSONObject(jSONObjectSafeJSONObject3, ProtectedFastSSH.s("\ua8c7"))) == null || (map = JSONObjectExtensionsKt.toMap(jSONObjectSafeJSONObject)) == null) {
            linkedHashMap = null;
        } else {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
            Iterator<T> it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it2.next();
                linkedHashMap2.put(entry2.getKey(), String.valueOf(entry2.getValue()));
            }
            linkedHashMap = linkedHashMap2;
        }
        PropertiesObject propertiesObject = new PropertiesObject(linkedHashMap, jSONObjectSafeJSONObject3 != null ? JSONObjectExtensionsKt.safeString(jSONObjectSafeJSONObject3, ProtectedFastSSH.s("\ua8c8")) : null, jSONObjectSafeJSONObject3 != null ? JSONObjectExtensionsKt.safeString(jSONObjectSafeJSONObject3, ProtectedFastSSH.s("\ua8c9")) : null, jSONObjectSafeJSONObject3 != null ? JSONObjectExtensionsKt.safeString(jSONObjectSafeJSONObject3, ProtectedFastSSH.s("\ua8ca")) : null, jSONObjectSafeJSONObject3 != null ? JSONObjectExtensionsKt.safeDouble(jSONObjectSafeJSONObject3, ProtectedFastSSH.s("\ua8cb")) : null, jSONObjectSafeJSONObject3 != null ? JSONObjectExtensionsKt.safeDouble(jSONObjectSafeJSONObject3, ProtectedFastSSH.s("\ua8cc")) : null);
        List listExpandJSONArray = JSONObjectExtensionsKt.expandJSONArray(jsonObject, ProtectedFastSSH.s("\ua8cd"), JSONConverter$convertToCreateUserResponse$respSubscriptions$1.INSTANCE);
        String strSafeString = JSONObjectExtensionsKt.safeString(jsonObject, ProtectedFastSSH.s("꣎"));
        return new CreateUserResponse(linkedHashMapEmptyMap, propertiesObject, listExpandJSONArray, strSafeString != null ? new RywData(strSafeString, JSONObjectExtensionsKt.safeLong(jsonObject, ProtectedFastSSH.s("꣏"))) : null);
    }

    public final JSONArray convertToJSON(List<SubscriptionObject> subscriptions) {
        Intrinsics.checkNotNullParameter(subscriptions, ProtectedFastSSH.s("\ua8cd"));
        JSONArray jSONArray = new JSONArray();
        Iterator<SubscriptionObject> it = subscriptions.iterator();
        while (it.hasNext()) {
            jSONArray.put(convertToJSON(it.next()));
        }
        return jSONArray;
    }

    public final JSONObject convertToJSON(PropertiesDeltasObject propertiesDeltas) throws JSONException {
        Intrinsics.checkNotNullParameter(propertiesDeltas, ProtectedFastSSH.s("꣐"));
        JSONObject jSONObjectPutSafe = JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(new JSONObject(), ProtectedFastSSH.s("꣑"), propertiesDeltas.getSessionTime()), ProtectedFastSSH.s("꣒"), propertiesDeltas.getSessionCount());
        BigDecimal amountSpent = propertiesDeltas.getAmountSpent();
        return JSONObjectExtensionsKt.putJSONArray(JSONObjectExtensionsKt.putSafe(jSONObjectPutSafe, ProtectedFastSSH.s("꣓"), amountSpent != null ? amountSpent.toString() : null), ProtectedFastSSH.s("꣔"), propertiesDeltas.getPurchases(), AnonymousClass1.INSTANCE);
    }

    public final JSONObject convertToJSON(PropertiesObject properties) {
        Intrinsics.checkNotNullParameter(properties, ProtectedFastSSH.s("\ua8c6"));
        return JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putMap(new JSONObject(), ProtectedFastSSH.s("\ua8c7"), properties.getTags()), ProtectedFastSSH.s("\ua8c8"), properties.getLanguage()), ProtectedFastSSH.s("\ua8c9"), properties.getTimezoneId()), ProtectedFastSSH.s("\ua8cb"), properties.getLatitude()), ProtectedFastSSH.s("\ua8cc"), properties.getLongitude()), ProtectedFastSSH.s("\ua8ca"), properties.getCountry());
    }

    public final JSONObject convertToJSON(SubscriptionObject subscription) throws JSONException {
        Intrinsics.checkNotNullParameter(subscription, ProtectedFastSSH.s("꣕"));
        JSONObject jSONObjectPutSafe = JSONObjectExtensionsKt.putSafe(new JSONObject(), ProtectedFastSSH.s("꣖"), subscription.getId());
        SubscriptionObjectType type = subscription.getType();
        return JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(JSONObjectExtensionsKt.putSafe(jSONObjectPutSafe, ProtectedFastSSH.s("꣗"), type != null ? type.getValue() : null), ProtectedFastSSH.s("꣘"), subscription.getToken()), ProtectedFastSSH.s("꣙"), subscription.getEnabled()), ProtectedFastSSH.s("\ua8da"), subscription.getNotificationTypes()), ProtectedFastSSH.s("\ua8db"), subscription.getSdk()), ProtectedFastSSH.s("\ua8dc"), subscription.getDeviceModel()), ProtectedFastSSH.s("\ua8dd"), subscription.getDeviceOS()), ProtectedFastSSH.s("\ua8de"), subscription.getRooted()), ProtectedFastSSH.s("\ua8df"), subscription.getNetType()), ProtectedFastSSH.s("꣠"), subscription.getCarrier()), ProtectedFastSSH.s("꣡"), subscription.getAppVersion());
    }
}
