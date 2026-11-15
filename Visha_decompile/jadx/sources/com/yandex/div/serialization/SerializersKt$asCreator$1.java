package com.yandex.div.serialization;

import androidx.exifinterface.media.ExifInterface;
import defpackage.hx7;
import defpackage.pd9;
import defpackage.s74;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0006\b\u0000\u0010\u0000\u0018\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00028\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lhx7;", StringLookupFactory.KEY_ENV, ES6Iterator.VALUE_PROPERTY, "Lorg/json/JSONObject;", "invoke", "(Lhx7;Ljava/lang/Object;)Lorg/json/JSONObject;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class SerializersKt$asCreator$1 extends Lambda implements s74 {
    final pd9 $this_asCreator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SerializersKt$asCreator$1(pd9 pd9Var) {
        super(2);
        this.$this_asCreator = pd9Var;
    }

    @Override
    public final JSONObject invoke(hx7 hx7Var, Object obj) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        return (JSONObject) this.$this_asCreator.b(hx7Var, obj);
    }
}
