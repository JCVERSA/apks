package com.yandex.div.storage.util;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;

public interface CardErrorTransformer {

    public static final class a implements CardErrorTransformer {
        public final CardErrorTransformer[] a;

        public a(CardErrorTransformer... cardErrorTransformerArr) {
            y45.j(cardErrorTransformerArr, "transformers");
            this.a = cardErrorTransformerArr;
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00060\u0001j\u0002`\u0002BW\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u000b\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010¨\u0006\u0017"}, d2 = {"Lcom/yandex/div/storage/util/CardErrorTransformer$CardDetailedErrorException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "cardId", "", "message", "cause", "", "templateId", "details", "", "groupId", TtmlNode.TAG_METADATA, "Lorg/json/JSONObject;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)V", "getCardId", "()Ljava/lang/String;", "getDetails", "()Ljava/util/Map;", "getGroupId$div_storage_release", "getMetadata", "()Lorg/json/JSONObject;", "getTemplateId", "div-storage_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class CardDetailedErrorException extends Exception {
        private final String cardId;
        private final Map<String, String> details;
        private final String groupId;
        private final JSONObject metadata;
        private final String templateId;

        public CardDetailedErrorException(String str, String str2, Throwable th, String str3, Map map, String str4, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i & 4) != 0 ? null : th, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? kotlin.collections.a.l() : map, str4, jSONObject);
        }

        public final String getCardId() {
            return this.cardId;
        }

        public final Map<String, String> getDetails() {
            return this.details;
        }

        public final String getGroupId() {
            return this.groupId;
        }

        public final JSONObject getMetadata() {
            return this.metadata;
        }

        public final String getTemplateId() {
            return this.templateId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardDetailedErrorException(String str, String str2, Throwable th, String str3, Map<String, String> map, String str4, JSONObject jSONObject) {
            super(str2, th);
            y45.j(str, "cardId");
            y45.j(map, "details");
            y45.j(str4, "groupId");
            this.cardId = str;
            this.templateId = str3;
            this.details = map;
            this.groupId = str4;
            this.metadata = jSONObject;
        }
    }
}
