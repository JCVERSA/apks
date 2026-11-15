package defpackage;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.BooleanUtils;

public class oed implements bkd {
    public Uri a;

    public static class b {
        public static final oed a = new oed();
    }

    public static oed d() {
        return b.a;
    }

    @Override
    public boolean a(List list) {
        if (list == null || list.isEmpty()) {
            AdLogUtil.Log().d("CloudProviderManager", "insert seatList is null or empty");
            return false;
        }
        ContentResolver contentResolver = ul4.a().getContentResolver();
        ContentValues contentValues = new ContentValues();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CloudControlConfig.CodeSeat codeSeat = (CloudControlConfig.CodeSeat) it.next();
            if (codeSeat != null) {
                contentValues.put(codeSeat.getCodeSeatId(), GsonUtil.d(codeSeat));
            }
        }
        Uri uriInsert = contentResolver.insert(this.a, contentValues);
        String path = uriInsert != null ? uriInsert.getPath() : null;
        Log.d("CloudProviderManager", "insert sResult " + uriInsert);
        return path != null && path.endsWith(BooleanUtils.TRUE);
    }

    @Override
    public long b() {
        List listC = c();
        if (listC == null) {
            return 0L;
        }
        return listC.size();
    }

    @Override
    public List c() {
        String[] strArr;
        if (TAdManager.getCodeSeatIds() == null || TAdManager.getCodeSeatIds().isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ContentResolver contentResolver = ul4.a().getContentResolver();
        String[] strArr2 = new String[0];
        List<String> codeSeatIds = TAdManager.getCodeSeatIds();
        if (codeSeatIds == null || codeSeatIds.isEmpty()) {
            AdLogUtil.Log().d("CloudProviderManager", "getAllCodeSeats codeIds is empty");
            strArr = strArr2;
        } else {
            int size = codeSeatIds.size();
            String[] strArr3 = new String[size];
            for (int i = 0; i < size; i++) {
                strArr3[i] = codeSeatIds.get(i);
            }
            AdLogUtil.Log().d("CloudProviderManager", "getAllCodeSeats codeIds " + codeSeatIds);
            strArr = strArr3;
        }
        Cursor cursorQuery = contentResolver.query(this.a, strArr, null, null, null);
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                try {
                    try {
                        int columnIndex = cursorQuery.getColumnIndex("json");
                        if (columnIndex >= 0) {
                            arrayList.add((CloudControlConfig.CodeSeat) GsonUtil.a(cursorQuery.getString(columnIndex), CloudControlConfig.CodeSeat.class));
                        }
                    } catch (Exception e) {
                        AdLogUtil.Log().e("CloudProviderManager", Log.getStackTraceString(e));
                        cursorQuery.close();
                    }
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            cursorQuery.close();
        }
        return arrayList;
    }

    public oed() {
        if (ul4.a() == null) {
            AdLogUtil.Log().e("ssp", "HSCoreUtil is not init now");
            return;
        }
        this.a = Uri.parse("content://" + ul4.a().getPackageName() + ".HisavanaConfigContentProvider/config");
    }

    @Override
    public void a() {
        try {
            ul4.a().getContentResolver().delete(this.a, null, null);
        } catch (Exception e) {
            AdLogUtil.Log().e("CloudProviderManager", Log.getStackTraceString(e));
        }
    }

    @Override
    public void a(CloudControlConfig.CodeSeat codeSeat) {
        if (codeSeat == null) {
            AdLogUtil.Log().d("CloudProviderManager", "updateConfig codeSeat is null");
            return;
        }
        try {
            ContentResolver contentResolver = ul4.a().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put(codeSeat.getCodeSeatId(), GsonUtil.d(codeSeat));
            Log.d("CloudProviderManager", "updateConfig result " + contentResolver.update(this.a, contentValues, codeSeat.getCodeSeatId(), null));
        } catch (Exception e) {
            AdLogUtil.Log().e("CloudProviderManager", Log.getStackTraceString(e));
        }
    }
}
