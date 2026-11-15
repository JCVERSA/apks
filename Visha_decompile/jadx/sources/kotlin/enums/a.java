package kotlin.enums;

import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.db3;
import defpackage.y45;

public abstract class a {
    public static final db3 a(Enum[] enumArr) {
        y45.j(enumArr, TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES);
        return new EnumEntriesList(enumArr);
    }
}
