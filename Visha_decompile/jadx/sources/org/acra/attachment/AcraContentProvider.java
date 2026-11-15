package org.acra.attachment;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.livecaption.constant.ICode;
import defpackage.c;
import defpackage.hb0;
import defpackage.i81;
import defpackage.j1a;
import defpackage.xg;
import defpackage.y45;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.acra.file.Directory;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 '2\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006JM\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\b\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\n2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0016\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J1\u0010\u0019\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\n2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ;\u0010\u001b\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\f\u001a\u0004\u0018\u00010\n2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006("}, d2 = {"Lorg/acra/attachment/AcraContentProvider;", "Landroid/content/ContentProvider;", MethodDecl.initName, "()V", "", "onCreate", "()Z", "Landroid/net/Uri;", "uri", "", "", "projection", "selection", "selectionArgs", "sortOrder", "Landroid/database/Cursor;", "query", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "getType", "(Landroid/net/Uri;)Ljava/lang/String;", "Landroid/content/ContentValues;", "values", "insert", "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;", "", "delete", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", hb0.KEY_NAME_MODE, "Landroid/os/ParcelFileDescriptor;", "openFile", "(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;", "Ljava/io/File;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Landroid/net/Uri;)Ljava/io/File;", "b", "Ljava/lang/String;", "authority", "c", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AcraContentProvider extends ContentProvider {

    public static final Companion INSTANCE = new Companion(null);
    public static final String[] d = {"_display_name", "_size"};

    public String authority;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String b(Context context) {
            return context.getPackageName() + ".acra";
        }

        public final Uri c(Context context, File file) {
            y45.j(context, "context");
            y45.j(file, "file");
            Directory directory = Directory.ROOT;
            String path = file.getPath();
            y45.i(path, "file.path");
            return d(context, directory, path);
        }

        public final Uri d(Context context, Directory directory, String str) {
            y45.j(context, "context");
            y45.j(directory, "directory");
            y45.j(str, "relativePath");
            Uri.Builder builderAuthority = new Uri.Builder().scheme(ICode.CALL.CALL_KEY_CONTENT).authority(b(context));
            String lowerCase = directory.name().toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            Uri.Builder builderAppendPath = builderAuthority.appendPath(lowerCase);
            String strQuote = Pattern.quote(File.separator);
            y45.i(strQuote, "quote(File.separator)");
            for (String str2 : (String[]) j1a.O0(str, new String[]{strQuote}, false, 0, 6, null).toArray(new String[0])) {
                if (str2.length() > 0) {
                    builderAppendPath.appendPath(str2);
                }
            }
            Uri uriBuild = builderAppendPath.build();
            y45.i(uriBuild, "builder.build()");
            return uriBuild;
        }

        public final String e(Uri uri) {
            String mimeTypeFromExtension;
            y45.j(uri, "uri");
            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(uri.toString());
            if (fileExtensionFromUrl != null) {
                MimeTypeMap singleton = MimeTypeMap.getSingleton();
                String lowerCase = fileExtensionFromUrl.toLowerCase(Locale.ROOT);
                y45.i(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                mimeTypeFromExtension = singleton.getMimeTypeFromExtension(lowerCase);
                if (mimeTypeFromExtension == null && y45.e("json", fileExtensionFromUrl)) {
                    mimeTypeFromExtension = "application/json";
                }
            } else {
                mimeTypeFromExtension = null;
            }
            return mimeTypeFromExtension == null ? "application/octet-stream" : mimeTypeFromExtension;
        }

        public Companion() {
        }
    }

    public final File a(Uri uri) {
        if (!y45.e(ICode.CALL.CALL_KEY_CONTENT, uri.getScheme()) || !y45.e(this.authority, uri.getAuthority())) {
            return null;
        }
        List<String> pathSegments = uri.getPathSegments();
        y45.i(pathSegments, "uri.pathSegments");
        List listE1 = i81.e1(pathSegments);
        if (listE1.size() < 2) {
            return null;
        }
        Object objRemove = listE1.remove(0);
        y45.i(objRemove, "segments.removeAt(0)");
        String upperCase = ((String) objRemove).toUpperCase(Locale.ROOT);
        y45.i(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        try {
            Directory directoryValueOf = Directory.valueOf(upperCase);
            Context context = getContext();
            y45.g(context);
            String strJoin = TextUtils.join(File.separator, listE1);
            y45.i(strJoin, "join(File.separator, segments)");
            return directoryValueOf.getFile(context, strJoin);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        y45.j(uri, "uri");
        throw new UnsupportedOperationException("No delete supported");
    }

    @Override
    public String getType(Uri uri) {
        y45.j(uri, "uri");
        return INSTANCE.e(uri);
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        y45.j(uri, "uri");
        throw new UnsupportedOperationException("No insert supported");
    }

    @Override
    public boolean onCreate() {
        Companion companion = INSTANCE;
        Context context = getContext();
        y45.g(context);
        String strB = companion.b(context);
        this.authority = strB;
        if (!c.b) {
            return true;
        }
        c.d.d(c.c, "Registered content provider for authority " + strB);
        return true;
    }

    @Override
    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        y45.j(uri, "uri");
        y45.j(mode, hb0.KEY_NAME_MODE);
        File fileA = a(uri);
        if (fileA != null) {
            if (!fileA.exists()) {
                fileA = null;
            }
            if (fileA != null) {
                if (c.b) {
                    c.d.d(c.c, getCallingPackage() + " opened " + fileA.getPath());
                }
                ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(fileA, 268435456);
                y45.i(parcelFileDescriptorOpen, "open(file, ParcelFileDescriptor.MODE_READ_ONLY)");
                return parcelFileDescriptorOpen;
            }
        }
        throw new FileNotFoundException("File represented by uri " + uri + " could not be found");
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        y45.j(uri, "uri");
        if (c.b) {
            c.d.d(c.c, "Query: " + uri);
        }
        File fileA = a(uri);
        if (fileA == null) {
            return null;
        }
        if (projection == null) {
            projection = d;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator itA = xg.a(projection);
        while (itA.hasNext()) {
            String str = (String) itA.next();
            if (y45.e(str, "_display_name")) {
                linkedHashMap.put("_display_name", fileA.getName());
            } else if (y45.e(str, "_size")) {
                linkedHashMap.put("_size", Long.valueOf(fileA.length()));
            }
        }
        MatrixCursor matrixCursor = new MatrixCursor((String[]) linkedHashMap.keySet().toArray(new String[0]), 1);
        matrixCursor.addRow(linkedHashMap.values());
        return matrixCursor;
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        y45.j(uri, "uri");
        throw new UnsupportedOperationException("No update supported");
    }
}
