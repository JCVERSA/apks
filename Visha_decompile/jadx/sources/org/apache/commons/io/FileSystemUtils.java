package org.apache.commons.io;

import com.alibaba.android.arouter.utils.Consts;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

public class FileSystemUtils {
    private static final String DF;
    private static final int INIT_PROBLEM = -1;
    private static final FileSystemUtils INSTANCE = new FileSystemUtils();
    private static final int OS;
    private static final int OTHER = 0;
    private static final int POSIX_UNIX = 3;
    private static final int UNIX = 2;
    private static final int WINDOWS = 1;

    static {
        int i;
        String str = "df";
        try {
            String property = System.getProperty("os.name");
            if (property == null) {
                throw new IOException("os.name not found");
            }
            String lowerCase = property.toLowerCase(Locale.ENGLISH);
            if (lowerCase.contains("windows")) {
                i = 1;
            } else if (lowerCase.contains("linux") || lowerCase.contains("mpe/ix") || lowerCase.contains("freebsd") || lowerCase.contains("irix") || lowerCase.contains("digital unix") || lowerCase.contains("unix") || lowerCase.contains("mac os x")) {
                i = 2;
            } else {
                if (lowerCase.contains("sun os") || lowerCase.contains("sunos") || lowerCase.contains("solaris")) {
                    str = "/usr/xpg4/bin/df";
                } else if (!lowerCase.contains("hp-ux") && !lowerCase.contains("aix")) {
                    i = 0;
                }
                i = 3;
            }
            OS = i;
            DF = str;
        } catch (Exception unused) {
            i = -1;
        }
    }

    @Deprecated
    public static long freeSpace(String str) throws IOException {
        return INSTANCE.freeSpaceOS(str, OS, false, -1L);
    }

    public static long freeSpaceKb(String str) throws IOException {
        return freeSpaceKb(str, -1L);
    }

    public long freeSpaceOS(String str, int i, boolean z, long j) throws Throwable {
        if (str == null) {
            throw new IllegalArgumentException("Path must not be null");
        }
        if (i == 0) {
            throw new IllegalStateException("Unsupported operating system");
        }
        if (i == 1) {
            long jFreeSpaceWindows = freeSpaceWindows(str, j);
            return z ? jFreeSpaceWindows / 1024 : jFreeSpaceWindows;
        }
        if (i == 2) {
            return freeSpaceUnix(str, z, false, j);
        }
        if (i == 3) {
            return freeSpaceUnix(str, z, true, j);
        }
        throw new IllegalStateException("Exception caught when determining operating system");
    }

    public long freeSpaceUnix(String str, boolean z, boolean z2, long j) throws Throwable {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        String str2 = "-";
        if (z) {
            str2 = "-k";
        }
        if (z2) {
            str2 = str2 + "P";
        }
        List<String> listPerformCommand = performCommand(str2.length() > 1 ? new String[]{DF, str2, str} : new String[]{DF, str}, 3, j);
        if (listPerformCommand.size() < 2) {
            throw new IOException("Command line '" + DF + "' did not return info as expected for path '" + str + "'- response was " + listPerformCommand);
        }
        StringTokenizer stringTokenizer = new StringTokenizer(listPerformCommand.get(1), " ");
        if (stringTokenizer.countTokens() >= 4) {
            stringTokenizer.nextToken();
        } else {
            if (stringTokenizer.countTokens() != 1 || listPerformCommand.size() < 3) {
                throw new IOException("Command line '" + DF + "' did not return data as expected for path '" + str + "'- check path is valid");
            }
            stringTokenizer = new StringTokenizer(listPerformCommand.get(2), " ");
        }
        stringTokenizer.nextToken();
        stringTokenizer.nextToken();
        return parseBytes(stringTokenizer.nextToken(), str);
    }

