package com.transsion.dbdata.engine.base.layer;

import android.content.Context;
import defpackage.am6;
import defpackage.db3;
import defpackage.pu4;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/dbdata/engine/base/layer/DataLayer;", "", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "MEDIA_STORE", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum DataLayer {
    MEDIA_STORE {
        @Override
        public pu4 getInstance(Context context) {
            y45.j(context, "context");
            return new am6(context);
        }
    };

    private static final db3 $ENTRIES = a.a(values());

    DataLayer(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static db3 getEntries() {
        return $ENTRIES;
    }

    public abstract pu4 getInstance(Context context);
}
