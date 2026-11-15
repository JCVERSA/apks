package com.transsion.letswitch.service.api.internal.manager;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.transsion.letswitch.service.api.utils.FileTools;
import com.transsion.livecaption.constant.ICode;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.IOUtils;
import org.xmlpull.v1.XmlPullParserException;

public class CustomFileProvider extends ContentProvider {
    private static final String ATTR_NAME = "name";
    private static final String ATTR_PATH = "path";
    private static final String FILE_TYPE = "file_type";
    private static final String META_DATA_FILE_PROVIDER_PATHS = "android.support.FILE_PROVIDER_PATHS";
    private static final String TAG = "CustomFileProvider";
    private static final String TAG_CACHE_PATH = "cache-path";
    private static final String TAG_EXTERNAL = "external-path";
    private static final String TAG_FILES_PATH = "files-path";
    private static final String TAG_ROOT_PATH = "root-path";
    private static final List<String> mFilterList;
    private PathStrategy mStrategy;
    private static final String FILE_NAME = "file_name";
    private static final String[] COLUMNS = {"_display_name", "_size", "mime_type", "_data", "title", FILE_NAME, "file_type", "date_modified"};
    private static final File DEVICE_ROOT = new File("/");
    private static HashMap<String, PathStrategy> sCache = new HashMap<>();

    public interface PathStrategy {
        File getFileForUri(Uri uri);

        Uri getUriForFile(File file);
    }

    public static class SimplePathStrategy implements PathStrategy {
        private final String mAuthority;
        private final HashMap<String, File> mRoots = new HashMap<>();

        public SimplePathStrategy(String str) {
            this.mAuthority = str;
        }