    public long freeSpaceWindows(String str, long j) throws Throwable {
        String strNormalize = FilenameUtils.normalize(str, false);
        if (strNormalize.length() > 0 && strNormalize.charAt(0) != '\"') {
            strNormalize = "\"" + strNormalize + "\"";
        }
        List<String> listPerformCommand = performCommand(new String[]{"cmd.exe", "/C", "dir /a /-c " + strNormalize}, Integer.MAX_VALUE, j);
        for (int size = listPerformCommand.size() + (-1); size >= 0; size--) {
            String str2 = listPerformCommand.get(size);
            if (str2.length() > 0) {
                return parseDir(str2, strNormalize);
            }
        }
        throw new IOException("Command line 'dir /-c' did not return any info for path '" + strNormalize + "'");
    }

    public Process openProcess(String[] strArr) throws IOException {
        return Runtime.getRuntime().exec(strArr);
    }

    public long parseBytes(String str, String str2) throws IOException {
        try {
            long j = Long.parseLong(str);
            if (j >= 0) {
                return j;
            }
            throw new IOException("Command line '" + DF + "' did not find free space in response for path '" + str2 + "'- check path is valid");
        } catch (NumberFormatException e) {
            throw new IOException("Command line '" + DF + "' did not return numeric data as expected for path '" + str2 + "'- check path is valid", e);
        }
    }

