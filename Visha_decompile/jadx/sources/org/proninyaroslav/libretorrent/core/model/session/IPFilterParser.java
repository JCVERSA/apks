package org.proninyaroslav.libretorrent.core.model.session;

import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import com.hunantv.media.p2p.P2pTaskFactory;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.LineIterator;
import org.proninyaroslav.libretorrent.core.exception.UnknownUriException;
import org.proninyaroslav.libretorrent.core.system.FileDescriptorWrapper;
import org.proninyaroslav.libretorrent.core.system.FileSystemFacade;

class IPFilterParser {
    private static final int MAX_LOGGED_ERRORS = 5;
    private static final String TAG = "IPFilterParser";
    private boolean logEnabled;

    public IPFilterParser() {
        this.logEnabled = true;
    }

    private void errLog(int i, String str, String str2) {
        if (!this.logEnabled || i > 5) {
            return;
        }
        Log.e(TAG, str + ": " + str2);
    }

    private String parseIpAddress(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return str.trim();
    }

    public int parseDAT(@NonNull InputStream inputStream, @NonNull IPFilter iPFilter) {
        try {
            LineIterator lineIterator = IOUtils.lineIterator(inputStream, "UTF-8");
            long j = 0;
            int i = 0;
            int i2 = 0;
            while (lineIterator.hasNext()) {
                j++;
                String strNextLine = lineIterator.nextLine();
                String strTrim = strNextLine == null ? null : strNextLine.trim();
                if (strTrim != null && !strTrim.isEmpty() && !strTrim.startsWith("#") && !strTrim.startsWith("//")) {
                    String[] strArrSplit = strTrim.split(StringUtils.COMMA);
                    if (strArrSplit.length != 0 && (strArrSplit.length <= 1 || Integer.parseInt(strArrSplit[1].trim()) <= 127)) {
                        String[] strArrSplit2 = strArrSplit[0].split("-");
                        if (strArrSplit2.length != 2) {
                            i2++;
                            errLog(i2, "DAT", "line " + j + " is malformed. Line was " + strTrim);
                        } else {
                            String ipAddress = parseIpAddress(strArrSplit2[0]);
                            if (ipAddress == null) {
                                i2++;
                                errLog(i2, "DAT", "line " + j + " is malformed. Start IP of the range is invalid: " + strArrSplit2[0]);
                            } else {
                                String ipAddress2 = parseIpAddress(strArrSplit2[1]);
                                if (ipAddress2 == null) {
                                    i2++;
                                    errLog(i2, "DAT", "line " + j + " is malformed. End IP of the range is invalid: " + strArrSplit2[1]);
                                } else {
                                    try {
                                        iPFilter.addRange(ipAddress, ipAddress2);
                                        i++;
                                    } catch (Exception e) {
                                        i2++;
                                        errLog(i2, "DAT", "line " + j + " is malformed. Line was " + strTrim + ": " + e.getMessage());
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return i;
        } catch (IOException e2) {
            Log.e(TAG, Log.getStackTraceString(e2));
            return 0;
        }
    }

    public int parseFile(@NonNull Uri uri, @NonNull FileSystemFacade fileSystemFacade, @NonNull IPFilter iPFilter) {
        int p2p = 0;
        try {
            if (!fileSystemFacade.b(uri)) {
                return 0;
            }
            String str = TAG;
            Log.d(str, "Start parsing IP filter file");
            try {
                try {
                    FileDescriptorWrapper fileDescriptorWrapperN = fileSystemFacade.n(uri);
                    try {
                        FileInputStream fileInputStream = new FileInputStream(fileDescriptorWrapperN.f("r"));
                        try {
                            String lowerCase = uri.toString().toLowerCase();
                            if (lowerCase.endsWith(".dat")) {
                                p2p = parseDAT(fileInputStream, iPFilter);
                            } else if (lowerCase.endsWith(".p2p")) {
                                p2p = parseP2P(fileInputStream, iPFilter);
                            }
                            fileInputStream.close();
                            fileDescriptorWrapperN.close();
                            Log.d(str, "Completed parsing IP filter file, is success = " + p2p);
                            return p2p;
                        } catch (Throwable th) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        if (fileDescriptorWrapperN != null) {
                            try {
                                fileDescriptorWrapperN.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                } catch (IOException | UnknownUriException e) {
                    String str2 = TAG;
                    Log.e(str2, Log.getStackTraceString(e));
                    Log.d(str2, "Completed parsing IP filter file, is success = 0");
                    return 0;
                }
            } catch (Throwable th5) {
                Log.d(TAG, "Completed parsing IP filter file, is success = 0");
                throw th5;
            }
        } catch (UnknownUriException e2) {
            Log.e(TAG, Log.getStackTraceString(e2));
            return 0;
        }
    }

    public int parseP2P(@NonNull InputStream inputStream, @NonNull IPFilter iPFilter) {
        try {
            LineIterator lineIterator = IOUtils.lineIterator(inputStream, "UTF-8");
            long j = 0;
            int i = 0;
            int i2 = 0;
            while (lineIterator.hasNext()) {
                j++;
                String strNextLine = lineIterator.nextLine();
                String strTrim = strNextLine == null ? null : strNextLine.trim();
                if (strTrim != null && !strTrim.isEmpty() && !strTrim.startsWith("#") && !strTrim.startsWith("//")) {
                    String[] strArrSplit = strTrim.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                    if (strArrSplit.length < 2) {
                        i2++;
                        errLog(i2, P2pTaskFactory.TAG, "line " + j + " is malformed");
                    } else {
                        String[] strArrSplit2 = strArrSplit[1].split("-");
                        if (strArrSplit2.length != 2) {
                            i2++;
                            errLog(i2, P2pTaskFactory.TAG, "line " + j + " is malformed. Line was" + strTrim);
                        } else {
                            String ipAddress = parseIpAddress(strArrSplit2[0]);
                            if (ipAddress == null) {
                                i2++;
                                errLog(i2, P2pTaskFactory.TAG, "line " + j + " is malformed. Start IP of the range is invalid: " + strArrSplit2[0]);
                            } else {
                                String ipAddress2 = parseIpAddress(strArrSplit2[1]);
                                if (ipAddress2 == null) {
                                    i2++;
                                    errLog(i2, P2pTaskFactory.TAG, "line " + j + " is malformed. End IP of the range is invalid: " + strArrSplit2[1]);
                                } else {
                                    try {
                                        iPFilter.addRange(ipAddress, ipAddress2);
                                        i++;
                                    } catch (Exception e) {
                                        i2++;
                                        errLog(i2, P2pTaskFactory.TAG, "line " + j + " is malformed. Line was " + strTrim + ": " + e.getMessage());
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return i;
        } catch (IOException e2) {
            Log.e(TAG, Log.getStackTraceString(e2));
            return 0;
        }
    }

    public IPFilterParser(boolean z) {
        this.logEnabled = z;
    }
}
