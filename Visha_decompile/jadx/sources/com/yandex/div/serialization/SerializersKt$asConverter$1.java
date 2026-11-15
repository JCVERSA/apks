package com.yandex.div.serialization;

import androidx.exifinterface.media.ExifInterface;
import defpackage.e74;
import defpackage.ex7;
import defpackage.pd9;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u00012\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "Lorg/json/JSONObject;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ES6Iterator.VALUE_PROPERTY, "invoke", "(Ljava/lang/Object;)Lorg/json/JSONObject;"}, k = 3, mv = {1, 8, 0}, xi = 176)
public final class SerializersKt$asConverter$1 extends Lambda implements e74 {
    final ex7 $context;
    final pd9 $this_asConverter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SerializersKt$asConverter$1(pd9 pd9Var, ex7 ex7Var) {
        super(1);
        this.$this_asConverter = pd9Var;
        this.$context = ex7Var;
    }

    @Override
    public final JSONObject invoke(Object obj) {
        return (JSONObject) this.$this_asConverter.b(this.$context, obj);
    }
}