        public void addRoot(String str, File file) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Name must not be empty");
            }
            try {
                this.mRoots.put(str, file.getCanonicalFile());
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e);
            }
        }

        @Override
        public File getFileForUri(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int iIndexOf = encodedPath.indexOf(47, 1);
            String strDecode = Uri.decode(encodedPath.substring(1, iIndexOf));
            String strDecode2 = Uri.decode(encodedPath.substring(iIndexOf + 1));
            File file = this.mRoots.get(strDecode);
            if (file == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + uri);
            }
            File file2 = new File(file, strDecode2);
            try {
                File canonicalFile = file2.getCanonicalFile();
                if (canonicalFile.getPath().startsWith(file.getPath())) {
                    return canonicalFile;
                }
                throw new SecurityException("Resolved path jumped beyond configured root");
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
            }
        }

        @Override
        public Uri getUriForFile(File file) {
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.mRoots.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
                }
                String path2 = entry.getValue().getPath();
                return new Uri.Builder().scheme(ICode.CALL.CALL_KEY_CONTENT).authority(this.mAuthority).encodedPath(Uri.encode(entry.getKey()) + IOUtils.DIR_SEPARATOR_UNIX + Uri.encode(path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), "/")).build();
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        mFilterList = arrayList;
        arrayList.add("com.android.bluetooth");
    }

    private static File buildPath(File file, String... strArr) {
        for (String str : strArr) {
            if (str != null) {
                file = new File(file, str);
            }
        }
        return file;
    }

    private boolean checkPermission() {
        if (mFilterList.contains(getCallingPackage())) {
            FileTools fileTools = FileTools.INSTANCE;
            if (FileTools.isSystemApp(getContext(), getCallingPackage())) {
                return true;
            }
        }
        return false;
    }

    private static String[] copyOf(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    private static PathStrategy getPathStrategy(Context context, String str) {
        PathStrategy pathStrategy;
        synchronized (sCache) {
            try {
                pathStrategy = sCache.get(str);
                if (pathStrategy == null) {
                    try {
                        pathStrategy = parsePathStrategy(context, str);
                        sCache.put(str, pathStrategy);
                    } catch (IOException e) {
                        throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                    } catch (XmlPullParserException e2) {
                        throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return pathStrategy;
    }

    public static Uri getUriForFile(Context context, String str, File file) {
        if (file == null || !file.exists()) {
            return null;
        }
        return getPathStrategy(context, str).getUriForFile(file);
    }

    private static int modeToMode(String str) {
        if ("r".equals(str)) {
            return 268435456;
        }
        if ("w".equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if ("rw".equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + str);
    }

    private static PathStrategy parsePathStrategy(Context context, String str) throws XmlPullParserException, IOException {
        SimplePathStrategy simplePathStrategy = new SimplePathStrategy(str);
        XmlResourceParser xmlResourceParserLoadXmlMetaData = context.getPackageManager().resolveContentProvider(str, 128).loadXmlMetaData(context.getPackageManager(), META_DATA_FILE_PROVIDER_PATHS);
        if (xmlResourceParserLoadXmlMetaData == null) {
            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
        }
        while (true) {
            int next = xmlResourceParserLoadXmlMetaData.next();
            if (next == 1) {
                return simplePathStrategy;
            }
            if (next == 2) {
                String name = xmlResourceParserLoadXmlMetaData.getName();
                File fileBuildPath = null;
                String attributeValue = xmlResourceParserLoadXmlMetaData.getAttributeValue(null, "name");
                String attributeValue2 = xmlResourceParserLoadXmlMetaData.getAttributeValue(null, ATTR_PATH);
                if (TAG_ROOT_PATH.equals(name)) {
                    fileBuildPath = buildPath(DEVICE_ROOT, attributeValue2);
                } else if (TAG_FILES_PATH.equals(name)) {
                    fileBuildPath = buildPath(context.getFilesDir(), attributeValue2);
                } else if (TAG_CACHE_PATH.equals(name)) {
                    fileBuildPath = buildPath(context.getCacheDir(), attributeValue2);
                } else if (TAG_EXTERNAL.equals(name)) {
                    fileBuildPath = buildPath(Environment.getExternalStorageDirectory(), attributeValue2);
                }
                if (fileBuildPath != null) {
                    simplePathStrategy.addRoot(attributeValue, fileBuildPath);
                }
            }
        }
    }

    @Override
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        this.mStrategy = getPathStrategy(context, providerInfo.authority);
    }

    @Override
    public int delete(Uri uri, String str, String[] strArr) {
        if (checkPermission()) {
            return this.mStrategy.getFileForUri(uri).delete() ? 1 : 0;
        }
        return 0;
    }

    @Override
    public String getType(Uri uri) {
        File fileForUri = this.mStrategy.getFileForUri(uri);
        int iLastIndexOf = fileForUri.getName().lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileForUri.getName().substring(iLastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override
    public boolean onCreate() {
        return true;
    }

    @Override
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        if (checkPermission()) {
            return ParcelFileDescriptor.open(this.mStrategy.getFileForUri(uri), modeToMode(str));
        }
        return null;
    }

    @Override
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        if (!checkPermission()) {
            return null;
        }
        Log.i(TAG, " query projection : " + Arrays.toString(strArr));
        File fileForUri = this.mStrategy.getFileForUri(uri);
        if (strArr == null) {
            strArr = COLUMNS;
        }
        String mimeTypeForFile = MediaFile.getMimeTypeForFile(fileForUri.getAbsolutePath());
        Log.i(TAG, " getType from provider : [" + mimeTypeForFile + "]");
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i2 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i2] = "_display_name";
                i = i2 + 1;
                objArr[i2] = fileForUri.getName();
            } else if ("_size".equals(str3)) {
                strArr3[i2] = "_size";
                i = i2 + 1;
                objArr[i2] = Long.valueOf(fileForUri.length());
            } else if ("mime_type".equals(str3)) {
                strArr3[i2] = "mime_type";
                i = i2 + 1;
                objArr[i2] = mimeTypeForFile;
            } else if ("_data".equals(str3)) {
                strArr3[i2] = "_data";
                i = i2 + 1;
                objArr[i2] = fileForUri.getAbsolutePath();
            } else if ("title".equals(str3)) {
                strArr3[i2] = "title";
                i = i2 + 1;
                objArr[i2] = fileForUri.getName();
            } else if (FILE_NAME.equals(str3)) {
                strArr3[i2] = FILE_NAME;
                i = i2 + 1;
                objArr[i2] = fileForUri.getName();
            } else if ("file_type".equals(str3)) {
                strArr3[i2] = "file_type";
                i = i2 + 1;
                objArr[i2] = mimeTypeForFile;
            } else {
                if ("date_modified".equals(str3)) {
                    strArr3[i2] = "date_modified";
                    i = i2 + 1;
                    objArr[i2] = Long.valueOf(fileForUri.lastModified());
                }
            }
            i2 = i;
        }
        String[] strArrCopyOf = copyOf(strArr3, i2);
        Object[] objArrCopyOf = copyOf(objArr, i2);
        MatrixCursor matrixCursor = new MatrixCursor(strArrCopyOf, 1);
        matrixCursor.addRow(objArrCopyOf);
        return matrixCursor;
    }

    @Override
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    private static Object[] copyOf(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }
}
