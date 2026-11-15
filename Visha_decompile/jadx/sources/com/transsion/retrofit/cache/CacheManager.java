package com.transsion.retrofit.cache;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import defpackage.iia;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public final class CacheManager {
    private static final String CACHE_DIR = "responses";
    private static final int DISK_CACHE_INDEX = 0;
    private static final long DISK_CACHE_SIZE = 10485760;
    public static final String TAG = "CacheManager";
    public DiskLruCache mDiskLruCache;

    public static final class InstanceHolder {
        private static final CacheManager INSTANCE = new CacheManager();

        private InstanceHolder() {
        }
    }

    public static String encryptMD5(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b : bArrDigest) {
                int i = b & 255;
                if (i < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    private int getAppVersion(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo == null) {
                return 0;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private File getDiskCacheDir(Context context, String str) {
        return new File(context.getCacheDir().getPath() + File.separator + str);
    }

    public static CacheManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    public void createDiskLruCache(Context context) {
        Log.d(TAG, "createDiskLruCache");
        File diskCacheDir = getDiskCacheDir(context, CACHE_DIR);
        if (!diskCacheDir.exists()) {
            diskCacheDir.mkdirs();
        }
        if (diskCacheDir.getUsableSpace() > DISK_CACHE_SIZE) {
            try {
                this.mDiskLruCache = DiskLruCache.open(diskCacheDir, getAppVersion(context), 1, DISK_CACHE_SIZE);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.transsion.retrofit.cache.DiskLruCache] */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.FileInputStream] */
    public String getCache(String str) throws Throwable {
        ?? r5;
        ByteArrayOutputStream byteArrayOutputStream;
        ?? r6 = this.mDiskLruCache;
        ?? r0 = 0;
        boolean z = false;
        try {
            if (r6 == 0) {
                return null;
            }
            try {
                DiskLruCache.Snapshot snapshot = r6.get(encryptMD5(str));
                if (snapshot != null) {
                    r6 = (FileInputStream) snapshot.getInputStream(0);
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int i = r6.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i);
                            }
                            String string = byteArrayOutputStream.toString();
                            try {
                                r6.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            try {
                                byteArrayOutputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                            return string;
                        } catch (IOException e3) {
                            e = e3;
                            r5 = r6;
                            e.printStackTrace();
                            if (r5 != 0) {
                                try {
                                    r5.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                            return null;
                        }
                    } catch (IOException e6) {
                        e = e6;
                        byteArrayOutputStream = null;
                        r5 = r6;
                    } catch (Throwable th) {
                        th = th;
                        r0 = r6;
                        if (r0 != 0) {
                            try {
                                r0.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        if (r0 != 0) {
                            throw th;
                        }
                        try {
                            (z ? 1 : 0).close();
                            throw th;
                        } catch (IOException e8) {
                            e8.printStackTrace();
                            throw th;
                        }
                    }
                }
            } catch (IOException e9) {
                e = e9;
                r5 = 0;
                byteArrayOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                if (r0 != 0) {
                    r0.close();
                }
                if (r0 != 0) {
                    throw th;
                }
                (z ? 1 : 0).close();
                throw th;
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void lambda$setCache$0(String str, String str2) {
        DiskLruCache diskLruCache = this.mDiskLruCache;
        if (diskLruCache == null) {
            Log.e(TAG, "putCache failed,diskLruCache is null");
            return;
        }
        OutputStream outputStreamNewOutputStream = null;
        try {
            try {
                try {
                    DiskLruCache.Editor editorEdit = diskLruCache.edit(encryptMD5(str));
                    outputStreamNewOutputStream = editorEdit.newOutputStream(0);
                    outputStreamNewOutputStream.write(str2.getBytes());
                    outputStreamNewOutputStream.flush();
                    editorEdit.commit();
                    this.mDiskLruCache.flush();
                    outputStreamNewOutputStream.close();
                } catch (IOException | NullPointerException e) {
                    e.printStackTrace();
                    if (outputStreamNewOutputStream == null) {
                    } else {
                        outputStreamNewOutputStream.close();
                    }
                }
            } catch (Throwable th) {
                if (outputStreamNewOutputStream != null) {
                    try {
                        outputStreamNewOutputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    public boolean removeCache(String str) {
        DiskLruCache diskLruCache = this.mDiskLruCache;
        if (diskLruCache == null) {
            return false;
        }
        try {
            return diskLruCache.remove(encryptMD5(str));
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void setCache(final String str, final String str2) {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$setCache$0(str, str2);
            }
        });
    }

    private CacheManager() {
    }
}
