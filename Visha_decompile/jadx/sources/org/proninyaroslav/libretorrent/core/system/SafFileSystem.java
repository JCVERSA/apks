package org.proninyaroslav.libretorrent.core.system;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.LruCache;
import androidx.documentfile.provider.DocumentFile;
import com.transsion.livecaption.constant.ICode;
import java.io.File;

public class SafFileSystem {
    public static volatile SafFileSystem b;
    public static final LruCache c = new LruCache(1000);
    public Context a;

    public static class FakePath {
        public Uri a;
        public String b;

        public FakePath(Uri uri, String str) {
            this.a = uri;
            this.b = a(str);
        }

        public final String a(String str) {
            String str2 = File.separator;
            return (str.equals(str2) || !str.startsWith(str2)) ? str : str.substring(1);
        }

        public final String b() {
            return "saf_root(" + this.a.toString().substring(10) + ");" + this.b;
        }

        public String toString() {
            return b();
        }
    }

    public static class Stat {
    }

    public SafFileSystem(Context context) {
        this.a = context;
    }

    public static SafFileSystem e(Context context) {
        if (b == null) {
            synchronized (SafFileSystem.class) {
                try {
                    if (b == null) {
                        b = new SafFileSystem(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public boolean a(Uri uri) {
        return DocumentsContract.deleteDocument(this.a.getContentResolver(), uri);
    }

    public boolean b(Uri uri) {
        String string = uri.toString();
        LruCache lruCache = c;
        DocumentFile documentFileFromSingleUri = (DocumentFile) lruCache.get(string);
        if (documentFileFromSingleUri == null && (documentFileFromSingleUri = DocumentFile.fromSingleUri(this.a, uri)) != null) {
            lruCache.put(string, documentFileFromSingleUri);
        }
        return documentFileFromSingleUri != null && documentFileFromSingleUri.exists();
    }

    public final DocumentFile c(DocumentFile documentFile, String str, boolean z) {
        try {
            DocumentFile documentFileFindFile = documentFile.findFile(str);
            if (documentFileFindFile == null && z) {
                documentFileFindFile = documentFile.createFile("application/octet-stream", str);
            }
            if (documentFileFindFile == null || !documentFileFindFile.isFile()) {
                return null;
            }
            return documentFileFindFile;
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }

    public Uri d(Uri uri, String str, boolean z) {
        String str2 = uri.toString() + File.separator + str;
        LruCache lruCache = c;
        DocumentFile documentFileC = (DocumentFile) lruCache.get(str2);
        if (documentFileC == null) {
            DocumentFile documentFileFromTreeUri = DocumentFile.fromTreeUri(this.a, uri);
            if (documentFileFromTreeUri == null) {
                return null;
            }
            documentFileC = c(documentFileFromTreeUri, str, z);
            if (documentFileC != null) {
                lruCache.put(str2, documentFileC);
            }
        }
        if (documentFileC == null) {
            return null;
        }
        return documentFileC.getUri();
    }

    public boolean f(Uri uri) {
        String scheme = uri.getScheme();
        if (scheme != null) {
            return scheme.equals(ICode.CALL.CALL_KEY_CONTENT);
        }
        throw new IllegalArgumentException("Scheme of " + uri + " is null");
    }

    public Uri g(Uri uri) {
        return DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri));
    }
}