    public long parseDir(String str, String str2) throws IOException {
        int i;
        int i2;
        int i3;
        int length = str.length();
        while (true) {
            length--;
            i = 0;
            if (length < 0) {
                i2 = 0;
                break;
            }
            if (Character.isDigit(str.charAt(length))) {
                i2 = length + 1;
                break;
            }
        }
        while (true) {
            if (length < 0) {
                i3 = 0;
                break;
            }
            char cCharAt = str.charAt(length);
            if (!Character.isDigit(cCharAt) && cCharAt != ',' && cCharAt != '.') {
                i3 = length + 1;
                break;
            }
            length--;
        }
        if (length < 0) {
            throw new IOException("Command line 'dir /-c' did not return valid info for path '" + str2 + "'");
        }
        StringBuilder sb = new StringBuilder(str.substring(i3, i2));
        while (i < sb.length()) {
            if (sb.charAt(i) == ',' || sb.charAt(i) == '.') {
                sb.deleteCharAt(i);
                i--;
            }
            i++;
        }
        return parseBytes(sb.toString(), str2);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0111  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.io.BufferedReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.Reader] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public List<String> performCommand(String[] strArr, int i, long j) throws Throwable {
        Process processOpenProcess;
        OutputStream outputStream;
        InputStream inputStream;
        InputStream errorStream;
        ?? bufferedReader;
        ?? r6;
        ArrayList arrayList = new ArrayList(20);
        InputStream inputStream2 = null;
        try {
            Thread threadStart = ThreadMonitor.start(j);
            processOpenProcess = openProcess(strArr);
            try {
                inputStream = processOpenProcess.getInputStream();
                try {
                    outputStream = processOpenProcess.getOutputStream();
                    try {
                        errorStream = processOpenProcess.getErrorStream();
                        try {
                            bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charset.defaultCharset()));
                            try {
                                for (String line = bufferedReader.readLine(); line != null && arrayList.size() < i; line = bufferedReader.readLine()) {
                                    arrayList.add(line.toLowerCase(Locale.ENGLISH).trim());
                                }
                                processOpenProcess.waitFor();
                                ThreadMonitor.stop(threadStart);
                                if (processOpenProcess.exitValue() != 0) {
                                    throw new IOException("Command line returned OS error code '" + processOpenProcess.exitValue() + "' for command " + Arrays.asList(strArr));
                                }
                                if (arrayList.isEmpty()) {
                                    throw new IOException("Command line did not return any info for command " + Arrays.asList(strArr));
                                }
                                IOUtils.closeQuietly(inputStream);
                                IOUtils.closeQuietly(outputStream);
                                IOUtils.closeQuietly(errorStream);
                                IOUtils.closeQuietly((Reader) bufferedReader);
                                processOpenProcess.destroy();
                                return arrayList;
                            } catch (InterruptedException e) {
                                e = e;
                                inputStream2 = processOpenProcess;
                                bufferedReader = bufferedReader;
                                try {
                                    throw new IOException("Command line threw an InterruptedException for command " + Arrays.asList(strArr) + " timeout=" + j, e);
                                } catch (Throwable th) {
                                    th = th;
                                    processOpenProcess = inputStream2;
                                    inputStream2 = inputStream;
                                    r6 = bufferedReader;
                                    IOUtils.closeQuietly(inputStream2);
                                    IOUtils.closeQuietly(outputStream);
                                    IOUtils.closeQuietly(errorStream);
                                    IOUtils.closeQuietly((Reader) r6);
                                    if (processOpenProcess != null) {
                                        processOpenProcess.destroy();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                inputStream2 = inputStream;
                                r6 = bufferedReader;
                                IOUtils.closeQuietly(inputStream2);
                                IOUtils.closeQuietly(outputStream);
                                IOUtils.closeQuietly(errorStream);
                                IOUtils.closeQuietly((Reader) r6);
                                if (processOpenProcess != null) {
                                    processOpenProcess.destroy();
                                }
                                throw th;
                            }
                        } catch (InterruptedException e2) {
                            e = e2;
                            bufferedReader = 0;
                        } catch (Throwable th3) {
                            th = th3;
                            bufferedReader = 0;
                        }
                    } catch (InterruptedException e3) {
                        e = e3;
                        errorStream = null;
                        bufferedReader = errorStream;
                        inputStream2 = processOpenProcess;
                        bufferedReader = bufferedReader;
                        throw new IOException("Command line threw an InterruptedException for command " + Arrays.asList(strArr) + " timeout=" + j, e);
                    } catch (Throwable th4) {
                        th = th4;
                        errorStream = null;
                        bufferedReader = errorStream;
                        inputStream2 = inputStream;
                        r6 = bufferedReader;
                        IOUtils.closeQuietly(inputStream2);
                        IOUtils.closeQuietly(outputStream);
                        IOUtils.closeQuietly(errorStream);
                        IOUtils.closeQuietly((Reader) r6);
                        if (processOpenProcess != null) {
                            processOpenProcess.destroy();
                        }
                        throw th;
                    }
                } catch (InterruptedException e4) {
                    e = e4;
                    outputStream = null;
                    errorStream = outputStream;
                    bufferedReader = errorStream;
                    inputStream2 = processOpenProcess;
                    bufferedReader = bufferedReader;
                    throw new IOException("Command line threw an InterruptedException for command " + Arrays.asList(strArr) + " timeout=" + j, e);
                } catch (Throwable th5) {
                    th = th5;
                    outputStream = null;
                    errorStream = null;
                }
            } catch (InterruptedException e5) {
                e = e5;
                inputStream = null;
                outputStream = null;
            } catch (Throwable th6) {
                th = th6;
                outputStream = null;
                errorStream = outputStream;
                r6 = errorStream;
                IOUtils.closeQuietly(inputStream2);
                IOUtils.closeQuietly(outputStream);
                IOUtils.closeQuietly(errorStream);
                IOUtils.closeQuietly((Reader) r6);
                if (processOpenProcess != null) {
                    processOpenProcess.destroy();
                }
                throw th;
            }
        } catch (InterruptedException e6) {
            e = e6;
            inputStream = null;
            outputStream = null;
            errorStream = null;
            bufferedReader = 0;
        } catch (Throwable th7) {
            th = th7;
            processOpenProcess = null;
            outputStream = null;
        }
    }

    public static long freeSpaceKb(String str, long j) throws IOException {
        return INSTANCE.freeSpaceOS(str, OS, true, j);
    }

    public static long freeSpaceKb() throws IOException {
        return freeSpaceKb(-1L);
    }

    public static long freeSpaceKb(long j) throws IOException {
        return freeSpaceKb(new File(Consts.DOT).getAbsolutePath(), j);
    }
}
