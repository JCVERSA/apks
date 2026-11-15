package com.transsion.hubsdk.api.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import com.transsion.hubsdk.common.util.TranSdkLog;

public abstract class TranSearchIndexablesProvider extends ContentProvider {
    public static final String DYNAMIC_INDEXABLES_RAW = "dynamic_indexables_raw";
    public static final String DYNAMIC_INDEXABLES_RAW_PATH = "settings/dynamic_indexables_raw";
    public static final String INDEXABLES_RAW = "indexables_raw";
    public static final String INDEXABLES_RAW_PATH = "settings/indexables_raw";
    public static final String INDEXABLES_XML_RES = "indexables_xml_res";
    public static final String INDEXABLES_XML_RES_PATH = "settings/indexables_xml_res";
    private static final int MATCH_DYNAMIC_RAW_CODE = 6;
    private static final int MATCH_NON_INDEXABLE_KEYS_CODE = 3;
    private static final int MATCH_RAW_CODE = 2;
    private static final int MATCH_RES_CODE = 1;
    private static final int MATCH_SITE_MAP_PAIRS_CODE = 4;
    private static final int MATCH_SLICE_URI_PAIRS_CODE = 5;
    public static final String NON_INDEXABLES_KEYS = "non_indexables_key";
    public static final String NON_INDEXABLES_KEYS_PATH = "settings/non_indexables_key";
    public static final String NO_KEYS_MIME_TYPE = "vnd.android.cursor.dir/non_indexables_key";
    public static final String PROVIDER_INTERFACE = "android.content.action.SEARCH_INDEXABLES_PROVIDER";
    public static final String RAW_MIME_TYPE = "vnd.android.cursor.dir/indexables_raw";
    private static final String SETTINGS = "settings";
    public static final String SITE_MAP_PAIRS_KEYS = "site_map_pairs";
    public static final String SITE_MAP_PAIRS_PATH = "settings/site_map_pairs";
    public static final String SLICE_URI_PAIRS = "slice_uri_pairs";
    public static final String SLICE_URI_PAIRS_PATH = "settings/slice_uri_pairs";
    private static final String TAG = "IndexablesProvider";
    public static final String XML_MIME_TYPE = "vnd.android.cursor.dir/indexables_xml_res";
    private String mAuthority;
    private UriMatcher mMatcher;

    @Override
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        this.mAuthority = providerInfo.authority;
        UriMatcher uriMatcher = new UriMatcher(-1);
        this.mMatcher = uriMatcher;
        uriMatcher.addURI(this.mAuthority, INDEXABLES_XML_RES_PATH, 1);
        this.mMatcher.addURI(this.mAuthority, INDEXABLES_RAW_PATH, 2);
        this.mMatcher.addURI(this.mAuthority, NON_INDEXABLES_KEYS_PATH, 3);
        this.mMatcher.addURI(this.mAuthority, SITE_MAP_PAIRS_PATH, 4);
        this.mMatcher.addURI(this.mAuthority, SLICE_URI_PAIRS_PATH, 5);
        this.mMatcher.addURI(this.mAuthority, DYNAMIC_INDEXABLES_RAW_PATH, 6);
        if (!providerInfo.exported) {
            throw new SecurityException("Provider must be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grantUriPermissions");
        }
        if (!"android.permission.READ_SEARCH_INDEXABLES".equals(providerInfo.readPermission)) {
            throw new SecurityException("Provider must be protected by READ_SEARCH_INDEXABLES");
        }
        super.attachInfo(context, providerInfo);
    }

    @Override
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Delete not supported");
    }

    @Override
    public String getType(Uri uri) {
        int iMatch = this.mMatcher.match(uri);
        if (iMatch == 1) {
            return XML_MIME_TYPE;
        }
        if (iMatch == 2) {
            return "vnd.android.cursor.dir/indexables_raw";
        }
        if (iMatch == 3) {
            return NO_KEYS_MIME_TYPE;
        }
        if (iMatch == 6) {
            return "vnd.android.cursor.dir/indexables_raw";
        }
        throw new IllegalArgumentException("Unknown URI " + uri);
    }

    @Override
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Insert not supported");
    }

    @Override
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            switch (this.mMatcher.match(uri)) {
                case 1:
                    return queryXmlResources(null);
                case 2:
                    return queryRawData(null);
                case 3:
                    return queryNonIndexableKeys(null);
                case 4:
                    return querySiteMapPairs();
                case 5:
                    return querySliceUriPairs();
                case 6:
                    return queryDynamicRawData(null);
                default:
                    throw new UnsupportedOperationException("Unknown Uri " + uri);
            }
        } catch (UnsupportedOperationException e) {
            throw e;
        } catch (Exception e2) {
            TranSdkLog.e(TAG, "Provider querying exception:", e2);
            return null;
        }
    }

    public Cursor queryDynamicRawData(String[] strArr) {
        return null;
    }

    public abstract Cursor queryNonIndexableKeys(String[] strArr);

    public abstract Cursor queryRawData(String[] strArr);

    public Cursor querySiteMapPairs() {
        return null;
    }

    public Cursor querySliceUriPairs() {
        return null;
    }

    public abstract Cursor queryXmlResources(String[] strArr);

    @Override
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Update not supported");
    }
}
